import 'package:flutter/material.dart';

import '../../domain/receita.dart';

/// Mostra a foto da receita.
/// 1. Se a receita tiver imagemUrl (link da internet), usa o link.
/// 2. Senão, procura a foto em assets/images/<id>.jpg.
/// 3. Se nada disso funcionar, mostra o ícone da categoria.
class ReceitaImagem extends StatelessWidget {
  final Receita receita;
  final double? largura;
  final double? altura;
  final double tamanhoIcone;

  const ReceitaImagem({
    super.key,
    required this.receita,
    this.largura,
    this.altura,
    this.tamanhoIcone = 28,
  });

  @override
  Widget build(BuildContext context) {
    final url = receita.imagemUrl;

    if (url != null && url.isNotEmpty) {
      return Image.network(
        url,
        width: largura,
        height: altura,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => _reserva(context),
      );
    }

    return Image.asset(
      'assets/images/${receita.id}.jpg',
      width: largura,
      height: altura,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => _reserva(context),
    );
  }

  Widget _reserva(BuildContext context) {
    final cores = Theme.of(context).colorScheme;
    return Container(
      width: largura,
      height: altura,
      color: cores.primaryContainer,
      child: Icon(
        iconePorCategoria(receita.categoria),
        size: tamanhoIcone,
        color: cores.onPrimaryContainer,
      ),
    );
  }
}

IconData iconePorCategoria(String categoria) {
  switch (categoria) {
    case 'Doce':
      return Icons.cake;
    case 'Bebida':
      return Icons.local_drink;
    default:
      return Icons.restaurant;
  }
}
