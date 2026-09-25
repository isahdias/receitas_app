import 'package:flutter/material.dart';

import '../../domain/receita.dart';

class ReceitaCard extends StatelessWidget {
  final Receita receita;
  final VoidCallback? onTap;

  const ReceitaCard({super.key, required this.receita, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(_iconePorCategoria(receita.categoria)),
        ),
        title: Text(
          receita.titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '${receita.categoria} • ${receita.tempoPreparo} min • ${receita.dificuldade}',
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }

  IconData _iconePorCategoria(String categoria) {
    switch (categoria) {
      case 'Doce':
        return Icons.cake;
      case 'Bebida':
        return Icons.local_drink;
      default:
        return Icons.restaurant;
    }
  }
}