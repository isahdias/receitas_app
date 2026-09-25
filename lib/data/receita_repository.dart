import 'package:flutter/foundation.dart';

import '../domain/receita.dart';

class ReceitaRepository extends ChangeNotifier {
  final List<Receita> _receitas = [
    const Receita(
      id: '1',
      titulo: 'Bolo de Cenoura',
      descricao: 'Bolo fofinho com cobertura de chocolate.',
      categoria: 'Doce',
      tempoPreparo: 50,
      porcoes: 10,
      ingredientes: [
        '3 cenouras médias',
        '4 ovos',
        '1 xícara de óleo',
        '2 xícaras de açúcar',
        '2 xícaras de farinha de trigo',
        '1 colher de sopa de fermento',
      ],
      modoPreparo:
          'Bata no liquidificador as cenouras, os ovos e o óleo. '
          'Misture com o açúcar e a farinha, acrescente o fermento '
          'e asse em forno médio por 40 minutos.',
      dificuldade: 'Fácil',
    ),
    const Receita(
      id: '2',
      titulo: 'Pão de Queijo',
      descricao: 'Clássico mineiro, crocante por fora e macio por dentro.',
      categoria: 'Salgado',
      tempoPreparo: 40,
      porcoes: 20,
      ingredientes: [
        '500 g de polvilho azedo',
        '1 xícara de leite',
        '1/2 xícara de óleo',
        '2 ovos',
        '200 g de queijo meia cura ralado',
        'Sal a gosto',
      ],
      modoPreparo:
          'Ferva o leite com o óleo e o sal e escalde o polvilho. '
          'Deixe amornar, junte os ovos e o queijo e sove bem. '
          'Faça bolinhas e asse em forno a 180 °C por 25 minutos.',
      dificuldade: 'Média',
    ),
    const Receita(
      id: '3',
      titulo: 'Suco Verde',
      descricao: 'Refrescante e nutritivo, ótimo para o café da manhã.',
      categoria: 'Bebida',
      tempoPreparo: 10,
      porcoes: 2,
      ingredientes: [
        '1 folha de couve',
        '1 maçã',
        'Suco de 1 limão',
        '1 pedaço de gengibre',
        '400 ml de água gelada',
      ],
      modoPreparo:
          'Bata todos os ingredientes no liquidificador, coe se preferir '
          'e sirva gelado.',
      dificuldade: 'Fácil',
    ),
    const Receita(
      id: '4',
      titulo: 'Lasanha à Bolonhesa',
      descricao: 'Camadas de massa, molho de carne e queijo gratinado.',
      categoria: 'Salgado',
      tempoPreparo: 90,
      porcoes: 8,
      ingredientes: [
        '500 g de massa para lasanha',
        '500 g de carne moída',
        '1 lata de molho de tomate',
        '400 g de muçarela',
        '200 g de presunto',
        '1 cebola picada',
      ],
      modoPreparo:
          'Refogue a cebola com a carne e junte o molho de tomate. '
          'Monte camadas de massa, molho, presunto e muçarela. '
          'Cubra com queijo e asse a 200 °C por 40 minutos.',
      dificuldade: 'Difícil',
    ),
  ];

  List<Receita> get receitas => List.unmodifiable(_receitas);

  void adicionar(Receita receita) {
    _receitas.add(receita);
    notifyListeners();
  }

  Receita? buscarPorId(String id) {
    for (final receita in _receitas) {
      if (receita.id == id) return receita;
    }
    return null;
  }
}

final receitaRepository = ReceitaRepository();