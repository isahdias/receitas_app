import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/receita_repository.dart';
import '../../domain/receita.dart';

class ReceitaDetailScreen extends StatefulWidget {
  final String receitaId;

  const ReceitaDetailScreen({super.key, required this.receitaId});

  @override
  State<ReceitaDetailScreen> createState() => _ReceitaDetailScreenState();
}

class _ReceitaDetailScreenState extends State<ReceitaDetailScreen> {
  bool _excluindo = false;

  /// DELETE com confirmação.
  Future<void> _excluir(Receita receita) async {
    final confirmou = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Excluir receita?'),
        content: Text(
          'A receita "${receita.titulo}" será removida definitivamente.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Excluir'),
          ),
        ],
      ),
    );
    if (confirmou != true || !mounted) return;

    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);

    setState(() => _excluindo = true);
    try {
      await receitaRepository.remover(receita.id);
      router.pop(); // fecha o detalhe e volta para a lista
      messenger.showSnackBar(
        const SnackBar(content: Text('Receita excluída.')),
      );
    } catch (e) {
      if (mounted) setState(() => _excluindo = false);
      messenger.showSnackBar(
        SnackBar(content: Text(ReceitaRepository.mensagemDeErro(e))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // ListenableBuilder: se a receita mudar (edição), a tela atualiza sozinha.
    return ListenableBuilder(
      listenable: receitaRepository,
      builder: (context, _) {
        final receita = receitaRepository.buscarPorId(widget.receitaId);

        if (receita == null) {
          // Ainda carregando (ou excluindo): mostra loading, não "não encontrada".
          if (receitaRepository.carregando || _excluindo) {
            return Scaffold(
              appBar: AppBar(title: const Text('Receita')),
              body: const Center(child: CircularProgressIndicator()),
            );
          }
          return Scaffold(
            appBar: AppBar(title: const Text('Receita')),
            body: const Center(child: Text('Receita não encontrada.')),
          );
        }

        final textTheme = Theme.of(context).textTheme;

        return Scaffold(
          appBar: AppBar(
            title: Text(receita.titulo),
            actions: [
              IconButton(
                tooltip: 'Editar',
                icon: const Icon(Icons.edit_outlined),
                onPressed: _excluindo
                    ? null
                    : () => context.push('/receita/${receita.id}/editar'),
              ),
              IconButton(
                tooltip: 'Excluir',
                icon: const Icon(Icons.delete_outline),
                onPressed: _excluindo ? null : () => _excluir(receita),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(receita.descricao, style: textTheme.bodyLarge),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _InfoChip(icone: Icons.category, texto: receita.categoria),
                  _InfoChip(
                    icone: Icons.timer,
                    texto: '${receita.tempoPreparo} min',
                  ),
                  _InfoChip(
                    icone: Icons.people,
                    texto: '${receita.porcoes} porções',
                  ),
                  _InfoChip(
                    icone: Icons.signal_cellular_alt,
                    texto: receita.dificuldade,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text('Ingredientes', style: textTheme.titleLarge),
              const SizedBox(height: 8),
              for (final ingrediente in receita.ingredientes)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('•  '),
                      Expanded(child: Text(ingrediente)),
                    ],
                  ),
                ),
              const SizedBox(height: 24),
              Text('Modo de preparo', style: textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(receita.modoPreparo, style: textTheme.bodyLarge),
            ],
          ),
        );
      },
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icone;
  final String texto;

  const _InfoChip({required this.icone, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Chip(avatar: Icon(icone, size: 18), label: Text(texto));
  }
}
