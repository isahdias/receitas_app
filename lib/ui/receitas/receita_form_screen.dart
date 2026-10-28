import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/receita_repository.dart';
import '../../domain/receita.dart';

/// Formulário usado para CREATE (receitaId == null) e UPDATE (receitaId != null).
class ReceitaFormScreen extends StatefulWidget {
  final String? receitaId;

  const ReceitaFormScreen({super.key, this.receitaId});

  @override
  State<ReceitaFormScreen> createState() => _ReceitaFormScreenState();
}

class _ReceitaFormScreenState extends State<ReceitaFormScreen> {
  static const _categoriasBase = ['Doce', 'Salgado', 'Bebida'];
  static const _dificuldadesBase = ['Fácil', 'Média', 'Difícil'];

  final _formKey = GlobalKey<FormState>();

  late final Receita? _original;
  late final TextEditingController _tituloCtrl;
  late final TextEditingController _descricaoCtrl;
  late final TextEditingController _tempoCtrl;
  late final TextEditingController _porcoesCtrl;
  late final TextEditingController _ingredientesCtrl;
  late final TextEditingController _preparoCtrl;
  late final List<String> _categorias;
  late final List<String> _dificuldades;
  late String _categoria;
  late String _dificuldade;

  bool _salvando = false;

  bool get _editando => widget.receitaId != null;

  @override
  void initState() {
    super.initState();
    final id = widget.receitaId;
    final r = id == null ? null : receitaRepository.buscarPorId(id);
    _original = r;

    _tituloCtrl = TextEditingController(text: r?.titulo ?? '');
    _descricaoCtrl = TextEditingController(text: r?.descricao ?? '');
    _tempoCtrl =
        TextEditingController(text: r == null ? '' : '${r.tempoPreparo}');
    _porcoesCtrl =
        TextEditingController(text: r == null ? '' : '${r.porcoes}');
    _ingredientesCtrl =
        TextEditingController(text: r?.ingredientes.join('\n') ?? '');
    _preparoCtrl = TextEditingController(text: r?.modoPreparo ?? '');

    // Se a receita tiver uma categoria/dificuldade diferente das básicas,
    // ela entra na lista para o dropdown não quebrar.
    _categorias = {..._categoriasBase, if (r != null) r.categoria}.toList();
    _dificuldades =
        {..._dificuldadesBase, if (r != null) r.dificuldade}.toList();
    _categoria = r?.categoria ?? _categoriasBase.first;
    _dificuldade = r?.dificuldade ?? _dificuldadesBase.first;
  }

  @override
  void dispose() {
    _tituloCtrl.dispose();
    _descricaoCtrl.dispose();
    _tempoCtrl.dispose();
    _porcoesCtrl.dispose();
    _ingredientesCtrl.dispose();
    _preparoCtrl.dispose();
    super.dispose();
  }

  Future<void> _salvar() async {
    if (_salvando) return; // evita envio duplo
    if (!_formKey.currentState!.validate()) return;

    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);

    final receita = Receita(
      id: _original?.id ?? '',
      titulo: _tituloCtrl.text.trim(),
      descricao: _descricaoCtrl.text.trim(),
      categoria: _categoria,
      tempoPreparo: int.parse(_tempoCtrl.text.trim()),
      porcoes: int.parse(_porcoesCtrl.text.trim()),
      ingredientes: _ingredientesCtrl.text
          .split('\n')
          .map((l) => l.trim())
          .where((l) => l.isNotEmpty)
          .toList(),
      modoPreparo: _preparoCtrl.text.trim(),
      dificuldade: _dificuldade,
      imagemUrl: _original?.imagemUrl,
    );

    setState(() => _salvando = true);
    try {
      if (_editando) {
        await receitaRepository.atualizar(receita);
      } else {
        await receitaRepository.adicionar(receita);
      }
      router.pop();
      messenger.showSnackBar(
        SnackBar(
          content: Text(_editando ? 'Receita atualizada.' : 'Receita salva.'),
        ),
      );
    } catch (e) {
      if (mounted) setState(() => _salvando = false);
      messenger.showSnackBar(
        SnackBar(content: Text(ReceitaRepository.mensagemDeErro(e))),
      );
    }
  }

  String? _obrigatorio(String? v, String campo) =>
      (v == null || v.trim().isEmpty) ? 'Informe $campo' : null;

  String? _numeroPositivo(String? v) {
    final n = int.tryParse((v ?? '').trim());
    if (n == null || n <= 0) return 'Informe um número maior que zero';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // Abriu a edição de uma receita que não existe (ex.: já foi excluída).
    if (_editando && _original == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Editar receita')),
        body: const Center(child: Text('Receita não encontrada.')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_editando ? 'Editar receita' : 'Nova receita'),
      ),
      body: AbsorbPointer(
        absorbing: _salvando, // trava a tela enquanto salva
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _tituloCtrl,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: const InputDecoration(
                    labelText: 'Título',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => _obrigatorio(v, 'o título'),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _descricaoCtrl,
                  maxLines: 2,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: const InputDecoration(
                    labelText: 'Descrição curta',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => _obrigatorio(v, 'a descrição'),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: _categoria,
                  decoration: const InputDecoration(
                    labelText: 'Categoria',
                    border: OutlineInputBorder(),
                  ),
                  items: _categorias
                      .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                      .toList(),
                  onChanged: (v) =>
                      setState(() => _categoria = v ?? _categoria),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: _dificuldade,
                  decoration: const InputDecoration(
                    labelText: 'Dificuldade',
                    border: OutlineInputBorder(),
                  ),
                  items: _dificuldades
                      .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                      .toList(),
                  onChanged: (v) =>
                      setState(() => _dificuldade = v ?? _dificuldade),
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _tempoCtrl,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Tempo (min)',
                          border: OutlineInputBorder(),
                        ),
                        validator: _numeroPositivo,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        controller: _porcoesCtrl,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Porções',
                          border: OutlineInputBorder(),
                        ),
                        validator: _numeroPositivo,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _ingredientesCtrl,
                  maxLines: 6,
                  decoration: const InputDecoration(
                    labelText: 'Ingredientes (um por linha)',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => _obrigatorio(v, 'os ingredientes'),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _preparoCtrl,
                  maxLines: 6,
                  decoration: const InputDecoration(
                    labelText: 'Modo de preparo',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => _obrigatorio(v, 'o modo de preparo'),
                ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: _salvando ? null : _salvar,
                  child: _salvando
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(
                          _editando ? 'Salvar alterações' : 'Salvar receita'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
