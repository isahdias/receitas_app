import 'package:flutter/foundation.dart';

import '../domain/receita.dart';

class ReceitaRepository extends ChangeNotifier {
  final List<Receita> _receitas = [
    const Receita(
      id: '1',
      titulo: 'Bolo de Cenoura',
      descricao: 'Bolo fofinho de cenoura com cobertura de chocolate.',
      categoria: 'Doce',
      tempoPreparo: 50,
      porcoes: 12,
      dificuldade: 'Fácil',
      ingredientes: [
        '3 cenouras médias',
        '4 ovos',
        '1 xícara de óleo',
        '2 xícaras de açúcar',
        '2 e 1/2 xícaras de farinha de trigo',
        '1 colher (sopa) de fermento em pó',
        'Cobertura: 4 colheres de chocolate em pó, 1 colher de manteiga, 1 xícara de açúcar e 5 colheres de leite',
      ],
      modoPreparo:
          '1. Bata no liquidificador as cenouras, os ovos e o óleo.\n'
          '2. Em uma tigela, misture com o açúcar e a farinha.\n'
          '3. Acrescente o fermento e misture delicadamente.\n'
          '4. Asse em forma untada a 180 °C por cerca de 40 minutos.\n'
          '5. Para a cobertura, leve tudo ao fogo até engrossar e espalhe sobre o bolo.',
    ),
    const Receita(
      id: '2',
      titulo: 'Pão de Queijo',
      descricao: 'Clássico mineiro, crocante por fora e macio por dentro.',
      categoria: 'Salgado',
      tempoPreparo: 40,
      porcoes: 20,
      dificuldade: 'Média',
      ingredientes: [
        '500 g de polvilho azedo',
        '1 xícara de leite',
        '1/2 xícara de óleo',
        '1 colher (chá) de sal',
        '2 ovos',
        '200 g de queijo meia cura ralado',
      ],
      modoPreparo:
          '1. Ferva o leite com o óleo e o sal.\n'
          '2. Escalde o polvilho com essa mistura e mexa bem.\n'
          '3. Espere amornar e acrescente os ovos, um de cada vez.\n'
          '4. Adicione o queijo e sove até a massa ficar lisa.\n'
          '5. Faça bolinhas e asse a 200 °C por 25 minutos.',
    ),
    const Receita(
      id: '3',
      titulo: 'Suco Verde',
      descricao: 'Suco refrescante de couve, limão e maçã.',
      categoria: 'Bebida',
      tempoPreparo: 10,
      porcoes: 2,
      dificuldade: 'Fácil',
      ingredientes: [
        '2 folhas de couve',
        '1 maçã',
        'Suco de 1 limão',
        '1 pedaço pequeno de gengibre',
        '500 ml de água gelada',
      ],
      modoPreparo:
          '1. Lave bem a couve e a maçã.\n'
          '2. Bata todos os ingredientes no liquidificador.\n'
          '3. Coe se preferir e sirva gelado.',
    ),
    const Receita(
      id: '4',
      titulo: 'Lasanha à Bolonhesa',
      descricao: 'Camadas de massa, molho de carne, presunto e queijo.',
      categoria: 'Salgado',
      tempoPreparo: 90,
      porcoes: 8,
      dificuldade: 'Difícil',
      ingredientes: [
        '500 g de massa para lasanha',
        '500 g de carne moída',
        '1 cebola picada',
        '2 dentes de alho',
        '500 ml de molho de tomate',
        '300 g de presunto fatiado',
        '400 g de muçarela fatiada',
        'Queijo parmesão ralado a gosto',
      ],
      modoPreparo:
          '1. Refogue a cebola e o alho, junte a carne e deixe dourar.\n'
          '2. Acrescente o molho de tomate e cozinhe por 15 minutos.\n'
          '3. Em um refratário, intercale molho, massa, presunto e muçarela.\n'
          '4. Finalize com molho e parmesão.\n'
          '5. Asse a 200 °C por 40 minutos.',
    ),
    const Receita(
      id: '5',
      titulo: 'Brigadeiro',
      descricao: 'O docinho mais famoso das festas brasileiras.',
      categoria: 'Doce',
      tempoPreparo: 30,
      porcoes: 25,
      dificuldade: 'Fácil',
      ingredientes: [
        '1 lata de leite condensado',
        '1 colher (sopa) de manteiga',
        '3 colheres (sopa) de chocolate em pó',
        'Chocolate granulado para enrolar',
      ],
      modoPreparo:
          '1. Leve o leite condensado, a manteiga e o chocolate ao fogo baixo.\n'
          '2. Mexa sem parar até desgrudar do fundo da panela.\n'
          '3. Deixe esfriar, unte as mãos e faça bolinhas.\n'
          '4. Passe no granulado e coloque em forminhas.',
    ),
    const Receita(
      id: '6',
      titulo: 'Feijoada',
      descricao: 'Feijão preto com carnes, servido com arroz, couve e laranja.',
      categoria: 'Salgado',
      tempoPreparo: 180,
      porcoes: 10,
      dificuldade: 'Difícil',
      ingredientes: [
        '1 kg de feijão preto',
        '300 g de carne seca',
        '300 g de costelinha de porco',
        '2 linguiças calabresas',
        '200 g de bacon',
        '1 cebola picada',
        '4 dentes de alho',
        '2 folhas de louro',
      ],
      modoPreparo:
          '1. Deixe a carne seca de molho na véspera, trocando a água.\n'
          '2. Cozinhe o feijão com o louro na panela de pressão.\n'
          '3. Cozinhe as carnes separadamente até ficarem macias.\n'
          '4. Frite o bacon, a cebola e o alho, e junte ao feijão com as carnes.\n'
          '5. Deixe apurar em fogo baixo por 1 hora.',
    ),
    const Receita(
      id: '7',
      titulo: 'Coxinha',
      descricao: 'Salgado de massa de batata recheado com frango.',
      categoria: 'Salgado',
      tempoPreparo: 120,
      porcoes: 30,
      dificuldade: 'Difícil',
      ingredientes: [
        '500 g de peito de frango',
        '1 cebola picada',
        '2 dentes de alho',
        '2 xícaras do caldo do cozimento do frango',
        '2 xícaras de farinha de trigo',
        '1 colher (sopa) de manteiga',
        'Farinha de rosca e 2 ovos para empanar',
        'Óleo para fritar',
      ],
      modoPreparo:
          '1. Cozinhe o frango, desfie e refogue com cebola e alho.\n'
          '2. Ferva o caldo com a manteiga e acrescente a farinha de uma vez, mexendo.\n'
          '3. Sove a massa ainda morna até ficar lisa.\n'
          '4. Abra pequenas porções, recheie e modele as coxinhas.\n'
          '5. Passe no ovo batido e na farinha de rosca e frite em óleo quente.',
    ),
    const Receita(
      id: '8',
      titulo: 'Pudim de Leite',
      descricao: 'Pudim cremoso com calda de caramelo.',
      categoria: 'Doce',
      tempoPreparo: 70,
      porcoes: 10,
      dificuldade: 'Média',
      ingredientes: [
        '1 lata de leite condensado',
        'A mesma medida da lata de leite',
        '3 ovos',
        '1 xícara de açúcar para a calda',
      ],
      modoPreparo:
          '1. Derreta o açúcar na forma até virar caramelo e espalhe.\n'
          '2. Bata o leite condensado, o leite e os ovos no liquidificador.\n'
          '3. Despeje na forma caramelizada e cubra com papel-alumínio.\n'
          '4. Asse em banho-maria a 180 °C por cerca de 1 hora.\n'
          '5. Leve à geladeira por 4 horas antes de desenformar.',
    ),
    const Receita(
      id: '9',
      titulo: 'Moqueca de Peixe',
      descricao: 'Peixe cozido no leite de coco com azeite de dendê.',
      categoria: 'Salgado',
      tempoPreparo: 50,
      porcoes: 4,
      dificuldade: 'Média',
      ingredientes: [
        '1 kg de peixe branco em postas',
        'Suco de 1 limão',
        '2 tomates em rodelas',
        '1 cebola em rodelas',
        '1 pimentão em rodelas',
        '200 ml de leite de coco',
        '2 colheres (sopa) de azeite de dendê',
        'Coentro e sal a gosto',
      ],
      modoPreparo:
          '1. Tempere o peixe com limão e sal e deixe descansar por 20 minutos.\n'
          '2. Em uma panela, faça camadas de cebola, tomate, pimentão e peixe.\n'
          '3. Regue com o leite de coco e o dendê.\n'
          '4. Cozinhe tampado em fogo médio por 20 minutos.\n'
          '5. Finalize com coentro picado.',
    ),
    const Receita(
      id: '10',
      titulo: 'Limonada Suíça',
      descricao: 'Limonada cremosa batida com leite condensado.',
      categoria: 'Bebida',
      tempoPreparo: 10,
      porcoes: 4,
      dificuldade: 'Fácil',
      ingredientes: [
        '3 limões taiti',
        '1 litro de água gelada',
        '4 colheres (sopa) de leite condensado',
        'Açúcar e gelo a gosto',
      ],
      modoPreparo:
          '1. Lave bem os limões e corte em quatro, retirando o miolo branco.\n'
          '2. Bata com a água por poucos segundos (para não amargar).\n'
          '3. Coe, volte ao liquidificador com o leite condensado e bata.\n'
          '4. Sirva com gelo.',
    ),
    const Receita(
      id: '11',
      titulo: 'Açaí na Tigela',
      descricao: 'Açaí batido com banana e coberturas crocantes.',
      categoria: 'Doce',
      tempoPreparo: 10,
      porcoes: 2,
      dificuldade: 'Fácil',
      ingredientes: [
        '400 g de polpa de açaí congelada',
        '1 banana congelada',
        '1/2 xícara de suco de uva ou guaraná',
        'Granola, banana fatiada e leite em pó para cobrir',
      ],
      modoPreparo:
          '1. Bata a polpa, a banana e o suco até ficar cremoso.\n'
          '2. Coloque em tigelas.\n'
          '3. Cubra com granola, banana e leite em pó.',
    ),
    const Receita(
      id: '12',
      titulo: 'Escondidinho de Carne Seca',
      descricao: 'Purê de mandioca gratinado com recheio de carne seca.',
      categoria: 'Salgado',
      tempoPreparo: 80,
      porcoes: 6,
      dificuldade: 'Média',
      ingredientes: [
        '500 g de carne seca dessalgada',
        '1 kg de mandioca',
        '2 colheres (sopa) de manteiga',
        '1 xícara de leite',
        '1 cebola picada',
        '200 g de queijo muçarela ralado',
      ],
      modoPreparo:
          '1. Cozinhe e desfie a carne seca, depois refogue com a cebola.\n'
          '2. Cozinhe a mandioca e amasse com a manteiga e o leite até virar purê.\n'
          '3. Em um refratário, coloque a carne e cubra com o purê.\n'
          '4. Espalhe o queijo e leve ao forno a 200 °C até gratinar.',
    ),
    const Receita(
      id: '13',
      titulo: 'Vitamina de Banana',
      descricao: 'Vitamina cremosa para o café da manhã.',
      categoria: 'Bebida',
      tempoPreparo: 5,
      porcoes: 2,
      dificuldade: 'Fácil',
      ingredientes: [
        '2 bananas maduras',
        '400 ml de leite gelado',
        '2 colheres (sopa) de aveia',
        'Mel ou açúcar a gosto',
      ],
      modoPreparo:
          '1. Bata todos os ingredientes no liquidificador.\n'
          '2. Sirva na hora.',
    ),
  ];

  List<Receita> get receitas => List.unmodifiable(_receitas);

  Receita? buscarPorId(String id) {
    for (final receita in _receitas) {
      if (receita.id == id) return receita;
    }
    return null;
  }

  void adicionar(Receita receita) {
    _receitas.add(receita);
    notifyListeners();
  }

  void remover(String id) {
    _receitas.removeWhere((r) => r.id == id);
    notifyListeners();
  }
}

final receitaRepository = ReceitaRepository();
