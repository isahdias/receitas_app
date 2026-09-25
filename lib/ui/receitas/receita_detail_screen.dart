import 'package:flutter/material.dart';

import '../../data/receita_repository.dart';

class ReceitaDetailScreen extends StatelessWidget {
  final String receitaId;

  const ReceitaDetailScreen({super.key, required this.receitaId});

  @override
  Widget build(BuildContext context) {
    final receita = receitaRepository.buscarPorId(receitaId);

    if (receita == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Receita')),
        body: const Center(child: Text('Receita não encontrada.')),
      );
    }

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(receita.titulo)),
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
