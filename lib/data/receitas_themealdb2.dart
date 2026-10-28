import '../domain/receita.dart';

/// Lote 2: receitas importadas da TheMealDB (https://www.themealdb.com),
/// traduzidas para o portugues. Foco em pratos quentinhos, sopas e comfort
/// food. As fotos continuam hospedadas na TheMealDB (imagemUrl).
/// Obs.: tempoPreparo, porcoes e dificuldade sao estimativas, pois a API
/// nao fornece esses dados.
const String _fotos = 'https://www.themealdb.com/images/media/meals/';

final List<Receita> receitasTheMealDB2 = [
  const Receita(
    id: 'mealdb-52841',
    titulo: 'Sopa Cremosa de Tomate',
    descricao:
        'Sopa de tomate com legumes, batida até ficar bem lisa e finalizada com leite.',
    categoria: 'Sopa',
    tempoPreparo: 45,
    porcoes: 8,
    dificuldade: 'Fácil',
    ingredientes: [
      '3 colheres (sopa) de azeite',
      '2 cebolas picadas',
      '2 talos de aipo',
      '300 g de cenouras',
      '500 g de batatas',
      '4 folhas de louro',
      '5 colheres (sopa) de extrato de tomate',
      '2 colheres (sopa) de açúcar',
      '2 colheres (sopa) de vinagre branco',
      '1,5 kg de tomates picados',
      '500 g de passata (molho de tomate coado)',
      '3 cubos de caldo de legumes',
      '400 ml de leite integral',
    ],
    modoPreparo:
        '1. Coloque o azeite, as cebolas, o aipo, as cenouras, as batatas e o louro em uma panela grande. Refogue em fogo baixo por 10 a 15 minutos, até as cebolas amolecerem.\n'
        '2. Ferva água em uma chaleira. Junte o extrato de tomate, o açúcar, o vinagre, os tomates e a passata, e esfarele os cubos de caldo por cima.\n'
        '3. Acrescente 1 litro de água fervente e leve a uma fervura leve.\n'
        '4. Tampe e cozinhe por 15 minutos, até as batatas ficarem macias. Retire o louro.\n'
        '5. Bata com um mixer (ou no liquidificador, em levas) até ficar bem lisa. Tempere a gosto e, se precisar, acrescente uma pitada de açúcar.\n'
        '6. Na hora de servir, reaqueça a sopa e misture o leite, sem deixar ferver.\n'
        '7. Sirva em tigelas pequenas. A sopa pode ser congelada por até 3 meses.',
    imagemUrl: '${_fotos}stpuws1511191310.jpg',
  ),
  const Receita(
    id: 'mealdb-52842',
    titulo: 'Sopa de Brócolis com Queijo Stilton',
    descricao:
        'Sopa cremosa de brócolis com legumes e queijo azul, finalizada com pimenta-do-reino.',
    categoria: 'Sopa',
    tempoPreparo: 35,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '2 colheres (sopa) de óleo de canola',
      '1 cebola picada bem fina',
      '1 talo de aipo',
      '1 alho-poró fatiado',
      '1 batata média',
      '1 noz de manteiga',
      '1 litro de caldo de legumes quente',
      '1 cabeça de brócolis picada',
      '140 g de queijo Stilton (ou outro queijo azul)',
    ],
    modoPreparo:
        '1. Aqueça o óleo em uma panela grande e refogue a cebola em fogo médio até ficar macia. Se começar a grudar, junte um pouco de água.\n'
        '2. Acrescente o aipo, o alho-poró, a batata e a manteiga. Mexa até derreter, tampe e deixe suar por 5 minutos.\n'
        '3. Retire a tampa, despeje o caldo e junte os talos mais duros do brócolis. Cozinhe de 10 a 15 minutos, até os legumes ficarem macios.\n'
        '4. Adicione o restante do brócolis e cozinhe por mais 5 minutos.\n'
        '5. Com cuidado, bata no liquidificador até ficar liso.\n'
        '6. Misture o queijo, deixando alguns pedacinhos. Tempere com pimenta-do-reino e sirva.',
    imagemUrl: '${_fotos}tvvxpv1511191952.jpg',
  ),
  const Receita(
    id: 'mealdb-52903',
    titulo: 'Sopa de Cebola Francesa',
    descricao:
        'Clássica sopa de cebola caramelizada, servida com torradas e queijo gratinado.',
    categoria: 'Sopa',
    tempoPreparo: 60,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '50 g de manteiga',
      '1 colher (sopa) de azeite',
      '1 kg de cebolas',
      '1 colher (chá) de açúcar',
      '4 dentes de alho fatiados',
      '2 colheres (sopa) de farinha de trigo',
      '250 ml de vinho branco seco',
      '1 litro de caldo de carne',
      '4 fatias de pão',
      '140 g de queijo gruyère',
    ],
    modoPreparo:
        '1. Derreta a manteiga com o azeite em uma panela grande de fundo grosso. Acrescente as cebolas e refogue com a panela tampada por 10 minutos, até amolecerem.\n'
        '2. Polvilhe o açúcar e cozinhe por mais 20 minutos, mexendo sempre, até caramelizar. As cebolas devem ficar bem douradas e macias. Cuidado no final para não queimar.\n'
        '3. Junte o alho nos últimos minutos, depois polvilhe a farinha e mexa bem.\n'
        '4. Aumente o fogo e, sem parar de mexer, vá acrescentando o vinho e depois o caldo quente.\n'
        '5. Tampe e cozinhe em fogo baixo por 15 a 20 minutos.\n'
        '6. Para servir, ligue o grill e toste o pão. Distribua a sopa em tigelas que possam ir ao forno, coloque uma ou duas fatias de pão por cima e cubra com o queijo. Leve ao grill até derreter.',
    imagemUrl: '${_fotos}xvrrux1511783685.jpg',
  ),
  const Receita(
    id: 'mealdb-52925',
    titulo: 'Sopa de Ervilha com Presunto',
    descricao:
        'Sopa encorpada de ervilha seca com presunto desfiado, servida com pão crocante.',
    categoria: 'Sopa',
    tempoPreparo: 180,
    porcoes: 6,
    dificuldade: 'Médio',
    ingredientes: [
      '1 kg de presunto (pernil de porco curado)',
      '200 g de ervilha seca (de molho de um dia para o outro)',
      '2 cebolas picadas',
      '2 cenouras picadas',
      '2 folhas de louro',
      '1 talo de aipo picado',
      '300 g de ervilhas congeladas',
      'Pão para servir',
    ],
    modoPreparo:
        '1. Coloque o presunto em uma panela bem grande com 2 litros de água e leve à fervura. Retire do fogo e descarte a água, para tirar um pouco do sal.\n'
        '2. Cubra novamente com 2 litros de água fria e leve à fervura.\n'
        '3. Junte tudo, menos as ervilhas congeladas. Ferva, reduza o fogo e cozinhe por 1h30 a 2h30, completando com água quando precisar.\n'
        '4. Quando o presunto estiver macio a ponto de desfiar, retire da panela, descarte a pele e desfie a carne ainda quente (use luvas de borracha limpas).\n'
        '5. Retire o louro, junte as ervilhas congeladas e cozinhe por 1 minuto. Bata até ficar liso, com um pouco de água se ficar grosso.\n'
        '6. Para servir, misture a maior parte do presunto à sopa quente e espalhe o restante por cima. Acompanhe com pão com manteiga.',
    imagemUrl: '${_fotos}xxtsvx1511814083.jpg',
  ),
  const Receita(
    id: 'mealdb-53210',
    titulo: 'Sopa Tailandesa de Abóbora',
    descricao:
        'Sopa cremosa de abóbora assada com curry vermelho, leite de coco e limão.',
    categoria: 'Sopa',
    tempoPreparo: 50,
    porcoes: 6,
    dificuldade: 'Fácil',
    ingredientes: [
      '1,5 kg de abóbora',
      '4 colheres (chá) de óleo de girassol',
      '1 cebola fatiada',
      '1 colher (sopa) de gengibre ralado',
      '1 talo de capim-limão',
      '4 colheres (sopa) de pasta de curry vermelho tailandês',
      '400 ml de leite de coco',
      '800 ml de caldo de legumes',
      'Suco de limão a gosto',
      'Açúcar a gosto',
      'Pimenta vermelha para servir',
    ],
    modoPreparo:
        '1. Aqueça o forno a 200 °C. Misture a abóbora com metade do óleo e tempere. Asse por 30 minutos, até dourar e ficar macia.\n'
        '2. Enquanto isso, coloque o restante do óleo em uma panela com a cebola, o gengibre e o capim-limão. Cozinhe em fogo baixo por 8 a 10 minutos, até amolecer.\n'
        '3. Junte a pasta de curry por 1 minuto, depois a abóbora assada, o leite de coco (reserve 3 colheres) e o caldo. Deixe ferver e cozinhe por 5 minutos. Retire o capim-limão.\n'
        '4. Espere esfriar um pouco e bata até ficar liso. Volte à panela para aquecer e acerte o sal, a pimenta, o limão e o açúcar.\n'
        '5. Sirva com um fio do leite de coco reservado e pimenta vermelha picada.',
    imagemUrl: '${_fotos}1brbso1763585098.jpg',
  ),
  const Receita(
    id: 'mealdb-53047',
    titulo: 'Sopa Marroquina de Cenoura',
    descricao:
        'Sopa de cenoura assada com cominho, coentro e garam masala, finalizada com limão.',
    categoria: 'Sopa',
    tempoPreparo: 35,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '6 cenouras picadas',
      '1 cebola fatiada',
      '4 dentes de alho',
      '1 colher (chá) de cominho em grãos',
      '1/2 colher (chá) de coentro em grãos',
      '1 colher (sopa) de azeite',
      '1/4 de colher (chá) de garam masala',
      '1 colher (chá) de suco de limão',
      'Sal a gosto',
    ],
    modoPreparo:
        '1. Preaqueça o forno a 180 °C.\n'
        '2. Misture em uma tigela as cenouras, a cebola, o alho, o cominho, o coentro, o sal e o azeite.\n'
        '3. Coloque em uma assadeira e asse por 10 a 12 minutos, até as cenouras amolecerem. Retire do forno e deixe esfriar.\n'
        '4. Bata a mistura assada com um pouco de água até virar um creme liso e coe em uma tigela.\n'
        '5. Aqueça o creme em uma panela antiaderente, junte 2 xícaras de água e deixe ferver. Acrescente o garam masala e o sal.\n'
        '6. Retire do fogo, misture o suco de limão e sirva quente.',
    imagemUrl: '${_fotos}jcr46d1614763831.jpg',
  ),
  const Receita(
    id: 'mealdb-53482',
    titulo: 'Feijoada',
    descricao:
        'Feijão-preto cozido lentamente com bacon, costelinha, linguiça e paleta de porco.',
    categoria: 'Carne',
    tempoPreparo: 150,
    porcoes: 6,
    dificuldade: 'Médio',
    ingredientes: [
      '250 g de feijão-preto',
      '100 g de bacon',
      '500 g de costelinha de porco',
      '3 linguiças (tipo chouriço)',
      '500 g de paleta de porco',
      '3 cebolas picadas',
      '4 dentes de alho picados',
      '1 pitada de pimenta em flocos',
      'Um fio de óleo',
      '2 folhas de louro',
      'Vinagre de vinho branco',
      'Arroz, salsinha ou coentro, molho de pimenta e laranja em fatias para servir',
    ],
    modoPreparo:
        '1. Aqueça uma panela grande de fundo grosso com tampa, junte o bacon e frite até ficar crocante. Retire e mantenha a gordura na panela. Em levas, sele a costelinha, as linguiças e a paleta, temperando cada leva com sal e pimenta.\n'
        '2. Retire a carne e reserve. Na mesma panela, refogue a cebola, o alho e a pimenta, com um pouco de óleo se precisar, por cerca de 8 minutos, até amolecer.\n'
        '3. Volte as carnes e o bacon à panela, junte o louro, um pouco de vinagre de vinho branco e o feijão escorrido. Cubra apenas com água (cerca de 650 ml). Deixe ferver, reduza o fogo e cozinhe tampado por 2 horas, até o feijão e as carnes ficarem macios. Se sobrar muito caldo, tire a tampa na última hora.\n'
        '4. Também dá para fazer em panela de pressão (30 minutos) ou no forno a 160 °C por 3 a 4 horas.\n'
        '5. Sirva com arroz, salsinha ou coentro, molho de pimenta e fatias de laranja.',
    imagemUrl: '${_fotos}xrxz7h1782592711.jpg',
  ),
  const Receita(
    id: 'mealdb-53486',
    titulo: 'Sopa Fácil de Feijão-Branco',
    descricao:
        'Sopa rústica de feijão-branco com pimentão, cenoura e ervas.',
    categoria: 'Sopa',
    tempoPreparo: 140,
    porcoes: 6,
    dificuldade: 'Fácil',
    ingredientes: [
      '450 g de feijão-branco (cannellini)',
      '2 cebolas médias',
      '2 colheres (sopa) de óleo vegetal',
      '2 pimentões vermelhos médios',
      '1/3 de xícara de extrato de tomate',
      '2 cenouras médias',
      '6 xícaras de água',
      '1 colher (chá) de hortelã seca',
      '1/2 colher (chá) de tomilho',
      '1 colher (chá) de segurelha (opcional)',
      '1 colher (chá) de pimenta-do-reino',
      '1 colher (chá) de sal',
      'Salsinha picada para decorar',
    ],
    modoPreparo:
        '1. Deixe o feijão de molho em água fria por pelo menos 4 horas, ou de um dia para o outro. Escorra e enxágue.\n'
        '2. Pique uma das cebolas e deixe a outra inteira. Pique as cenouras.\n'
        '3. Aqueça o óleo em uma panela grande em fogo médio. Refogue a cebola picada e as cenouras por 2 minutos.\n'
        '4. Acrescente o feijão, a água, os pimentões, a cebola inteira, o sal, a pimenta, a segurelha, a hortelã, o tomilho e o extrato de tomate. Misture, leve à fervura e depois cozinhe em fogo baixo por 2 horas, até o feijão ficar macio.\n'
        '5. Retire os pimentões e a cebola inteira. Amasse a cebola, descasque e pique os pimentões e volte tudo à panela.\n'
        '6. Acerte o sal e a pimenta, decore com salsinha e sirva.',
    imagemUrl: '${_fotos}p5nzbk1782680889.jpg',
  ),
  const Receita(
    id: 'mealdb-53532',
    titulo: 'Sopa Cremosa de Milho',
    descricao:
        'Sopa de milho verde batida com batata e creme de leite, finalizada com coentro.',
    categoria: 'Sopa',
    tempoPreparo: 30,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '4 espigas de milho',
      '6 xícaras de água',
      '2 cubos de caldo (de galinha ou de legumes)',
      '2 dentes de alho picados',
      '1/2 colher (chá) de sal',
      '1/2 colher (chá) de pimenta',
      '2 colheres (sopa) de coentro',
      '1/2 xícara de batata picada',
      '1/2 xícara de cebolinha picada',
      '1 xícara de creme de leite fresco',
    ],
    modoPreparo:
        '1. Coloque o milho, a água, o caldo, o alho, o sal, a pimenta, o coentro, a batata e a cebolinha em uma panela grande e leve à fervura.\n'
        '2. Reduza o fogo para médio-baixo e cozinhe por cerca de 4 minutos, até o milho ficar macio. Retire do fogo.\n'
        '3. Bata a sopa no liquidificador e volte à panela. Junte o creme de leite e aqueça em fogo médio por 15 minutos, mexendo de vez em quando.\n'
        '4. Sirva em tigelas, decorada com coentro.\n'
        'Dica: milho fresco ou congelado funcionam. A sopa pode ser guardada na geladeira, em pote fechado, por até 3 dias.',
    imagemUrl: '${_fotos}yf5eyw1783804464.jpg',
  ),
  const Receita(
    id: 'mealdb-53546',
    titulo: 'Sopa de Feijão-Preto',
    descricao:
        'Sopa de feijão-preto com cominho e pimenta, servida com creme azedo, abacate e coentro.',
    categoria: 'Sopa',
    tempoPreparo: 40,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '2 colheres (sopa) de azeite extravirgem',
      '1 cebola roxa média',
      '1 pimenta jalapeño',
      '2 dentes de alho picados',
      '1 colher (sopa) de extrato de tomate',
      'Uma pitada de sal',
      'Uma pitada de pimenta-do-reino',
      '1/2 colher (chá) de cominho em pó',
      '1 colher (chá) de pimenta em pó',
      '3 latas de feijão-preto',
      '3 xícaras de caldo de galinha',
      '1 folha de louro',
      'Creme azedo, abacate e coentro para decorar',
      'Limão para servir',
    ],
    modoPreparo:
        '1. Em uma panela grande em fogo médio, aqueça o azeite. Refogue a cebola por cerca de 5 minutos, até ficar translúcida. Junte a jalapeño e o alho e cozinhe por 2 minutos. Acrescente o extrato de tomate e cozinhe por mais 1 minuto. Tempere com sal, pimenta, cominho e pimenta em pó.\n'
        '2. Adicione o feijão e o caldo. Junte o louro, leve à fervura e reduza o fogo. Cozinhe por 15 a 20 minutos, até reduzir e engrossar um pouco. Se quiser uma sopa mais rala, acrescente mais caldo.\n'
        '3. Retire o louro e deixe esfriar um pouco. Bata com um mixer ou processador até a textura que preferir.\n'
        '4. Sirva com uma colherada de creme azedo, fatias de abacate, coentro e limão.',
    imagemUrl: '${_fotos}x0mreq1784577446.jpg',
  ),
  const Receita(
    id: 'mealdb-53020',
    titulo: 'Rosół (Canja Polonesa)',
    descricao:
        'Caldo claro de galinha com legumes e ervas, servido com macarrão.',
    categoria: 'Sopa',
    tempoPreparo: 150,
    porcoes: 6,
    dificuldade: 'Médio',
    ingredientes: [
      '4 coxas de frango cortadas',
      '2 cebolas grandes',
      '5 cenouras picadas',
      '1 alho-poró picado',
      '1 aipo-rábano pequeno (ou talos de aipo)',
      '1/4 de repolho',
      '1 cravo-da-índia',
      '1 colher (chá) de pimenta-da-jamaica',
      '2 folhas de louro',
      '4 ramos de salsinha',
      '4 ramos de endro (dill)',
      '1 colher (chá) de pimenta',
      '1 colher (sopa) de sal',
      'Macarrão para servir',
    ],
    modoPreparo:
        '1. Coloque o frango em uma panela grande, cubra com água e leve à fervura. Cozinhe em fogo baixo por 2 a 2h30, retirando a espuma que subir, para o caldo ficar claro.\n'
        '2. Se a panela for grande o bastante, junte os legumes e os temperos na última hora de cozimento. Se não for, cozinhe os legumes e temperos separadamente.\n'
        '3. Coe o caldo, tirando tudo.\n'
        '4. Desosse o frango e separe a carne em pedaços grandes. Fatie as cenouras.\n'
        '5. Volte o frango e as cenouras ao caldo.\n'
        '6. Cozinhe o macarrão conforme a embalagem, coloque nas tigelas e cubra com a sopa quente.',
    imagemUrl: '${_fotos}lx1kkj1593349302.jpg',
  ),
  const Receita(
    id: 'mealdb-52868',
    titulo: 'Curry de Feijão-Vermelho',
    descricao:
        'Curry vegetariano de feijão-vermelho com tomate e especiarias, servido com arroz basmati.',
    categoria: 'Vegetariano',
    tempoPreparo: 30,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '1 colher (sopa) de óleo vegetal',
      '1 cebola picada bem fina',
      '2 dentes de alho picados',
      '1 pedaço de gengibre ralado',
      '1 maço de coentro (talos e folhas)',
      '1 colher (chá) de cominho',
      '1 colher (chá) de páprica',
      '2 colheres (chá) de garam masala',
      '400 g de tomates picados',
      '400 g de feijão-vermelho',
      'Arroz basmati para servir',
    ],
    modoPreparo:
        '1. Aqueça o óleo em uma frigideira grande em fogo baixo a médio. Junte a cebola com uma pitada de sal e cozinhe devagar, mexendo de vez em quando, até amolecer e começar a pegar cor.\n'
        '2. Acrescente o alho, o gengibre e os talos de coentro picados e cozinhe por mais 2 minutos.\n'
        '3. Junte as especiarias e cozinhe por 1 minuto, até ficar bem aromático.\n'
        '4. Adicione os tomates e o feijão com o líquido da lata. Deixe ferver, reduza o fogo e cozinhe por 15 minutos, até engrossar.\n'
        '5. Tempere a gosto e sirva com arroz basmati e as folhas de coentro.',
    imagemUrl: '${_fotos}sywrsu1511463066.jpg',
  ),
  const Receita(
    id: 'mealdb-52814',
    titulo: 'Curry Verde Tailandês',
    descricao:
        'Frango ao leite de coco com pasta de curry verde, batatas e vagem.',
    categoria: 'Frango',
    tempoPreparo: 40,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '225 g de batatas pequenas',
      '100 g de vagem',
      '1 colher (sopa) de óleo de girassol',
      '1 dente de alho',
      '4 colheres (chá) de pasta de curry verde tailandês',
      '400 ml de leite de coco',
      '2 colheres (chá) de molho de peixe tailandês',
      '1 colher (chá) de açúcar',
      '450 g de frango sem osso',
      '2 folhas de limão kaffir (ou raspas de limão)',
      'Um punhado de manjericão',
      'Arroz branco cozido para servir',
    ],
    modoPreparo:
        '1. Cozinhe as batatas em água fervente por 5 minutos. Junte a vagem e cozinhe por mais 3 minutos, até ficarem macias, mas firmes. Escorra e reserve.\n'
        '2. Em uma wok ou frigideira grande, aqueça bem o óleo e doure o alho por alguns segundos, sem deixar escurecer.\n'
        '3. Junte a pasta de curry e mexa por alguns segundos para liberar o aroma. Despeje o leite de coco e deixe levantar fervura.\n'
        '4. Acrescente o molho de peixe, o açúcar e o frango em pedaços. Reduza o fogo e cozinhe tampado por cerca de 8 minutos, até o frango cozinhar.\n'
        '5. Junte as batatas e a vagem e deixe aquecer no leite de coco. Misture as folhas de limão picadas e, por último, o manjericão, que só precisa de um instante no fogo.\n'
        '6. Sirva imediatamente com arroz branco.',
    imagemUrl: '${_fotos}sstssx1487349585.jpg',
  ),
  const Receita(
    id: 'mealdb-52851',
    titulo: 'Curry de Frango com Pasta de Amendoim',
    descricao:
        'Frango cremoso com pasta de amendoim, iogurte, gengibre e coentro.',
    categoria: 'Frango',
    tempoPreparo: 30,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '1 pimenta vermelha grande',
      '1/2 pedaço de gengibre',
      '1 dente de alho grande',
      '1 maço de coentro',
      '1 colher (sopa) de óleo de girassol',
      '4 peitos de frango em pedaços',
      '5 colheres (sopa) de pasta de amendoim',
      '150 ml de caldo de galinha',
      '200 g de iogurte grego',
    ],
    modoPreparo:
        '1. Fatie fino um quarto da pimenta. Coloque o restante no processador com o gengibre, o alho, os talos de coentro e um terço das folhas. Bata até virar uma pasta grossa, com um pouco de água se precisar.\n'
        '2. Aqueça o óleo em uma frigideira e doure rapidamente o frango por 1 minuto.\n'
        '3. Junte a pasta por mais 1 minuto e, em seguida, a pasta de amendoim, o caldo e o iogurte.\n'
        '4. Quando o molho estiver borbulhando de leve, cozinhe por 10 minutos, até o frango estar cozido e o molho encorpado.\n'
        '5. Misture quase todo o coentro restante e espalhe o resto por cima, com a pimenta fatiada, se quiser. Sirva com arroz.',
    imagemUrl: '${_fotos}yxsurp1511304301.jpg',
  ),
  const Receita(
    id: 'mealdb-52808',
    titulo: 'Rogan Josh de Cordeiro',
    descricao:
        'Curry indiano de cordeiro com cebola dourada, iogurte e especiarias.',
    categoria: 'Cordeiro',
    tempoPreparo: 90,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '2 cebolas em quartos',
      '4 colheres (sopa) de óleo de girassol',
      '4 dentes de alho',
      '1 pedaço de gengibre (do tamanho de um polegar) bem ralado',
      '2 colheres (sopa) de pasta de curry Madras',
      '2 colheres (chá) de páprica',
      '1 pau de canela',
      '6 cardamomos amassados',
      '4 cravos',
      '2 folhas de louro',
      '1 colher (sopa) de extrato de tomate',
      '1 kg de cordeiro em cubos',
      '150 ml de iogurte grego',
      'Coentro picado para servir',
    ],
    modoPreparo:
        '1. Bata as cebolas no processador até ficarem bem picadinhas.\n'
        '2. Aqueça o óleo em uma panela grande de fundo grosso e frite a cebola com a panela tampada, mexendo de vez em quando, até ficar bem dourada e macia.\n'
        '3. Junte o alho e o gengibre e frite por mais 5 minutos.\n'
        '4. Acrescente a pasta de curry, todas as especiarias, o louro e o extrato de tomate. Mexa por cerca de 30 segundos e junte a carne e 300 ml de água.\n'
        '5. Misture, reduza o fogo e adicione o iogurte. Tampe e cozinhe em fogo baixo por 40 a 60 minutos, até a carne amaciar e o molho engrossar.\n'
        '6. Sirva com coentro, acompanhado de arroz basmati ou pilau.',
    imagemUrl: '${_fotos}vvstvq1487342592.jpg',
  ),
  const Receita(
    id: 'mealdb-52940',
    titulo: 'Frango Ensopado Jamaicano',
    descricao:
        'Frango marinado e ensopado com legumes, ervas e leite de coco.',
    categoria: 'Frango',
    tempoPreparo: 100,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '1 frango inteiro cortado em pedaços',
      '1 tomate picado',
      '2 cebolas picadas',
      '2 dentes de alho picados',
      '1 pimentão vermelho picado',
      '1 cenoura picada',
      '1 limão',
      '2 colheres (chá) de tomilho',
      '1 colher (chá) de pimenta-da-jamaica',
      '2 colheres (sopa) de molho shoyu',
      '2 colheres (chá) de amido de milho',
      '2 xícaras de leite de coco',
      '1 colher (sopa) de óleo vegetal',
    ],
    modoPreparo:
        '1. Esprema o limão sobre o frango, esfregue bem e escorra o excesso de suco.\n'
        '2. Em uma tigela grande, misture o tomate, a cebola, o alho, o pimentão, o tomilho, a pimenta-da-jamaica e o shoyu com os pedaços de frango. Tampe e deixe marinar por pelo menos 1 hora.\n'
        '3. Aqueça o óleo em uma panela grande. Retire cada pedaço de frango da marinada, sacudindo os temperos (reserve a marinada para o molho) e doure em óleo bem quente, poucos pedaços de cada vez. Reserve em um prato.\n'
        '4. Escorra o excesso de óleo e volte o frango à panela. Despeje a marinada por cima e junte a cenoura. Mexa e cozinhe em fogo médio por 10 minutos.\n'
        '5. Misture o amido com o leite de coco e acrescente ao ensopado, mexendo sempre. Reduza o fogo ao mínimo e cozinhe por mais 20 minutos, até o frango ficar macio.',
    imagemUrl: '${_fotos}sypxpx1515365095.jpg',
  ),
  const Receita(
    id: 'mealdb-52843',
    titulo: 'Tagine de Cordeiro',
    descricao:
        'Cozido marroquino de cordeiro com damasco, mel, abóbora e especiarias, servido com cuscuz.',
    categoria: 'Cordeiro',
    tempoPreparo: 130,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '2 colheres (sopa) de azeite',
      '1 cebola fatiada fina',
      '2 cenouras picadas',
      '500 g de pernil de cordeiro em cubos',
      '2 dentes de alho picados',
      '1/2 colher (chá) de cominho',
      '1/2 colher (chá) de gengibre',
      '1/4 de colher (chá) de açafrão',
      '1 colher (chá) de canela',
      '1 colher (sopa) de mel',
      '100 g de damascos secos',
      '1 cubo de caldo de legumes',
      '1 abóbora butternut média picada',
      'Cuscuz cozido no vapor',
      'Salsinha picada',
    ],
    modoPreparo:
        '1. Aqueça o azeite em uma panela de fundo grosso e refogue a cebola e a cenoura por 3 a 4 minutos, até amolecerem.\n'
        '2. Junte o cordeiro em cubos e doure por todos os lados. Acrescente o alho e todas as especiarias e cozinhe por mais alguns minutos, até liberar o aroma.\n'
        '3. Adicione o mel e os damascos, esfarele o cubo de caldo e despeje cerca de 500 ml de água fervente, o suficiente para cobrir a carne. Mexa bem e leve à fervura.\n'
        '4. Reduza o fogo, tampe e cozinhe por 1 hora. Tire a tampa e cozinhe por mais 30 minutos.\n'
        '5. Junte a abóbora e cozinhe por mais 20 a 30 minutos, até ela ficar macia e o cordeiro bem tenro.\n'
        '6. Sirva com arroz ou cuscuz e polvilhe salsinha (e pinoli, se quiser).',
    imagemUrl: '${_fotos}yuwtuu1511295751.jpg',
  ),
  const Receita(
    id: 'mealdb-52876',
    titulo: 'Torta de Carne Moída',
    descricao:
        'Torta britânica de massa quebradiça recheada com carne moída, cogumelos e cebola.',
    categoria: 'Carne',
    tempoPreparo: 75,
    porcoes: 6,
    dificuldade: 'Médio',
    ingredientes: [
      '2 colheres (sopa) de óleo vegetal',
      '500 g de carne moída',
      '1 cebola picada',
      '1 colher (sopa) de extrato de tomate',
      '1 1/2 colher (sopa) de farinha de trigo',
      '75 g de cogumelos picados',
      '250 ml de caldo de carne (ou cerveja stout)',
      'Um pouco de molho inglês',
      '400 g de massa de torta quebradiça pronta',
      '1 gema de ovo',
    ],
    modoPreparo:
        '1. Preaqueça o forno a 200 °C.\n'
        '2. Aqueça o óleo em uma frigideira funda e frite a carne por 4 a 5 minutos, soltando com uma colher de pau. Junte a cebola e cozinhe por 2 a 3 minutos. Acrescente o extrato de tomate e cozinhe por mais 2 a 3 minutos.\n'
        '3. Polvilhe a farinha, cozinhe por 1 minuto e junte os cogumelos, o caldo (ou a cerveja) e algumas gotas de molho inglês. Ferva, reduza o fogo, tampe e cozinhe por 20 minutos.\n'
        '4. Deixe esfriar e passe o recheio para uma forma de torta de 1 litro.\n'
        '5. Abra a massa em uma superfície enfarinhada, até ficar um pouco maior que a forma. Cubra o recheio, pressione as bordas e apare o excesso. Decore com tiras da massa coladas com a gema batida.\n'
        '6. Faça 3 ou 4 cortes na massa para sair o vapor, pincele com a gema restante e asse por 20 a 25 minutos, até dourar. Sirva em fatias.',
    imagemUrl: '${_fotos}xwutvy1511555540.jpg',
  ),
  const Receita(
    id: 'mealdb-52775',
    titulo: 'Lasanha Vegana de Lentilha',
    descricao:
        'Lasanha sem produtos de origem animal, com lentilha, legumes e molho branco de leite de soja.',
    categoria: 'Vegano',
    tempoPreparo: 60,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '1 xícara de lentilha verde ou vermelha',
      '1 cenoura',
      '1 cebola',
      '1 abobrinha pequena',
      'Coentro a gosto',
      '150 g de espinafre',
      '10 folhas de massa de lasanha',
      '35 g de manteiga vegetal',
      '4 colheres (sopa) de farinha de trigo',
      '300 ml de leite de soja',
      '1 1/2 colher (chá) de mostarda',
      '1 colher (chá) de vinagre',
    ],
    modoPreparo:
        '1. Preaqueça o forno a 180 °C.\n'
        '2. Cozinhe os legumes por 5 a 7 minutos, até amolecerem. Junte a lentilha e deixe em fervura leve, mexendo, por cerca de 20 minutos, até ela ficar macia. Se quiser, acrescente um cubo de caldo.\n'
        '3. Escalde as folhas de espinafre por alguns minutos, retire e reserve.\n'
        '4. Na mesma panela com água, cozinhe as folhas de lasanha. Escorra e reserve.\n'
        '5. Molho: derreta a manteiga, junte a farinha e vá acrescentando o leite de soja aos poucos, com a mostarda e o vinagre. Mexa até ficar liso. Monte a lasanha em camadas em um refratário.\n'
        '6. Asse no forno preaquecido por cerca de 25 minutos.',
    imagemUrl: '${_fotos}rvxxuy1468312893.jpg',
  ),
  const Receita(
    id: 'mealdb-53461',
    titulo: 'Macaroni Pie (Torta de Macarrão com Queijo)',
    descricao:
        'Macarrão assado com queijo cheddar, ovo e leite, gratinado com farinha de rosca.',
    categoria: 'Massa',
    tempoPreparo: 60,
    porcoes: 6,
    dificuldade: 'Fácil',
    ingredientes: [
      '250 g de macarrão cotovelo',
      '1 colher (sopa) de manteiga',
      '375 g de queijo cheddar',
      '1 ovo',
      '250 ml de leite',
      '2 colheres (chá) de cebola em pó',
      '1 colher (chá) de mostarda',
      '1 colher (chá) de pimenta',
      '1 colher (chá) de sal',
      '1/2 colher (chá) de pimenta caiena',
      '2 colheres (sopa) de farinha de rosca',
      '2 colheres (chá) de manteiga (para a cobertura)',
      '2 colheres (sopa) de cheddar (para a cobertura)',
    ],
    modoPreparo:
        '1. Ferva água com sal e cozinhe o macarrão sem tampar por cerca de 8 minutos, até ficar macio, sem passar do ponto.\n'
        '2. Preaqueça o forno a 180 °C.\n'
        '3. Escorra bem o macarrão, volte à panela quente e misture a manteiga. Rale o queijo e misture ao macarrão ainda morno.\n'
        '4. Bata o ovo até ficar fofo e junte o leite, a cebola em pó, o sal, a pimenta, a pimenta caiena e a mostarda. Misture tudo ao macarrão.\n'
        '5. Passe para um refratário untado e cubra com manteiga, um pouco de queijo ralado e farinha de rosca.\n'
        '6. Asse no centro do forno por 30 a 45 minutos, conforme a profundidade do refratário.',
    imagemUrl: '${_fotos}kpiu4t1782242131.jpg',
  ),
  const Receita(
    id: 'mealdb-52883',
    titulo: 'Pudim Pegajoso de Caramelo (Sticky Toffee Pudding)',
    descricao:
        'Bolo britânico macio, coberto com calda quente de caramelo e creme.',
    categoria: 'Doce',
    tempoPreparo: 60,
    porcoes: 8,
    dificuldade: 'Fácil',
    ingredientes: [
      '100 g de manteiga',
      '175 g de açúcar mascavo',
      '2 ovos grandes',
      '225 g de farinha com fermento',
      '1 colher (chá) de fermento em pó',
      '1 colher (chá) de bicarbonato de sódio',
      '3 colheres (sopa) de melaço escuro',
      '275 ml de leite',
      'Creme de leite para servir',
      'Calda: 100 g de manteiga',
      'Calda: 125 g de açúcar mascavo',
      'Calda: 1 colher (sopa) de melaço escuro',
      'Calda: 300 ml de creme de leite fresco',
      'Calda: 1 colher (chá) de extrato de baunilha',
    ],
    modoPreparo:
        '1. Preaqueça o forno a 180 °C. Unte com manteiga um refratário raso de cerca de 1,7 litro.\n'
        '2. Coloque a manteiga, o açúcar, os ovos, a farinha, o fermento, o bicarbonato e o melaço em uma tigela. Bata com a batedeira por cerca de 30 segundos. Despeje o leite aos poucos, batendo até ficar liso.\n'
        '3. Passe a massa para o refratário e asse por 35 a 40 minutos, até crescer e ficar macia ao toque.\n'
        '4. Calda: coloque todos os ingredientes em uma panela e mexa em fogo baixo até o açúcar dissolver e a manteiga derreter. Leve à fervura, mexendo por 1 minuto.\n'
        '5. Para servir, despeje metade da calda sobre o pudim ainda no refratário e sirva com creme de leite ou sorvete.',
    imagemUrl: '${_fotos}xqqqtu1511637379.jpg',
  ),
  const Receita(
    id: 'mealdb-52792',
    titulo: 'Pudim de Pão com Manteiga',
    descricao:
        'Camadas de pão com uva-passa e canela, assadas em um creme de leite e ovos.',
    categoria: 'Doce',
    tempoPreparo: 80,
    porcoes: 6,
    dificuldade: 'Fácil',
    ingredientes: [
      '25 g de manteiga',
      '8 fatias finas de pão',
      '50 g de uvas-passas',
      '2 colheres (chá) de canela',
      '350 ml de leite',
      '50 ml de creme de leite fresco',
      '2 ovos caipiras',
      '25 g de açúcar',
      'Noz-moscada ralada a gosto',
    ],
    modoPreparo:
        '1. Unte com manteiga uma forma de torta de 1 litro. Corte as cascas do pão, passe manteiga em um lado de cada fatia e corte em triângulos.\n'
        '2. Arrume uma camada de pão, com a manteiga para cima, no fundo da forma e espalhe as uvas-passas. Polvilhe um pouco de canela e repita as camadas até acabar o pão. Termine com uma camada de pão e reserve.\n'
        '3. Aqueça o leite e o creme de leite em uma panela em fogo baixo, quase até ferver, sem deixar ferver.\n'
        '4. Em uma tigela, bata os ovos com três quartos do açúcar até ficarem claros. Junte o leite quente e mexa bem. Coe o creme sobre as camadas de pão.\n'
        '5. Polvilhe noz-moscada e o restante do açúcar e deixe descansar por 30 minutos. Preaqueça o forno a 180 °C.\n'
        '6. Asse por 30 a 40 minutos, até o creme firmar e a superfície dourar.',
    imagemUrl: '${_fotos}xqwwpy1483908697.jpg',
  ),
  const Receita(
    id: 'mealdb-52860',
    titulo: 'Brownie de Chocolate com Framboesa',
    descricao:
        'Brownie molhadinho com chocolate amargo e ao leite e framboesas frescas.',
    categoria: 'Doce',
    tempoPreparo: 50,
    porcoes: 16,
    dificuldade: 'Fácil',
    ingredientes: [
      '200 g de chocolate amargo',
      '100 g de chocolate ao leite',
      '250 g de manteiga com sal',
      '400 g de açúcar mascavo claro',
      '4 ovos grandes',
      '140 g de farinha de trigo',
      '50 g de cacau em pó',
      '200 g de framboesas',
    ],
    modoPreparo:
        '1. Preaqueça o forno a 180 °C. Forre uma assadeira de 20 x 30 cm com papel manteiga.\n'
        '2. Coloque os chocolates, a manteiga e o açúcar em uma panela e derreta em fogo baixo, mexendo de vez em quando. Retire do fogo.\n'
        '3. Junte os ovos, um a um, mexendo.\n'
        '4. Peneire a farinha e o cacau sobre a mistura e misture.\n'
        '5. Acrescente metade das framboesas, passe a massa para a assadeira e espalhe o restante das framboesas por cima.\n'
        '6. Asse por 30 minutos (ou 35, se preferir mais firme). Deixe esfriar antes de cortar em quadrados. Guarde em pote fechado por até 3 dias.',
    imagemUrl: '${_fotos}yypvst1511386427.jpg',
  ),
  const Receita(
    id: 'mealdb-52854',
    titulo: 'Panquecas',
    descricao:
        'Panquecas finas e douradas, para servir com açúcar, limão ou frutas vermelhas.',
    categoria: 'Doce',
    tempoPreparo: 40,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '100 g de farinha de trigo',
      '2 ovos grandes',
      '300 ml de leite',
      '1 colher (sopa) de óleo de girassol',
      'Uma pitada de sal',
      'Açúcar para servir',
      'Framboesas para servir',
      'Mirtilos para servir',
    ],
    modoPreparo:
        '1. Coloque a farinha, os ovos, o leite, 1 colher (sopa) de óleo e uma pitada de sal em uma tigela ou jarra grande e bata até a massa ficar lisa. Se der, deixe descansar por 30 minutos.\n'
        '2. Aqueça uma frigideira média em fogo médio e passe um papel toalha com óleo.\n'
        '3. Quando estiver quente, cozinhe cada panqueca por 1 minuto de cada lado, até dourar. Vá mantendo as prontas aquecidas em forno baixo.\n'
        '4. Sirva com gomos de limão e açúcar, frutas vermelhas ou o recheio que preferir.\n'
        'Dica: depois de frias, as panquecas podem ser intercaladas com papel manteiga, embrulhadas em filme plástico e congeladas por até 2 meses.',
    imagemUrl: '${_fotos}rwuyqx1511383174.jpg',
  ),
];
