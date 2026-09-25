class Receita {
  final String id;
  final String titulo;
  final String descricao;
  final String categoria;
  final int tempoPreparo;
  final int porcoes;
  final List<String> ingredientes;
  final String modoPreparo;
  final String dificuldade;

  const Receita({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.categoria,
    required this.tempoPreparo,
    required this.porcoes,
    required this.ingredientes,
    required this.modoPreparo,
    required this.dificuldade,
  });
}