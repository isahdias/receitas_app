import '../domain/receita.dart';

/// Receitas importadas da TheMealDB (https://www.themealdb.com), traduzidas
/// para o portugues. As fotos continuam hospedadas na TheMealDB (imagemUrl).
/// Obs.: tempoPreparo, porcoes e dificuldade sao estimativas, pois a API
/// nao fornece esses dados.
final List<Receita> receitasTheMealDB = [
  const Receita(
    id: 'mealdb-53120',
    titulo: 'Æbleskiver (Bolinhos Escandinavos)',
    descricao:
        'Bolinhos fofos em formato de esfera, servidos com açúcar de confeiteiro e geleia de framboesa.',
    categoria: 'Doce',
    tempoPreparo: 60,
    porcoes: 6,
    dificuldade: 'Médio',
    ingredientes: [
      '2 xícaras de farinha de trigo',
      '1 colher (chá) de sal',
      '2 colheres (sopa) de açúcar',
      '1 colher (chá) de fermento em pó',
      '1/2 colher (chá) de cardamomo',
      '3 ovos',
      '2 xícaras de leitelho (ou leite com algumas gotas de limão)',
      'Manteiga para untar',
      'Açúcar de confeiteiro para polvilhar',
      '1 colher de geleia de framboesa',
    ],
    modoPreparo:
        '1. Misture em uma tigela grande a farinha, o sal, o açúcar, o fermento e o cardamomo.\n'
        '2. Separe as claras das gemas. Junte as gemas à mistura de farinha e acrescente o leitelho. Bata até ficar uma massa lisa.\n'
        '3. Cubra e leve à geladeira por cerca de 30 minutos.\n'
        '4. Bata as claras em neve firme com uma batedeira e incorpore delicadamente à massa.\n'
        '5. Aqueça a frigideira própria para æbleskiver em fogo médio, pincele com manteiga e preencha cada cavidade quase até a borda com a massa.\n'
        '6. Quando as bordas firmarem, use um palito de madeira ou espeto para virar o bolinho um quarto de volta. Continue virando até formar esferas douradas.\n'
        '7. Retire da frigideira e sirva com açúcar de confeiteiro e geleia.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/wkhg581762773124.jpg',
  ),
  const Receita(
    id: 'mealdb-53111',
    titulo: 'Biscoitos Anzac',
    descricao:
        'Biscoitos australianos crocantes de aveia e coco, com sabor de melado.',
    categoria: 'Doce',
    tempoPreparo: 30,
    porcoes: 12,
    dificuldade: 'Fácil',
    ingredientes: [
      '85 g de aveia em flocos',
      '85 g de coco ralado seco',
      '100 g de farinha de trigo',
      '100 g de açúcar refinado',
      '100 g de manteiga',
      '1 colher (sopa) de melado dourado (golden syrup, pode usar mel)',
      '1 colher (chá) de bicarbonato de sódio',
    ],
    modoPreparo:
        '1. Preaqueça o forno a 180 °C.\n'
        '2. Misture a aveia, o coco, a farinha e o açúcar em uma tigela.\n'
        '3. Derreta a manteiga em uma panela pequena e misture o melado. Dissolva o bicarbonato em 2 colheres (sopa) de água fervente e junte à mistura de manteiga.\n'
        '4. Faça um buraco no meio dos ingredientes secos, despeje a mistura de manteiga e mexa delicadamente até incorporar.\n'
        '5. Coloque colheradas da massa em assadeiras untadas, deixando cerca de 2,5 cm de espaço entre elas.\n'
        '6. Asse em levas por 8 a 10 minutos, até dourar. Transfira para uma grade para esfriar.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/q47rkb1762324620.jpg',
  ),
  const Receita(
    id: 'mealdb-53380',
    titulo: 'Bolo de Maçã Holandês',
    descricao:
        'Bolo fofo de maçã com canela e baunilha, coberto com fatias da fruta.',
    categoria: 'Doce',
    tempoPreparo: 70,
    porcoes: 10,
    dificuldade: 'Fácil',
    ingredientes: [
      '4 ovos',
      '200 g de açúcar',
      '200 g de farinha com fermento',
      '200 g de manteiga derretida',
      '1 colher (chá) de extrato de baunilha',
      '1 colher (chá) de canela em pó',
      '3 maçãs',
      '1 pitada de sal',
      'Açúcar de confeiteiro para polvilhar',
    ],
    modoPreparo:
        '1. Preaqueça o forno a 180 °C. Unte uma forma e forre com papel manteiga.\n'
        '2. Bata os ovos com o açúcar até triplicarem de volume e ficarem fofos.\n'
        '3. Peneire a farinha e misture aos ovos delicadamente, preservando o ar da massa.\n'
        '4. Acrescente a manteiga derretida (já levemente fria) e misture. Junte a canela, o sal e a baunilha.\n'
        '5. Corte parte das maçãs em cubos e misture à massa. Reserve o restante em fatias.\n'
        '6. Despeje a massa na forma, alise o topo e distribua as fatias de maçã por cima, pressionando de leve.\n'
        '7. Asse por 45 a 50 minutos, até que um palito saia limpo do centro.\n'
        '8. Deixe esfriar alguns minutos na forma, desenforme e esfrie totalmente. Polvilhe com açúcar de confeiteiro.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/c0gmo31766594751.jpg',
  ),
  const Receita(
    id: 'mealdb-53085',
    titulo: 'Hambúrguer de Frango com Halloumi',
    descricao:
        'Hambúrguer rápido de frango com molho de pimenta, queijo halloumi dourado e salada de repolho.',
    categoria: 'Frango',
    tempoPreparo: 25,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '2 peitos de frango',
      '1 colher (sopa) de óleo',
      '4 colheres (sopa) de molho de pimenta',
      'Suco de 1/2 limão-siciliano',
      '2 pães de hambúrguer',
      '250 g de queijo halloumi',
      '1/4 de repolho',
      '2 colheres (sopa) de maionese',
      '4 colheres (sopa) de creme azedo',
      '4 folhas de alface',
      '2 pimentões vermelhos',
      'Homus e rúcula para montar',
    ],
    modoPreparo:
        '1. Coloque os peitos de frango entre dois pedaços de papel manteiga e bata com um rolo de massa até ficarem com cerca de 1 cm de espessura. Corte cada peito ao meio.\n'
        '2. Na frigideira: aqueça duas frigideiras em fogo médio-alto, uma delas com óleo. Frite o frango por 3 a 4 minutos de cada lado, até cozinhar por dentro. Tempere, reduza o fogo, regue com o molho de pimenta e metade do suco de limão e cozinhe mais 1 a 2 minutos, até o molho reduzir. Reserve.\n'
        '3. Na air fryer: preaqueça a 180 °C por 4 minutos. Cozinhe o frango por 12 minutos, regue com o molho de pimenta e metade do limão e cozinhe mais 1 a 2 minutos. Mantenha aquecido.\n'
        '4. Enquanto isso, toste os pães em frigideira seca por 30 segundos (ou 1 a 2 minutos na air fryer). Na air fryer a 200 °C, cozinhe o halloumi por 10 minutos, virando na metade, até dourar.\n'
        '5. Misture o repolho com a maionese e o restante do suco de limão.\n'
        '6. Espalhe o homus nos pães e monte com rúcula, frango, halloumi e pimentão. Regue com mais molho de pimenta, coloque a salada de repolho, tempere com pimenta-do-reino e tampe com o pão.\n'
        '7. Sirva com o restante do repolho ou com uma salada verde.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/vdwloy1713225718.jpg',
  ),
  const Receita(
    id: 'mealdb-53453',
    titulo: 'Curry Bengali de Frango com Batata',
    descricao:
        'Curry aromático de frango com batatas, temperado com garam masala, cúrcuma e cominho.',
    categoria: 'Frango',
    tempoPreparo: 60,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '2 colheres (sopa) de azeite',
      '2 cebolas picadas',
      '1 colher (sopa) de pasta de gengibre e alho',
      '2 tomates picados',
      '1 colher (chá) de pimenta caiena',
      '1 colher (chá) de curry em pó',
      '1 colher (chá) de garam masala',
      '1 colher (chá) de cúrcuma em pó',
      '1 colher (chá) de cominho em pó',
      '4 peitos de frango',
      '2 batatas vermelhas grandes',
      '1/2 xícara de coentro fresco',
    ],
    modoPreparo:
        '1. Aqueça o azeite em uma frigideira grande em fogo médio-alto. Refogue as cebolas até ficarem translúcidas, cerca de 5 minutos.\n'
        '2. Junte a pasta de gengibre e alho e cozinhe por mais 5 minutos.\n'
        '3. Reduza o fogo para médio, acrescente os tomates e cozinhe até desmancharem, de 5 a 10 minutos.\n'
        '4. Tempere com a pimenta caiena, o curry, o garam masala, a cúrcuma e o cominho. Mexa por mais 5 minutos.\n'
        '5. Adicione o frango e as batatas e cozinhe em fogo baixo, mexendo de vez em quando, até as batatas ficarem macias e o frango cozido por dentro, cerca de 20 minutos.\n'
        '6. Polvilhe o coentro e deixe cozinhar mais 10 minutos. Sirva quente.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/9ya6o71780262651.jpg',
  ),
  const Receita(
    id: 'mealdb-53281',
    titulo: 'Kefta Argelina (Almôndegas)',
    descricao:
        'Almôndegas alongadas de carne com molho de tomate temperado, típicas da Argélia.',
    categoria: 'Carne',
    tempoPreparo: 40,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '450 g de carne moída',
      '4 dentes de alho amassados',
      '1/2 xícara de cebola picada',
      'Sal e pimenta a gosto',
      '3 tomates italianos',
      '1 colher (chá) de salsa seca',
      '1/2 xícara de água',
      'Ras el hanout (mistura de especiarias) a gosto',
    ],
    modoPreparo:
        '1. Misture a carne moída com metade do alho e 1 colher (sopa) de cebola picada. Misture com as mãos até incorporar bem.\n'
        '2. Modele bolinhas alongadas de cerca de 4 cm, formando de 12 a 14 almôndegas.\n'
        '3. Aqueça uma frigideira grande em fogo médio-alto e doure as almôndegas em levas, até ficarem crocantes dos dois lados e sem rosa por dentro, cerca de 10 minutos. Reserve em um prato.\n'
        '4. Reduza o fogo para médio e refogue o restante da cebola na gordura que ficou na frigideira, com sal e pimenta, até ficar translúcida, cerca de 5 minutos.\n'
        '5. Acrescente o restante do alho e cozinhe por 30 segundos. Junte os tomates, a salsa e o ras el hanout.\n'
        '6. Adicione a água e cozinhe até os tomates ficarem macios, cerca de 5 minutos.\n'
        '7. Despeje o molho sobre as almôndegas e sirva.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/8rfd4q1764112993.jpg',
  ),
  const Receita(
    id: 'mealdb-53099',
    titulo: 'Hambúrguer Australiano',
    descricao:
        'Hambúrguer de carne no pão naan, com beterraba, rúcula e creme azedo com cebolinha.',
    categoria: 'Carne',
    tempoPreparo: 30,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '500 g de carne moída magra',
      '100 g de beterraba cozida',
      '2 pães naan pequenos',
      '50 g de rúcula',
      '4 colheres (sopa) de creme azedo com cebolinha',
      'Sal e pimenta-do-reino moída na hora',
    ],
    modoPreparo:
        '1. Coloque a carne em uma tigela, tempere com 1 colher (chá) de sal e pimenta-do-reino. Misture com as mãos molhadas.\n'
        '2. Divida em quatro partes e modele os hambúrgueres.\n'
        '3. Fatie a beterraba e abra os pães naan ao meio.\n'
        '4. Aqueça uma chapa, grelha ou churrasqueira. Toste os pães dos dois lados e reserve. Grelhe os hambúrgueres por 2 a 3 minutos de cada lado.\n'
        '5. Monte: meio pão naan em cada prato, uma porção de rúcula, o hambúrguer, fatias de beterraba e uma colherada de creme azedo. Tempere com sal e pimenta e sirva na hora com salada verde e batatas fritas.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/44bzep1761848278.jpg',
  ),
  const Receita(
    id: 'mealdb-52839',
    titulo: 'Linguine com Camarão e Pimenta',
    descricao:
        'Massa com camarões, tomate-cereja e manjericão, servida com salada e molho de limão.',
    categoria: 'Massa',
    tempoPreparo: 25,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '280 g de linguine',
      '200 g de ervilha-torta',
      '2 colheres (sopa) de azeite',
      '2 dentes de alho picados',
      '1 pimenta vermelha grande',
      '24 camarões grandes descascados',
      '12 tomates-cereja',
      'Um punhado de folhas de manjericão',
      'Folhas de alface',
      'Pão para servir',
      '2 colheres (sopa) de fromage frais (ou iogurte grego)',
      'Raspas de 2 limões',
      '2 colheres (chá) de açúcar refinado',
    ],
    modoPreparo:
        '1. Misture os ingredientes do molho (fromage frais, raspas de limão e açúcar) em uma tigela pequena, tempere com sal e pimenta e reserve.\n'
        '2. Cozinhe a massa conforme a embalagem, acrescentando a ervilha-torta no último minuto.\n'
        '3. Enquanto isso, aqueça o azeite em uma wok ou frigideira grande e refogue o alho e a pimenta por cerca de 30 segundos, sem deixar o alho dourar.\n'
        '4. Junte os camarões e cozinhe em fogo alto, mexendo, por cerca de 3 minutos, até ficarem rosados.\n'
        '5. Acrescente os tomates e cozinhe por mais 3 minutos, até começarem a amolecer.\n'
        '6. Escorra a massa com a ervilha e misture aos camarões. Rasgue o manjericão por cima, mexa e ajuste o sal e a pimenta.\n'
        '7. Sirva com folhas de alface regadas com o molho de limão e pão quente.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/usywpp1511189717.jpg',
  ),
  const Receita(
    id: 'mealdb-52835',
    titulo: 'Fettuccine Alfredo',
    descricao:
        'Massa cremosa com queijo parmesão, manteiga e uma pitada de noz-moscada.',
    categoria: 'Massa',
    tempoPreparo: 20,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '227 g de creme de leite espesso (clotted cream, ou creme de leite fresco)',
      '25 g de manteiga',
      '1 colher (chá) de amido de milho',
      '100 g de queijo parmesão ralado',
      'Noz-moscada ralada',
      '250 g de fettuccine',
      'Salsinha picada',
    ],
    modoPreparo:
        '1. Em uma panela média, mexa o creme de leite, a manteiga e o amido de milho em fogo baixo até levantar fervura leve. Desligue e mantenha aquecido.\n'
        '2. Misture o queijo com a noz-moscada e um pouco de pimenta-do-reino em uma tigela (não coloque sal ainda).\n'
        '3. Cozinhe o fettuccine em água com 2 colheres (chá) de sal, seguindo a embalagem (cerca de 3 a 4 minutos).\n'
        '4. Reserve um pouco da água do cozimento e escorra a massa sem secar demais.\n'
        '5. Coloque a massa na panela com o creme, polvilhe o queijo e misture delicadamente em fogo baixo.\n'
        '6. Acrescente 3 colheres (sopa) da água do cozimento e mexa até o molho ficar brilhante e a água ser absorvida.\n'
        '7. Ajuste o tempero, passe para tigelas aquecidas, polvilhe salsinha e sirva imediatamente.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg',
  ),
  const Receita(
    id: 'mealdb-53483',
    titulo: 'Acarajé Recheado com Camarão',
    descricao:
        'Bolinhos fritos de feijão-fradinho recheados com camarão temperado.',
    categoria: 'Frutos do mar',
    tempoPreparo: 60,
    porcoes: 4,
    dificuldade: 'Difícil',
    ingredientes: [
      '800 g de feijão-fradinho cozido',
      '1 dente de alho',
      '1 pimenta verde',
      '1 cebola roxa pequena picada bem fina',
      '2 colheres (sopa) de farinha de trigo',
      '1 colher (chá) de sal',
      '1 colher (chá) de pimenta em pó',
      '1 colher (chá) de fermento em pó',
      'Óleo vegetal para fritar',
      '1 cebola roxa fatiada (recheio)',
      '1 colher (sopa) de gengibre picado',
      '2 dentes de alho',
      '1 pimenta vermelha picada',
      '150 g de camarões crus',
      '1 colher (sopa) de óleo vegetal',
      '2 tomates italianos',
      '1 colher (sopa) de coentro picado',
      'Suco de 1 limão',
    ],
    modoPreparo:
        '1. Recheio: bata no processador a cebola, o gengibre, o alho, a pimenta e um pouco de sal até formar um purê liso. Aqueça o óleo em uma frigideira e refogue o purê por 5 minutos. Junte os camarões, os tomates e o coentro. Esprema o limão e acerte o sal. Cozinhe por 3 minutos, até os camarões ficarem cozidos. Reserve.\n'
        '2. Massa: escorra e enxágue o feijão-fradinho. Bata no processador com o alho e a pimenta até ficar liso. Passe para uma tigela e misture a cebola, a farinha, o sal, a pimenta em pó e o fermento. Modele 16 bolinhas.\n'
        '3. Aqueça o forno a 190 °C. Aqueça cerca de 8 cm de óleo em uma wok ou panela funda. Quando um pedacinho de pão chiar ao entrar, frite 4 a 5 bolinhas por vez até dourarem e ficarem crocantes, de 4 a 5 minutos. Escorra em papel toalha. Mantenha-as aquecidas no forno enquanto frita o restante.\n'
        '4. Abra os bolinhos ao meio, recheie com o camarão e sirva com molho de pimenta.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/dxs5t71782678369.jpg',
  ),
  const Receita(
    id: 'mealdb-53481',
    titulo: 'Moqueca Baiana de Camarão',
    descricao:
        'Ensopado de camarão com leite de coco, tomate e pimentão, servido com arroz.',
    categoria: 'Frutos do mar',
    tempoPreparo: 45,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '450 g de camarões grandes crus',
      '75 ml de suco de limão',
      '3 dentes de alho picados',
      '3 colheres (sopa) de óleo de coco',
      '4 cebolinhas picadas',
      '1 cebola',
      '1 pimentão vermelho picado',
      '1 colher (chá) de pimenta em flocos',
      '2 colheres (chá) de páprica',
      '3 tomates italianos picados',
      '400 ml de leite de coco',
      '2 colheres (sopa) de coentro picado',
      'Arroz para servir',
    ],
    modoPreparo:
        '1. Coloque os camarões em uma tigela com 2 colheres (sopa) do suco de limão, 1 colher (chá) de sal e 1 colher (sopa) do alho. Leve à geladeira por 1 hora.\n'
        '2. Aqueça o óleo de coco em uma panela grande. Refogue a cebolinha e a cebola por 5 minutos. Junte o pimentão, a pimenta em flocos, a páprica e o restante do alho.\n'
        '3. Acrescente os tomates, o leite de coco e um pouco de sal. Deixe ferver e reduzir por 10 minutos.\n'
        '4. Adicione os camarões com todo o tempero da marinada e o restante do suco de limão. Cozinhe em fogo baixo até os camarões ficarem brancos, cerca de 3 minutos.\n'
        '5. Sirva com o coentro fresco e arroz.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/e2kcut1782591669.jpg',
  ),
  const Receita(
    id: 'mealdb-53158',
    titulo: 'Patatas Bravas na Air Fryer',
    descricao:
        'Batatas crocantes feitas na air fryer com molho de tomate defumado e picante, clássico da Espanha.',
    categoria: 'Vegetariano',
    tempoPreparo: 60,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '900 g de batatas',
      '3 colheres (sopa) de azeite',
      '1 cebola picada',
      '1 dente de alho amassado',
      '1 colher (sopa) de páprica',
      '1 colher (sopa) de extrato de tomate',
      '225 g de tomate em lata',
      'Folhas de manjericão para servir',
    ],
    modoPreparo:
        '1. Deixe as batatas de molho em água recém-fervida por 30 minutos. Escorra e deixe secar ao ar por 5 minutos.\n'
        '2. Aqueça a air fryer a 200 °C. Em uma tigela, misture as batatas com 1 colher (sopa) de azeite, 1/2 colher (chá) de sal e pimenta-do-reino. Coloque na cesta e cozinhe de 20 a 30 minutos, até ficarem crocantes e douradas.\n'
        '3. Enquanto isso, aqueça o restante do azeite em uma panela pequena em fogo médio-baixo e refogue a cebola por 8 a 10 minutos, sem deixar dourar. Junte o alho e cozinhe por 1 minuto. Acrescente a páprica e cozinhe por 30 segundos.\n'
        '4. Misture o extrato de tomate, cozinhe por 1 minuto e adicione os tomates picados. Cozinhe de 5 a 10 minutos em fogo médio, até engrossar levemente.\n'
        '5. Coloque as batatas em um prato, despeje o molho por cima, finalize com manjericão e sirva.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/3m8yae1763257951.jpg',
  ),
  const Receita(
    id: 'mealdb-53278',
    titulo: 'Berinjela Grelhada com Homus',
    descricao:
        'Fatias de berinjela grelhadas com homus e farofa de pão, servidas com salada de nozes e tomate.',
    categoria: 'Vegetariano',
    tempoPreparo: 35,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '2 berinjelas',
      '2 colheres (sopa) de óleo vegetal',
      '3 fatias finas de pão',
      '300 g de homus',
      '100 g de nozes',
      '40 g de salsinha',
      '200 g de tomates-cereja',
      'Suco de 1/2 limão-siciliano',
      'Um fio de azeite extravirgem',
    ],
    modoPreparo:
        '1. Fatie as berinjelas e disponha em uma única camada em uma assadeira grande. Pincele de leve com óleo e tempere bem. Grelhe por 15 minutos, virando duas vezes e pincelando com óleo, até ficarem macias.\n'
        '2. Bata o pão no processador até virar farelo. Acrescente 2 colheres (chá) de óleo e bata rapidamente de novo.\n'
        '3. Espalhe um pouco de homus sobre cada fatia de berinjela. Espalhe o farelo de pão em um prato grande e pressione o lado com homus no farelo, para empanar.\n'
        '4. Grelhe novamente, com o lado empanado para cima, por cerca de 3 minutos, até dourar.\n'
        '5. Misture as nozes, a salsinha e os tomates-cereja em uma tigela, tempere, acrescente o suco de limão e o azeite e misture de novo.\n'
        '6. Sirva as berinjelas com a salada, mais uma colherada de homus e pão sírio.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/zub3s91764110535.jpg',
  ),
  const Receita(
    id: 'mealdb-53430',
    titulo: 'Café da Manhã de Antígua (Chop Up)',
    descricao:
        'Purê rústico de legumes com abóbora, berinjela e folhas verdes, prato típico do Caribe.',
    categoria: 'Café da manhã',
    tempoPreparo: 40,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '4 berinjelas pequenas',
      '225 g de callaloo (ou espinafre)',
      '450 g de abóbora',
      '3 dentes de alho picados',
      '1 cebola picada',
      '60 g de manteiga',
      '1/2 colher (chá) de sal',
      '1/4 de colher (chá) de pimenta-do-reino',
    ],
    modoPreparo:
        '1. Descasque e corte a berinjela e a abóbora em pedaços médios.\n'
        '2. Derreta a manteiga em uma panela média em fogo médio-alto e refogue a cebola e o alho por 2 minutos, até amolecerem sem dourar.\n'
        '3. Acrescente a abóbora e a berinjela e refogue por mais 2 a 3 minutos.\n'
        '4. Adicione água apenas para cobrir os legumes. Deixe ferver, reduza o fogo e cozinhe até ficarem macios.\n'
        '5. Junte o espinafre picado, mexa e cozinhe por mais 3 minutos.\n'
        '6. Escorra os legumes em uma peneira. Volte para a panela e amasse vigorosamente com um amassador de batata ou um fouet grosso.\n'
        '7. Tempere com sal e pimenta e ajuste o tempero a gosto.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/jvjnoh1780086318.jpg',
  ),
  const Receita(
    id: 'mealdb-53169',
    titulo: 'Ajo Blanco (Sopa Fria de Amêndoas)',
    descricao:
        'Sopa fria espanhola de amêndoas, pão e alho, servida com um fio de azeite.',
    categoria: 'Entrada',
    tempoPreparo: 70,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '150 g de pão branco',
      '200 g de amêndoas',
      '50 ml de azeite extravirgem',
      '1 dente de alho',
      '1 1/2 colher (sopa) de vinagre de vinho tinto',
      'Sal e pimenta-do-reino a gosto',
    ],
    modoPreparo:
        '1. Coloque o pão em uma tigela e cubra com 350 ml de água. Deixe de molho por 10 minutos.\n'
        '2. Bata todos os ingredientes no liquidificador com mais 350 ml de água e 1 colher (chá) de sal.\n'
        '3. Leve à geladeira por cerca de 1 hora, até ficar bem gelada.\n'
        '4. Sirva com um fio de azeite e um pouco de pimenta-do-reino.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/5jdtie1763289302.jpg',
  ),
  const Receita(
    id: 'mealdb-53373',
    titulo: 'Rolinhos Primavera na Air Fryer',
    descricao:
        'Rolinhos crocantes recheados com carne de porco, repolho e cenoura, feitos na air fryer.',
    categoria: 'Acompanhamento',
    tempoPreparo: 45,
    porcoes: 6,
    dificuldade: 'Médio',
    ingredientes: [
      '1 colher (sopa) de azeite',
      '450 g de carne de porco moída (ou frango)',
      '1 dente de alho amassado',
      '1 colher (sopa) de gengibre ralado',
      '1 cenoura média',
      '3 cebolinhas picadas',
      '3 xícaras de repolho picado',
      '1 colher (sopa) de molho shoyu',
      '1 colher (sopa) de vinagre de arroz',
      '12 massas de rolinho primavera',
      'Óleo para pincelar',
      'Molho agridoce, molho de ameixa e shoyu para servir',
    ],
    modoPreparo:
        '1. Recheio: em uma frigideira grande em fogo médio, aqueça o azeite e cozinhe a carne moída, desmanchando com uma espátula, por 6 a 8 minutos.\n'
        '2. Junte o alho, o gengibre, a cenoura, a cebolinha e o repolho. Cozinhe por mais 3 a 4 minutos, mexendo, até o repolho murchar. Tempere com o shoyu e o vinagre de arroz e retire do fogo para esfriar. (O recheio pode ser feito com antecedência.)\n'
        '3. Montagem: coloque uma massa sobre uma superfície seca, com uma ponta voltada para você (como um losango). Ponha cerca de 1/4 de xícara de recheio no centro. Molhe os dedos na água e passe nas bordas da massa. Dobre as laterais sobre o recheio e enrole para a frente, formando um cilindro firme. Repita com o restante.\n'
        '4. Air fryer: coloque os rolinhos na cesta sem encostar um no outro, para o ar circular. Pincele ou borrife óleo. Cozinhe a 180 °C por 6 a 7 minutos, vire, pincele de novo e cozinhe mais 4 a 5 minutos, até dourar e ficar crocante.\n'
        '5. Sirva imediatamente com os molhos.\n'
        '6. Sem air fryer: frite em óleo a 180 °C (cerca de 1 cm de altura na frigideira) por 3 a 4 minutos de cada lado, até dourar, e escorra em papel toalha.',
    imagemUrl:
        'https://www.themealdb.com/images/media/meals/grhn401765687086.jpg',
  ),
];
