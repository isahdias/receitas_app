import '../domain/receita.dart';

/// Lote 3: receitas importadas da TheMealDB (https://www.themealdb.com),
/// traduzidas para o portugues. Foco em saladas, pratos leves e sobremesas
/// geladas (bons para dias quentes), alem de alguns pratos classicos.
/// As fotos continuam hospedadas na TheMealDB (imagemUrl).
/// Obs.: tempoPreparo, porcoes e dificuldade sao estimativas, pois a API
/// nao fornece esses dados.
const String _fotos = 'https://www.themealdb.com/images/media/meals/';

final List<Receita> receitasTheMealDB3 = [
  const Receita(
    id: 'mealdb-52960',
    titulo: 'Salada de Salmão com Abacate',
    descricao:
        'Salada de espinafre, abacate e pepino com salmão grelhado e molho de limão e mel.',
    categoria: 'Salada',
    tempoPreparo: 20,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '400 g de salmão',
      '3 abacates',
      '1 pepino',
      '400 g de espinafre',
      '4 colheres (sopa) de hortelã',
      'Raspas e suco de 1 limão',
      '2 colheres (chá) de mel',
      '3 colheres (sopa) de azeite',
    ],
    modoPreparo:
        '1. Tempere o salmão e passe um pouco de óleo. Misture os ingredientes do molho (limão, mel, hortelã e azeite).\n'
        '2. Corte os abacates ao meio, retire o caroço, descasque e fatie. Corte o pepino em quatro no sentido do comprimento e depois em fatias.\n'
        '3. Divida a salada, o abacate e o pepino em quatro pratos e regue com metade do molho.\n'
        '4. Aqueça uma frigideira antiaderente e frite o salmão por 3 a 4 minutos de cada lado, até ficar crocante por fora e macio por dentro.\n'
        '5. Coloque um filé de salmão sobre cada salada, regue com o restante do molho e sirva morno.',
    imagemUrl: '${_fotos}1549542994.jpg',
  ),
  const Receita(
    id: 'mealdb-53011',
    titulo: 'Salada Grega com Quinoa e Frango',
    descricao:
        'Quinoa com tomate, azeitona, queijo feta e hortelã, coberta com frango grelhado e manteiga picante.',
    categoria: 'Salada',
    tempoPreparo: 35,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '225 g de quinoa',
      '25 g de manteiga',
      '1 pimenta vermelha picada',
      '1 dente de alho picado bem fino',
      '400 g de peito de frango',
      '2 colheres (sopa) de azeite',
      '200 g de tomates-cereja',
      'Um punhado de azeitonas pretas',
      '1 cebola roxa picada',
      '100 g de queijo feta',
      'Hortelã picada',
      'Suco de 1/2 limão-siciliano',
    ],
    modoPreparo:
        '1. Cozinhe a quinoa conforme a embalagem, lave em água fria e escorra bem.\n'
        '2. Misture a manteiga, a pimenta e o alho até formar uma pasta.\n'
        '3. Misture os filés de frango com 2 colheres (chá) do azeite e tempere. Grelhe em uma chapa quente por 3 a 4 minutos de cada lado, até cozinhar por dentro. Passe para um prato, coloque pedacinhos da manteiga picante por cima e deixe derreter.\n'
        '4. Em uma tigela, misture os tomates, as azeitonas, a cebola, o feta e a hortelã. Junte a quinoa.\n'
        '5. Acrescente o restante do azeite, o suco e as raspas do limão e tempere bem.\n'
        '6. Sirva com o frango por cima, regado com o caldinho de manteiga.',
    imagemUrl: '${_fotos}k29viq1585565980.jpg',
  ),
  const Receita(
    id: 'mealdb-53491',
    titulo: 'Salada Shopska',
    descricao:
        'Salada búlgara de tomate, pepino, pimentão e cebola, coberta com queijo feta.',
    categoria: 'Salada',
    tempoPreparo: 10,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '1 pepino fatiado',
      '3 xícaras de tomates picados',
      '1/4 de cebola roxa',
      '1 pimentão verde picado',
      '1 colher (chá) de sal',
      '1/4 de xícara de azeite',
      '1/3 de xícara de queijo feta',
      '2 colheres (sopa) de salsinha picada',
    ],
    modoPreparo:
        '1. Misture os legumes em uma tigela e polvilhe o sal por cima. Deixe descansar por 5 minutos.\n'
        '2. Regue com o azeite.\n'
        '3. Cubra com o feta e a salsinha e sirva.',
    imagemUrl: '${_fotos}bqx8mc1782684286.jpg',
  ),
  const Receita(
    id: 'mealdb-53378',
    titulo: 'Salada de Pepino com Gergelim',
    descricao:
        'Pepino temperado com óleo de gergelim, vinagre de arroz e pimenta em flocos.',
    categoria: 'Salada',
    tempoPreparo: 10,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '2 pepinos médios',
      '1/2 colher (chá) de sal',
      '2 colheres (chá) de óleo de gergelim',
      '2 colheres (sopa) de vinagre de arroz',
      '6 folhas de manjericão',
      '1/2 colher (chá) de pimenta em flocos',
      '2 colheres (chá) de gergelim',
    ],
    modoPreparo:
        '1. Descasque os pepinos e corte em quatro no sentido do comprimento. Se as sementes estiverem amargas, raspe e descarte. Corte novamente, de través, em pedaços de cerca de 1 cm.\n'
        '2. Coloque o pepino em uma tigela e polvilhe com o sal.\n'
        '3. Misture o óleo de gergelim, o vinagre de arroz temperado, o manjericão e a pimenta em flocos.\n'
        '4. Se quiser, finalize com gergelim tostado.',
    imagemUrl: '${_fotos}93iok31766436070.jpg',
  ),
  const Receita(
    id: 'mealdb-53239',
    titulo: 'Salada de Camarão com Molho de Amendoim',
    descricao:
        'Macarrão de arroz frio com pepino, broto de feijão, camarão e molho cremoso de amendoim e pimenta.',
    categoria: 'Salada',
    tempoPreparo: 20,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '140 g de macarrão de arroz',
      '3 colheres (sopa) de pasta de amendoim',
      '4 colheres (sopa) de leite de coco',
      '3 colheres (sopa) de molho agridoce de pimenta',
      '3 cebolinhas fatiadas finas',
      '1 pepino fatiado',
      '300 g de broto de feijão',
      '200 g de camarões cozidos',
    ],
    modoPreparo:
        '1. Cozinhe o macarrão conforme a embalagem, lave em água fria e escorra bem.\n'
        '2. Em uma panela pequena, derreta juntos a pasta de amendoim, o leite de coco, o molho de pimenta e metade da cebolinha, com 1 a 2 colheres (sopa) de água, até o molho ficar bom para regar.\n'
        '3. Misture o macarrão, o pepino e o broto de feijão em um prato.\n'
        '4. Cubra com os camarões, regue com o molho de amendoim e espalhe o restante da cebolinha.',
    imagemUrl: '${_fotos}4xcfai1763765676.jpg',
  ),
  const Receita(
    id: 'mealdb-53232',
    titulo: 'Salada Vietnamita de Frango',
    descricao:
        'Salada fresca com macarrão de arroz, frango desfiado, legumes, hortelã e molho de limão.',
    categoria: 'Salada',
    tempoPreparo: 25,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '140 g de macarrão de arroz',
      '1 cenoura',
      '1/2 pepino',
      '2 peitos de frango cozidos e desfiados',
      '50 g de rabanete',
      '1/2 cebola roxa',
      'Um maço de hortelã',
      '25 g de amendoim',
      '1 pimenta vermelha picada',
      'Raspas e suco de 1 limão',
      '1 1/2 colher (sopa) de molho de peixe',
      '1 1/2 colher (sopa) de molho shoyu',
      '1 1/2 colher (sopa) de óleo de gergelim',
    ],
    modoPreparo:
        '1. Faça o molho: bata todos os ingredientes (limão, molho de peixe, shoyu, óleo de gergelim e pimenta) em uma tigela grande. Cozinhe o macarrão conforme a embalagem, escorra e junte ao molho.\n'
        '2. Faça tiras compridas de cenoura com um descascador de legumes. Faça o mesmo com o pepino, até chegar nas sementes (descarte-as). Junte a cenoura e o pepino ao macarrão, com o frango desfiado, o rabanete, a cebola roxa e a hortelã.\n'
        '3. Misture bem para cobrir tudo com o molho, espalhe o amendoim e sirva.',
    imagemUrl: '${_fotos}pk8wtn1763758591.jpg',
  ),
  const Receita(
    id: 'mealdb-53573',
    titulo: 'Salada de Mamão Verde',
    descricao:
        'Salada crocante de mamão verde ralado com cenoura, tomate-cereja, cebolinha e amendoim.',
    categoria: 'Salada',
    tempoPreparo: 15,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '1/2 mamão verde',
      '1 colher (sopa) de suco de limão',
      'Sal a gosto',
      '1 cenoura',
      '1 xícara de tomates-cereja',
      '1/2 xícara de cebolinha',
      '1/4 de xícara de amendoim torrado',
      '1 colher (sopa) de alho',
    ],
    modoPreparo:
        '1. Corte, descasque e rale o mamão em tiras finas, com um ralador de juliana. Se não tiver, use um ralador comum.\n'
        '2. Descasque e rale as cenouras. Pique bem pequena a cebolinha. Corte os tomates ao meio.\n'
        '3. Misture todos os ingredientes em uma tigela, tempere com o suco de limão e o sal e finalize com o amendoim por cima.',
    imagemUrl: '${_fotos}7ytdtz1784833420.jpg',
  ),
  const Receita(
    id: 'mealdb-53275',
    titulo: 'Salada de Batata-Doce Assada',
    descricao:
        'Batata-doce assada e dourada, temperada com vinagre de xerez, mel e cebolinha.',
    categoria: 'Salada',
    tempoPreparo: 45,
    porcoes: 6,
    dificuldade: 'Fácil',
    ingredientes: [
      '1,2 kg de batata-doce',
      '1 colher (sopa) de azeite',
      '2 echalotas (ou cebolas roxas pequenas)',
      '4 cebolinhas fatiadas',
      'Um maço de cebolinha-francesa (chives)',
      '5 colheres (sopa) de vinagre de xerez',
      '2 colheres (sopa) de azeite extravirgem',
      '2 colheres (sopa) de mel',
    ],
    modoPreparo:
        '1. Aqueça o forno a 200 °C. Misture a batata-doce em pedaços com o azeite e o tempero e espalhe em uma assadeira forrada com papel manteiga. Asse por 30 a 35 minutos, até ficar macia e dourada. Deixe esfriar em temperatura ambiente.\n'
        '2. Quando estiver quase fria, bata os ingredientes do molho (vinagre, azeite extravirgem, mel, echalotas, cebolinha e cebolinha-francesa) com um pouco mais de tempero e misture delicadamente às batatas, com as mãos, para não desmanchar.',
    imagemUrl: '${_fotos}z458v91763817681.jpg',
  ),
  const Receita(
    id: 'mealdb-53309',
    titulo: 'Salada de Pepino e Erva-Doce',
    descricao:
        'Salada fresca de pepino e erva-doce com molho de creme azedo, limão e endro.',
    categoria: 'Salada',
    tempoPreparo: 15,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '1 pepino grande',
      '1 colher (chá) de açúcar',
      '1 bulbo de erva-doce (funcho) fatiado',
      '150 ml de creme azedo',
      'Suco de 1 limão-siciliano',
      '1 colher (sopa) de vinagre de vinho branco',
      'Um maço de endro (dill)',
      'Sal e pimenta-do-reino',
    ],
    modoPreparo:
        '1. Coloque o pepino fatiado em uma peneira, polvilhe com 1 colher (chá) de sal e o açúcar e deixe por 10 minutos. Junte a erva-doce.\n'
        '2. Misture o creme azedo, o suco de limão, o vinagre e o endro, tempere com pimenta-do-reino e misture à salada.',
    imagemUrl: '${_fotos}ei21r61764365935.jpg',
  ),
  const Receita(
    id: 'mealdb-53478',
    titulo: 'Milho Grelhado com Maionese de Alho e Queijo',
    descricao:
        'Espigas de milho grelhadas com maionese de alho, parmesão, coentro e limão.',
    categoria: 'Acompanhamento',
    tempoPreparo: 25,
    porcoes: 6,
    dificuldade: 'Fácil',
    ingredientes: [
      '6 espigas de milho',
      '2 dentes de alho picados',
      '6 colheres (sopa) de maionese',
      '4 colheres (sopa) de parmesão ralado',
      '2 colheres (sopa) de coentro picado',
      '1 limão',
    ],
    modoPreparo:
        '1. Cozinhe as espigas de milho em água fervente por 5 minutos e deixe na água até a hora de grelhar. Misture o alho com a maionese em uma tigela pequena.\n'
        '2. Pouco antes de grelhar, retire as espigas da panela, seque e passe a maionese em cada uma.\n'
        '3. Tempere e grelhe até aparecerem as marcas, cerca de 5 minutos. Retire do fogo e polvilhe com o parmesão e o coentro.\n'
        '4. Esprema o limão por cima e sirva.',
    imagemUrl: '${_fotos}k1if4d1782589892.jpg',
  ),
  const Receita(
    id: 'mealdb-52777',
    titulo: 'Salada Mediterrânea de Macarrão',
    descricao:
        'Salada fria de macarrão farfalle com tomate, mozarela, azeitona, atum e manjericão.',
    categoria: 'Salada',
    tempoPreparo: 40,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '200 g de bolinhas de mozarela',
      '250 g de tomates pequenos tipo italiano',
      '1 maço de manjericão fresco',
      '350 g de macarrão farfalle',
      '3 colheres (sopa) de azeite extravirgem',
      '40 g de azeitonas verdes',
      '200 g de atum',
      'Sal e pimenta-do-reino a gosto',
    ],
    modoPreparo:
        '1. Ferva bastante água com sal em uma panela grande. Acrescente o macarrão, mexa uma vez e cozinhe por cerca de 10 minutos, ou como indicado na embalagem.\n'
        '2. Enquanto isso, lave os tomates e corte em quatro. Fatie as azeitonas e lave o manjericão.\n'
        '3. Coloque os tomates em uma saladeira, rasgue o manjericão por cima, junte 1 colher (sopa) de azeite e misture.\n'
        '4. Quando o macarrão estiver pronto, escorra e passe água fria para esfriar rápido. Junte à saladeira com os tomates e o manjericão.\n'
        '5. Acrescente as azeitonas, a mozarela escorrida e pedaços de atum. Misture bem e deixe a salada descansar por pelo menos meia hora, para os sabores se misturarem.\n'
        '6. Antes de servir, polvilhe pimenta-do-reino e regue com o restante do azeite.',
    imagemUrl: '${_fotos}wvqpwt1468339226.jpg',
  ),
  const Receita(
    id: 'mealdb-53202',
    titulo: 'Peixe no Vapor Estilo Tailandês',
    descricao:
        'Filés de truta cozidos no vapor, em um pacote de papel alumínio com gengibre, pimenta, limão e acelga.',
    categoria: 'Frutos do mar',
    tempoPreparo: 25,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '2 filés de truta',
      '1 pedaço de gengibre',
      '1 dente de alho pequeno picado fino',
      '1 pimenta vermelha pequena picada fina',
      'Suco e raspas de 1 limão',
      '3 pak choi pequenos (acelga chinesa)',
      '2 colheres (sopa) de molho shoyu',
    ],
    modoPreparo:
        '1. Acomode os filés lado a lado em um quadrado grande de papel alumínio e espalhe por cima o gengibre, o alho, a pimenta e as raspas de limão.\n'
        '2. Regue com o suco de limão e distribua o pak choi ao redor e em cima do peixe. Despeje o shoyu sobre o pak choi.\n'
        '3. Feche o papel frouxamente, formando um pacote, e deixe espaço em cima para o vapor circular.\n'
        '4. Cozinhe no vapor por 15 minutos. Se não tiver cestinho de vapor, coloque o pacote em um prato que resista ao calor sobre uma panela com água em fervura leve, tampe e cozinhe.',
    imagemUrl: '${_fotos}yx8j1i1763484612.jpg',
  ),
  const Receita(
    id: 'mealdb-53346',
    titulo: 'Sorvete Cremoso de Cereal Crocante',
    descricao:
        'Sorvete caseiro, sem sorveteira, de creme de leite e leite condensado com cereal crocante.',
    categoria: 'Doce',
    tempoPreparo: 20,
    porcoes: 8,
    dificuldade: 'Fácil',
    ingredientes: [
      '2 xícaras de creme de leite fresco gelado',
      '1 lata de leite condensado (cerca de 395 g)',
      '1 colher (chá) de extrato de baunilha',
      '1 xícara de cereal crocante tipo Grape-Nuts (ou granola)',
    ],
    modoPreparo:
        '1. Em uma tigela grande, bata o creme de leite gelado com uma batedeira até formar picos firmes.\n'
        '2. Incorpore delicadamente o leite condensado e a baunilha, até ficar bem misturado.\n'
        '3. Junte o cereal e misture até se espalhar por toda a mistura.\n'
        '4. Despeje em um recipiente próprio para freezer (como uma forma de pão). Cubra a superfície com filme plástico, para evitar que o sorvete cristalize.\n'
        '5. Tampe e leve ao freezer por pelo menos 6 horas, até ficar sólido.\n'
        '6. Antes de servir, deixe fora do freezer por alguns minutos para amolecer um pouco.',
    imagemUrl: '${_fotos}1xscby1764790242.jpg',
  ),
  const Receita(
    id: 'mealdb-52853',
    titulo: 'Mousse de Chocolate com Abacate',
    descricao:
        'Mousse cremoso de abacate, banana e cacau, adoçado com mel.',
    categoria: 'Doce',
    tempoPreparo: 10,
    porcoes: 4,
    dificuldade: 'Fácil',
    ingredientes: [
      '1 banana',
      '3 colheres (sopa) de cacau em pó',
      '1 abacate',
      '2 colheres (sopa) de mel',
      '1 colher (chá) de suco de limão',
      '1 colher (chá) de baunilha',
      '2 colheres (sopa) de água',
      'Uma pitada de sal marinho',
    ],
    modoPreparo:
        '1. Bata todos os ingredientes no processador até ficar liso. Acrescente o cacau primeiro e, enquanto bate, tenha os ingredientes à mão para ajustar as proporções, porque o tamanho do abacate e da banana varia muito. O ideal é usar quantidades iguais de abacate e banana, para o doce não ficar com gosto forte de nenhum dos dois.\n'
        '2. Prove e, se achar necessário, adoce mais.\n'
        '3. Distribua em copinhos ou taças pequenas, polvilhe com cacau ou nibs e sirva.\n'
        'Dica: se não tiver banana congelada, use uma normal e leve o mousse à geladeira antes de servir, para ficar bem geladinho.',
    imagemUrl: '${_fotos}uttuxy1511382180.jpg',
  ),
  const Receita(
    id: 'mealdb-52859',
    titulo: 'Torta de Limão Americana (Key Lime Pie)',
    descricao:
        'Torta gelada de limão com base de biscoito, recheio de leite condensado e chantilly.',
    categoria: 'Doce',
    tempoPreparo: 60,
    porcoes: 8,
    dificuldade: 'Médio',
    ingredientes: [
      '300 g de biscoito tipo digestivo (ou maisena)',
      '150 g de manteiga',
      '400 g de leite condensado',
      '3 gemas',
      '4 limões (raspas e suco)',
      '300 ml de creme de leite fresco',
      '1 colher (sopa) de açúcar de confeiteiro',
      'Raspas de limão para servir',
    ],
    modoPreparo:
        '1. Aqueça o forno a 160 °C. Bata o biscoito no processador até virar farofa (ou coloque em um saco plástico resistente e amasse com um rolo). Misture com a manteiga derretida e pressione no fundo e nas laterais de uma forma de torta de 22 cm de fundo removível. Asse por 10 minutos, retire e deixe esfriar.\n'
        '2. Em uma tigela grande, bata as gemas por 1 minuto com a batedeira. Junte o leite condensado e bata por 3 minutos. Acrescente as raspas e o suco de limão e bata por mais 3 minutos.\n'
        '3. Despeje o recheio na base já fria e leve de volta ao forno por 15 minutos.\n'
        '4. Deixe esfriar e leve à geladeira por pelo menos 3 horas, ou de um dia para o outro.\n'
        '5. Na hora de servir, desenforme com cuidado e passe para um prato. Bata levemente o creme de leite com o açúcar de confeiteiro, espalhe ou coloque por cima da torta com colheradas e finalize com raspas de limão.',
    imagemUrl: '${_fotos}qpqtuu1511386216.jpg',
  ),
  const Receita(
    id: 'mealdb-53550',
    titulo: 'Torta de Morango com Creme',
    descricao:
        'Massa de maçapão com chocolate, creme de baunilha e morangos frescos.',
    categoria: 'Doce',
    tempoPreparo: 90,
    porcoes: 8,
    dificuldade: 'Difícil',
    ingredientes: [
      'Massa: 250 g de maçapão',
      'Massa: 80 g de açúcar',
      'Massa: 200 g de manteiga',
      'Massa: 4 ovos',
      'Massa: 50 g de farinha de trigo',
      'Massa: 100 g de chocolate amargo',
      'Creme: 3 colheres (chá) de açúcar de baunilha',
      'Creme: 3 gemas',
      'Creme: 50 g de açúcar',
      'Creme: 2 colheres (sopa) de amido de milho',
      'Creme: 3/4 de xícara de leite',
      'Creme: 1/2 xícara de creme de leite fresco',
      '500 g de morangos',
      'Um punhado de hortelã',
    ],
    modoPreparo:
        '1. Massa: aqueça o forno a 175 °C. Rale o maçapão e misture bem com o açúcar. Bata a mistura com a manteiga até ficar fofa. Acrescente os ovos e depois incorpore a farinha. Forre uma forma de fundo removível de cerca de 24 cm com papel manteiga e unte com manteiga. Abra a massa, passe para a forma e asse no meio do forno por cerca de 25 minutos.\n'
        '2. Enquanto a massa assa, pique fino o chocolate e polvilhe sobre a massa recém-assada, espalhando com uma espátula conforme derrete. Deixe esfriar até a temperatura ambiente.\n'
        '3. Creme de baunilha: em uma panela, misture o açúcar de baunilha, as gemas, o açúcar e o amido. Leve ao fogo médio e junte o leite, mexendo, até engrossar. Passe para um recipiente e deixe esfriar completamente. Bata o creme de leite até formar espuma leve e incorpore ao creme frio.\n'
        '4. Montagem: lave os morangos, retire os cabinhos e corte em quatro. Espalhe uma camada grossa do creme sobre a massa e cubra com os morangos e a hortelã.',
    imagemUrl: '${_fotos}9kmyly1784660555.jpg',
  ),
  const Receita(
    id: 'mealdb-53091',
    titulo: 'Sanduíche de Falafel no Pão Sírio com Molho de Tahine',
    descricao:
        'Pão sírio recheado com falafel, salada e molho cremoso de tahine, limão e alho.',
    categoria: 'Vegetariano',
    tempoPreparo: 25,
    porcoes: 6,
    dificuldade: 'Fácil',
    ingredientes: [
      '12 bolinhos de falafel prontos',
      '1/4 de xícara de tahine',
      '1/4 de xícara de água',
      '2 colheres (sopa) de suco de limão',
      '2 dentes de alho',
      '1/4 de colher (chá) de páprica',
      '6 pães sírios',
      '1 alface',
      '1 tomate',
      '1/2 pepino',
      '1 pepino em conserva',
      '1/4 de cebola roxa',
      '3 colheres (chá) de harissa',
    ],
    modoPreparo:
        '1. Preaqueça o forno a 230 °C. Coloque os falafels em uma assadeira e asse por 8 a 10 minutos, até aquecerem.\n'
        '2. Enquanto isso, misture com um fouet o tahine, a água, o suco de limão, o alho e a páprica em uma tigela.\n'
        '3. Corte cerca de 2,5 cm da parte de cima de cada pão para abrir um bolso.\n'
        '4. Coloque 2 falafels em cada pão, com porções iguais de alface, tomate, pepino, pepino em conserva e cebola roxa.\n'
        '5. Regue cada um com cerca de 1 colher (sopa) do molho de tahine e um pouco de harissa.',
    imagemUrl: '${_fotos}ae6clc1760524712.jpg',
  ),
  const Receita(
    id: 'mealdb-53032',
    titulo: 'Tonkatsu (Bife Empanado de Porco Japonês)',
    descricao:
        'Bisteca de porco empanada com farinha panko, frita e servida com molho agridoce.',
    categoria: 'Carne',
    tempoPreparo: 40,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '4 bistecas de porco',
      '100 g de farinha de trigo',
      '2 ovos batidos',
      '100 g de farinha panko (ou farinha de rosca)',
      'Óleo vegetal para fritar',
      '2 colheres (sopa) de ketchup',
      '2 colheres (sopa) de molho inglês',
      '1 colher (sopa) de molho de ostra',
      '2 colheres (sopa) de açúcar refinado',
    ],
    modoPreparo:
        '1. Retire a gordura grossa da borda de cada bisteca e bata cada uma entre dois pedaços de papel manteiga, com um martelo de carne ou rolo de massa, até ficarem com cerca de 1 cm. Depois, remodele a carne com as mãos para voltar ao formato e espessura originais, o que ajuda a deixá-la mais suculenta.\n'
        '2. Coloque a farinha, os ovos e a panko em três pratos fundos separados. Tempere a carne e passe primeiro na farinha, depois nos ovos e por último na panko.\n'
        '3. Em uma frigideira grande, coloque óleo até cerca de 2 cm de altura e aqueça a 180 °C (se não tiver termômetro, jogue um pouco de panko: se afundar um pouco e começar a fritar, está no ponto). Frite duas bistecas por 1 minuto e meio de cada lado, retire e deixe descansar em uma grade por 5 minutos. Repita com as outras.\n'
        '4. Enquanto a carne descansa, faça o molho misturando bem os ingredientes, com um pouco de água se ficar muito grosso.\n'
        '5. Fatie o tonkatsu e sirva regado com o molho.',
    imagemUrl: '${_fotos}lwsnkl1604181187.jpg',
  ),
  const Receita(
    id: 'mealdb-52828',
    titulo: 'Porco Grelhado Vietnamita com Macarrão (Bún Thịt Nướng)',
    descricao:
        'Bowl de macarrão de arroz com porco marinado e grelhado, pepino, hortelã e amendoim.',
    categoria: 'Carne',
    tempoPreparo: 60,
    porcoes: 4,
    dificuldade: 'Médio',
    ingredientes: [
      '700 g de porco fatiado',
      '1 pacote de macarrão fino de arroz',
      '4 a 6 rolinhos primavera (opcional)',
      '3 colheres (sopa) de echalota picada',
      '1 1/2 colher (sopa) de alho picado',
      '1/4 de xícara de açúcar',
      '1 colher (sopa) de molho de peixe',
      '1/2 colher (sopa) de molho shoyu escuro',
      '1/2 colher (sopa) de pimenta',
      '3 colheres (sopa) de azeite',
      'Pepino fatiado',
      'Folhas de hortelã',
      'Amendoim triturado',
    ],
    modoPreparo:
        '1. Corte o porco cru em fatias bem finas, de cerca de 3 mm. Ajuda deixar a carne um pouco no freezer (opcional).\n'
        '2. Misture o alho e a echalota em uma tigela com o açúcar, o molho de peixe, o shoyu escuro, a pimenta e o óleo, até o açúcar dissolver. Deixe a carne marinar por 1 hora, ou de um dia para o outro, para ficar melhor.\n'
        '3. Asse o porco a 190 °C por 10 a 15 minutos, até estar cerca de 80% cozido. Termine no grill do forno até dourar, virando os pedaços na metade.\n'
        '4. Monte a tigela com o macarrão cozido, os legumes e as folhas, a carne e o amendoim por cima. Muita gente mistura tudo e despeja o molho de peixe por cima.',
    imagemUrl: '${_fotos}qqwypw1504642429.jpg',
  ),
  const Receita(
    id: 'mealdb-53229',
    titulo: 'Salada Vietnamita de Macarrão com Bife',
    descricao:
        'Macarrão de arroz integral com cenoura, repolho e fatias de bife ao ponto, com molho de limão.',
    categoria: 'Salada',
    tempoPreparo: 25,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '85 g de macarrão de arroz integral',
      '1 colher (chá) de óleo de canola',
      '250 g de filé mignon',
      '2 cenouras',
      '1/2 repolho chinês',
      '4 cebolinhas fatiadas bem finas',
      'Um punhado de coentro',
      '1 pimenta vermelha fatiada',
      'Suco de 1 limão',
      '2 colheres (chá) de açúcar mascavo',
      '1 colher (chá) de vinagre de arroz',
      '1 dente de alho picado',
      '1/2 colher (sopa) de molho de peixe',
    ],
    modoPreparo:
        '1. Misture todos os ingredientes do molho em uma tigela com 1 colher (sopa) de água, até o açúcar dissolver.\n'
        '2. Cozinhe o macarrão conforme a embalagem e passe para uma tigela de água fria para esfriar completamente. Escorra e misture com a cenoura, o repolho, a cebolinha e o molho.\n'
        '3. Aqueça o óleo em uma frigideira em fogo alto. Tempere o bife e cozinhe ao seu gosto: 2 a 3 minutos de cada lado para ao ponto. Deixe descansar por 5 minutos e fatie.\n'
        '4. Divida a salada e as fatias de bife entre as tigelas e espalhe o coentro por cima.',
    imagemUrl: '${_fotos}st9shl1763755808.jpg',
  ),
  const Receita(
    id: 'mealdb-52821',
    titulo: 'Macarrão Laksa com Camarão',
    descricao:
        'Sopa de macarrão de arroz com leite de coco, curry vermelho, limão e camarões.',
    categoria: 'Frutos do mar',
    tempoPreparo: 20,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '1 colher (sopa) de azeite',
      '1 pimenta vermelha fatiada fina',
      '2 1/2 colheres (sopa) de pasta de curry vermelho tailandês',
      '1 cubo de caldo de legumes',
      '1 lata (400 ml) de leite de coco',
      '2 colheres (chá) de molho de peixe',
      '100 g de macarrão de arroz',
      '2 limões (suco de 1 e o outro em gomos)',
      '150 g de camarões grandes',
      '1/2 maço pequeno de coentro',
    ],
    modoPreparo:
        '1. Aqueça o azeite em uma panela média e junte a pimenta. Cozinhe por 1 minuto, acrescente a pasta de curry, mexa e cozinhe por mais 1 minuto.\n'
        '2. Dissolva o cubo de caldo em 700 ml de água fervente em uma jarra grande, despeje na panela e misture. Junte o leite de coco e leve à fervura. Acrescente o molho de peixe e um pouco de tempero.\n'
        '3. Coloque o macarrão e cozinhe por mais 3 a 4 minutos, até começar a amolecer.\n'
        '4. Esprema o suco de limão, junte os camarões e cozinhe até esquentarem, cerca de 2 a 3 minutos. Espalhe um pouco do coentro.\n'
        '5. Sirva em tigelas, com o restante do coentro e os gomos de limão por cima, para espremer.',
    imagemUrl: '${_fotos}rvypwy1503069308.jpg',
  ),
  const Receita(
    id: 'mealdb-53046',
    titulo: 'Pastéis de Nata (Tartelettes Portuguesas)',
    descricao:
        'Tartelettes de massa folhada crocante com creme de ovos, infusão de baunilha, canela e limão.',
    categoria: 'Doce',
    tempoPreparo: 90,
    porcoes: 12,
    dificuldade: 'Difícil',
    ingredientes: [
      '2 colheres (sopa) de farinha de trigo',
      '2 colheres (sopa) de açúcar de confeiteiro',
      '375 g de massa folhada',
      '250 g de açúcar refinado',
      '2 tiras de casca de limão-siciliano',
      '1 pau de canela',
      '2 ovos',
      '4 gemas',
      '50 g de amido de milho',
      '500 ml de leite integral',
      '1 fava de baunilha',
      'Canela em pó para servir',
    ],
    modoPreparo:
        '1. Abra a massa: misture a farinha com o açúcar de confeiteiro e use para polvilhar a bancada. Abra a massa folhada em um retângulo de 45 x 30 cm e enrole no sentido do comprimento, formando um rolo comprido.\n'
        '2. Corte o rolo em 24 rodelas de 1 a 2 cm. Achate cada rodela com o rolo de massa, de modo a caber em 2 formas de 12 buracos antiaderentes (como as de cupcake).\n'
        '3. Pressione as rodelas nas formas, moldando para formar casquinhas finas. Leve à geladeira até a hora de usar.\n'
        '4. Calda e creme: aqueça o forno a 220 °C. Leve ao fogo o açúcar, 200 ml de água, a casca de limão e o pau de canela até ferver e reduzir à consistência de calda. Deixe esfriar e retire a canela e o limão. Em outra panela grande, bata os ovos, as gemas e o amido até ficar liso.\n'
        '5. Aqueça o leite com as sementes da fava de baunilha até quase ferver. Despeje aos poucos sobre os ovos com o amido e leve ao fogo baixo, batendo sempre. Junte a calda fria e bata até engrossar levemente.\n'
        '6. Passe o creme por uma peneira, distribua nas casquinhas e asse por 15 minutos, até a massa dourar e o creme escurecer.\n'
        '7. Deixe esfriar nas formas, peneire açúcar de confeiteiro e canela em pó por cima e sirva.',
    imagemUrl: '${_fotos}vmz7gl1614350221.jpg',
  ),
  const Receita(
    id: 'mealdb-53219',
    titulo: 'Shakshuka com Queijo Feta',
    descricao:
        'Ovos cozidos em molho de tomate com legumes, espinafre e queijo feta.',
    categoria: 'Vegetariano',
    tempoPreparo: 25,
    porcoes: 2,
    dificuldade: 'Fácil',
    ingredientes: [
      '4 ovos grandes',
      '3 colheres (sopa) de molho de tomate',
      '1 colher (sopa) de azeite',
      '1 echalota picada (ou cebola pequena)',
      '1 talo de aipo',
      '1 dente de alho amassado',
      '1 xícara de espinafre',
      '1/2 xícara de queijo feta',
      '1/2 pimentão vermelho',
      '1 colher (chá) de cominho em pó',
      '1/2 colher (chá) de sal',
      '1/2 colher (chá) de pimenta-do-reino',
      'Pão fresco para servir',
    ],
    modoPreparo:
        '1. Em uma frigideira, aqueça o azeite em fogo médio a alto.\n'
        '2. Junte os legumes picados (cebola, alho, aipo e pimentão) e mexa por 5 minutos.\n'
        '3. Acrescente o cominho, o sal, a pimenta e o molho de tomate e cozinhe por mais 7 minutos.\n'
        '4. Quebre os ovos por cima, tampe e deixe cozinhar por 8 minutos. No final, junte o espinafre e o queijo feta.\n'
        '5. Sirva com pão fresco.',
    imagemUrl: '${_fotos}wpkfin1763597958.jpg',
  ),
  const Receita(
    id: 'mealdb-53476',
    titulo: 'Pão de Queijo',
    descricao:
        'Bolinhas de polvilho com parmesão, crocantes por fora e macias por dentro, para comer ainda quentes.',
    categoria: 'Acompanhamento',
    tempoPreparo: 45,
    porcoes: 8,
    dificuldade: 'Médio',
    ingredientes: [
      'Um fio de óleo para untar',
      '250 ml de leite integral',
      '125 g de manteiga sem sal',
      '1 colher (chá) de sal',
      '300 g de polvilho doce',
      '2 ovos',
      '100 g de parmesão ralado',
    ],
    modoPreparo:
        '1. Aqueça o forno a 220 °C (200 °C se for com ventilação). Unte uma assadeira com óleo ou manteiga e reserve.\n'
        '2. Em uma panela média, aqueça o leite, a manteiga e o sal até ferver. Retire do fogo, junte o polvilho e mexa com vontade. Deixe esfriar um pouco.\n'
        '3. Bata a massa na batedeira (ou com uma colher de pau, à mão) até esfriar. Junte os ovos um de cada vez, esperando incorporar totalmente antes de colocar o próximo. Quando a massa estiver brilhante e lisa, acrescente o parmesão e bata de novo até misturar.\n'
        '4. Com uma colher, faça bolinhas de 1 colher (sopa) na assadeira, com 5 cm de distância entre elas. Asse por 30 minutos, até ficarem crocantes e douradas. Tire do forno e coma ainda morno.',
    imagemUrl: '${_fotos}sl7cr91782588539.jpg',
  ),
];
