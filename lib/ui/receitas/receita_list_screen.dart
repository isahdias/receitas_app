import 'package:flutter/material.dart';

import '../../core/widgets/receita_card.dart';
import '../../data/auth_service.dart';
import '../../data/receita_repository.dart';

import 'package:go_router/go_router.dart';

import 'clima_sugestao_card.dart';

/// Importa as receitas prontas (TheMealDB) sem duplicar as que já existem.
Future<void> _importarMais(BuildContext context) async {
  final messenger = ScaffoldMessenger.of(context);
  messenger.showSnackBar(
    const SnackBar(content: Text('Importando receitas...')),
  );
  try {
    final qtd = await receitaRepository.importarReceitasProntas();
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Text(
          qtd == 0
              ? 'Você já tem todas as receitas importadas.'
              : '$qtd receitas importadas!',
        ),
      ),
    );
  } catch (e) {
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(content: Text(ReceitaRepository.mensagemDeErro(e))),
    );
  }
}

class ReceitaListScreen extends StatelessWidget {
  const ReceitaListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Receitas'),
        actions: [
          IconButton(
            tooltip: 'Importar mais receitas',
            icon: const Icon(Icons.download_outlined),
            onPressed: () => _importarMais(context),
          ),
          IconButton(
            tooltip: 'Sair',
            icon: const Icon(Icons.logout),
            onPressed: authService.sair,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/receita/nova'),
        icon: const Icon(Icons.add),
        label: const Text('Nova receita'),
      ),
      body: ListenableBuilder(
        listenable: receitaRepository,
        builder: (context, _) {
          // LOADING: esperando a primeira resposta do Firestore
          if (receitaRepository.carregando) {
            return const Center(child: CircularProgressIndicator());
          }

          // ERRO: permissão, conexão etc.
          final erro = receitaRepository.erro;
          if (erro != null) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.error_outline, size: 48),
                    const SizedBox(height: 12),
                    Text(erro, textAlign: TextAlign.center),
                  ],
                ),
              ),
            );
          }

          final receitas = receitaRepository.receitas;

          // ESTADO VAZIO
          if (receitas.isEmpty) {
            return const _EstadoVazio();
          }

          return Column(
            children: [
              // Card do clima: mostra o tempo de agora e sugere uma receita.
              ClimaSugestaoCard(
                receitas: receitas,
                aoAbrir: (receita) => context.push('/receita/${receita.id}'),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 8, bottom: 88),
                  itemCount: receitas.length,
                  itemBuilder: (context, index) {
                    final receita = receitas[index];
                    return ReceitaCard(
                      receita: receita,
                      onTap: () => context.push('/receita/${receita.id}'),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// Mensagem amigável quando o usuário ainda não tem receitas, com ação
/// para cadastrar a primeira (ou importar as receitas de exemplo).
class _EstadoVazio extends StatefulWidget {
  const _EstadoVazio();

  @override
  State<_EstadoVazio> createState() => _EstadoVazioState();
}

class _EstadoVazioState extends State<_EstadoVazio> {
  bool _importando = false;

  Future<void> _importar() async {
    if (_importando) return;
    final messenger = ScaffoldMessenger.of(context);
    setState(() => _importando = true);
    try {
      await receitaRepository.importarExemplos();
      messenger.showSnackBar(
        const SnackBar(content: Text('Receitas de exemplo importadas.')),
      );
    } catch (e) {
      messenger.showSnackBar(
        SnackBar(content: Text(ReceitaRepository.mensagemDeErro(e))),
      );
    } finally {
      if (mounted) setState(() => _importando = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.menu_book_outlined, size: 64),
            const SizedBox(height: 12),
            Text(
              'Nenhuma receita cadastrada ainda.',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            const Text('Que tal cadastrar a primeira?'),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: () => context.push('/receita/nova'),
              icon: const Icon(Icons.add),
              label: const Text('Cadastrar primeira receita'),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: _importando ? null : _importar,
              icon: _importando
                  ? const SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.download_outlined),
              label: const Text('Importar receitas de exemplo'),
            ),
          ],
        ),
      ),
    );
  }
}
