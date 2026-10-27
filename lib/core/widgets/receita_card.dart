import 'package:flutter/material.dart';

import '../../domain/receita.dart';
import 'receita_imagem.dart';

class ReceitaCard extends StatelessWidget {
  final Receita receita;
  final VoidCallback? onTap;

  const ReceitaCard({
    super.key,
    required this.receita,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ReceitaImagem(receita: receita, largura: 56, altura: 56),
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
}