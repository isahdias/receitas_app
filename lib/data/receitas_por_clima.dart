import '../domain/receita.dart';
import 'clima_service.dart';

/// Regra geral: em quais "humores" de clima cada categoria combina.
/// Categoria que não estiver aqui combina com qualquer clima.
const Map<String, Set<Humor>> _porCategoria = {
  'doce': {Humor.ameno, Humor.frio, Humor.chuva},
  'salgado': {Humor.ameno, Humor.frio, Humor.chuva},
  'bebida': {Humor.calor, Humor.ameno},
  'frango': {Humor.frio, Humor.chuva, Humor.ameno},
  'carne': {Humor.frio, Humor.chuva, Humor.ameno},
  'massa': {Humor.frio, Humor.chuva, Humor.ameno},
  'frutos do mar': {Humor.calor, Humor.ameno},
  'vegetariano': {Humor.calor, Humor.ameno},
  'entrada': {Humor.calor, Humor.ameno},
  'café da manhã': {Humor.ameno, Humor.frio},
  'acompanhamento': {Humor.ameno, Humor.chuva},
  'sopa': {Humor.frio, Humor.chuva},
  'salada': {Humor.calor, Humor.ameno},
  'cordeiro': {Humor.frio, Humor.chuva},
  'vegano': {Humor.frio, Humor.chuva, Humor.ameno},
};

/// Exceções por receita (têm prioridade sobre a categoria).
const Map<String, Set<Humor>> _porId = {
  'mealdb-53169': {Humor.calor}, // Ajo blanco (sopa fria)
  'mealdb-52839': {Humor.calor, Humor.ameno}, // Linguine com camarão
  'mealdb-53278': {Humor.calor, Humor.ameno}, // Berinjela com homus
  'mealdb-53483': {Humor.calor, Humor.ameno}, // Acarajé com camarão
  'mealdb-53099': {Humor.calor, Humor.ameno}, // Hambúrguer australiano
  'mealdb-53085': {Humor.calor, Humor.ameno}, // Hambúrguer de frango
  'mealdb-53481': {Humor.ameno, Humor.chuva}, // Moqueca
  'mealdb-53158': {Humor.ameno, Humor.chuva}, // Patatas bravas
  'mealdb-53453': {Humor.frio, Humor.chuva}, // Curry bengali
  'mealdb-53281': {Humor.frio, Humor.chuva, Humor.ameno}, // Kefta
  'mealdb-53430': {Humor.frio, Humor.ameno}, // Chop up de Antígua
  'mealdb-53373': {Humor.chuva, Humor.ameno}, // Rolinhos primavera
  'mealdb-52835': {Humor.frio, Humor.chuva}, // Fettuccine alfredo
  'mealdb-53120': {Humor.frio, Humor.chuva}, // Æbleskiver
  'mealdb-53111': {Humor.ameno, Humor.frio}, // Biscoitos Anzac
  'mealdb-53380': {Humor.frio, Humor.chuva, Humor.ameno}, // Bolo de maçã
  // Lote 2 (comfort food)
  'mealdb-53482': {Humor.frio, Humor.chuva}, // Feijoada
  'mealdb-52868': {Humor.frio, Humor.chuva}, // Curry de feijão-vermelho
  'mealdb-52876': {Humor.frio, Humor.chuva}, // Torta de carne moída
  'mealdb-52883': {Humor.frio, Humor.chuva}, // Sticky toffee pudding
  'mealdb-52792': {Humor.frio, Humor.chuva, Humor.ameno}, // Pudim de pão
  'mealdb-52860': {Humor.frio, Humor.chuva, Humor.ameno}, // Brownie
  'mealdb-52854': {Humor.frio, Humor.ameno}, // Panquecas
  // Lote 3 (leves e gelados)
  'mealdb-53346': {Humor.calor}, // Sorvete
  'mealdb-52853': {Humor.calor, Humor.ameno}, // Mousse de abacate
  'mealdb-52859': {Humor.calor, Humor.ameno}, // Torta de limão
  'mealdb-53550': {Humor.calor, Humor.ameno}, // Torta de morango
  'mealdb-53478': {Humor.calor, Humor.ameno}, // Milho grelhado
  'mealdb-53032': {Humor.calor, Humor.ameno}, // Tonkatsu
  'mealdb-52828': {Humor.calor, Humor.ameno}, // Porco vietnamita
  'mealdb-52821': {Humor.frio, Humor.chuva}, // Laksa
  'mealdb-53219': {Humor.frio, Humor.chuva, Humor.ameno}, // Shakshuka
  'mealdb-53046': {Humor.ameno, Humor.frio, Humor.chuva}, // Pastéis de nata
  'mealdb-53476': {Humor.frio, Humor.chuva, Humor.ameno}, // Pão de queijo
};

Set<Humor> humoresDa(Receita r) =>
    _porId[r.id] ??
    _porCategoria[r.categoria.trim().toLowerCase()] ??
    Humor.values.toSet();

/// Escolhe a receita do dia para o humor informado.
/// A escolha muda a cada dia, mas é estável durante o mesmo dia.
Receita? sugerirReceita(List<Receita> todas, Humor humor, {DateTime? agora}) {
  if (todas.isEmpty) return null;

  final candidatas = todas.where((r) => humoresDa(r).contains(humor)).toList()
    ..sort((a, b) => a.id.compareTo(b.id));
  final lista = candidatas.isEmpty ? todas : candidatas;

  final d = agora ?? DateTime.now();
  final diaDoAno = d.difference(DateTime(d.year, 1, 1)).inDays;
  return lista[diaDoAno % lista.length];
}
