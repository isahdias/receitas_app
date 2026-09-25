import 'package:flutter/material.dart';

import '../../core/widgets/receita_card.dart';
import '../../data/receita_repository.dart';

class ReceitaListScreen extends StatelessWidget {
  const ReceitaListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minhas Receitas')),
      body: ListenableBuilder(
        listenable: receitaRepository,
        builder: (context, _) {
          final receitas = receitaRepository.receitas;

          if (receitas.isEmpty) {
            return const Center(
              child: Text('Nenhuma receita cadastrada ainda.'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: receitas.length,
            itemBuilder: (context, index) {
              return ReceitaCard(receita: receitas[index]);
            },
          );
        },
      ),
    );
  }
}