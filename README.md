# Tempero do Tempo

Aplicativo Flutter de catálogo de receitas que sugere o que cozinhar conforme o clima do dia. Projeto da disciplina **Desenvolvimento Móvel** (ADS, Faculdade Serra Dourada, 2º semestre/2026), evoluído ao longo dos Trabalhos 1, 2 e 3.

- **Aluna:** Isadora Fernandes Dias
- **Tema:** catálogo de receitas
- **Repositório:** https://github.com/isahdias/receitas_app

## Funcionalidades acumuladas

### Trabalho 1 — base do app
- Lista de receitas com card (foto, título, categoria, tempo e porções).
- Tela de detalhe (descrição, ingredientes, modo de preparo).
- Formulário de cadastro/edição com validação de campos.
- Navegação com `go_router`.
- Receitas reais da [TheMealDB](https://www.themealdb.com), traduzidas para português, com fotos.
- Sugestão de receita conforme o clima (API Open-Meteo + localização do aparelho; se a localização for negada, usa uma cidade padrão).

### Trabalho 2 — autenticação
- Login e cadastro com **Firebase Authentication** (e-mail e senha).
- Mensagens de erro em português (e-mail inválido, senha fraca, e-mail já cadastrado etc.).
- Área protegida: sem login, o `go_router` redireciona para `/login`.
- A sessão é restaurada ao reabrir o app.
- Botão de sair.

### Trabalho 3 — Cloud Firestore e CRUD por usuário
- **CREATE:** formulário grava a receita no Firestore.
- **READ:** a lista usa `snapshots()` e se atualiza em tempo real.
- **UPDATE:** edição de qualquer campo, persistida no Firestore.
- **DELETE:** exclusão definitiva, com diálogo de confirmação.
- **Loading** nas consultas e nas ações; botões bloqueados durante o envio, para evitar duplicidade.
- **Estado vazio** com mensagem amigável e botão para cadastrar a primeira receita (ou importar exemplos).
- **Tratamento de erros** (permissão, conexão, receita não encontrada, sessão expirada).
- **Isolamento entre contas** garantido pelas Security Rules, e não só pela interface.

## Tecnologias e dependências

| Pacote | Uso |
|---|---|
| `flutter` / Dart | Framework e linguagem |
| `firebase_core` | Inicialização do Firebase |
| `firebase_auth` | Login e cadastro |
| `cloud_firestore` | Banco de dados na nuvem |
| `go_router` | Navegação e redirecionamento de rotas protegidas |
| `http` | Chamada à API de clima (Open-Meteo) |
| `geolocator` | Localização do aparelho para o clima |

## Arquitetura

```
lib/
├── app/router.dart              # rotas e redirecionamento (rota protegida)
├── domain/receita.dart          # modelo Receita
├── data/
│   ├── auth_service.dart        # Firebase Auth (login, cadastro, sair)
│   ├── receita_repository.dart  # ÚNICO ponto de acesso ao Firestore
│   ├── receita_mapper.dart      # Receita <-> documento do Firestore
│   ├── clima_service.dart       # API de clima
│   └── receitas_*.dart          # receitas de exemplo / TheMealDB traduzidas
├── core/widgets/                # componentes reutilizáveis (card, imagem)
└── ui/
    ├── auth/login_screen.dart
    └── receitas/                # lista, detalhe, formulário, card do clima
```

As telas **não chamam o Firestore diretamente**: toda leitura e escrita passa pelo `ReceitaRepository`, que é um `ChangeNotifier` consumido com `ListenableBuilder`.

## Estrutura dos dados no Firestore

Subcoleção por usuário:

```
users/{uid}/receitas/{receitaId}
```

Exemplo de documento:

```
titulo:       "Bolo de cenoura"
descricao:    "Bolo fofinho com cobertura de chocolate"
categoria:    "Doce"
tempoPreparo: 60              (int, minutos)
porcoes:      8               (int)
ingredientes: ["3 cenouras", "4 ovos", "2 xícaras de farinha"]   (list<string>)
modoPreparo:  "1. Bata no liquidificador..."
dificuldade:  "Fácil"
imagemUrl:    "https://..."   (opcional)
createdAt:    Timestamp (servidor)
updatedAt:    Timestamp (servidor)
```

O `uid` **vem da sessão autenticada** (`FirebaseAuth.instance.currentUser`) e faz parte do caminho do documento. Ele nunca é lido de um campo da tela. Nenhuma senha ou credencial é gravada nos documentos.

## Regras de segurança (Firestore Security Rules)

Arquivo: [`firestore.rules`](firestore.rules). Resumo:

- Só o dono (`request.auth.uid == userId`) pode **ler, criar, editar e excluir** documentos em `users/{userId}/receitas/{receitaId}`.
- Na **criação e edição**, os dados são validados: campos obrigatórios presentes, `titulo` com 1 a 120 caracteres, `tempoPreparo` e `porcoes` inteiros maiores que zero, `ingredientes` como lista não vazia, textos como string.
- **Todo o resto do banco é bloqueado** (`allow read, write: if false`).

Assim, mesmo que alguém tente acessar o caminho de outra conta diretamente, o servidor nega o acesso (`permission-denied`).

## Como configurar e executar

Pré-requisitos: Flutter SDK, um emulador Android ou aparelho, e um projeto no Firebase.

1. Clonar o repositório e instalar as dependências:
   ```
   git clone https://github.com/isahdias/receitas_app.git
   cd receitas_app
   flutter pub get
   ```
2. No [Firebase Console](https://console.firebase.google.com):
   - criar o projeto e registrar o app Android;
   - ativar **Authentication > E-mail/senha**;
   - criar o banco **Cloud Firestore**;
   - publicar o conteúdo de `firestore.rules` na aba **Regras** (ou `firebase deploy --only firestore:rules`).
3. Gerar a configuração do Firebase para o projeto: `flutterfire configure` (cria `lib/firebase_options.dart`).
4. Executar: `flutter run`

## Testes realizados

Testes manuais com duas contas fictícias (conta A e conta B):

| Teste | Resultado |
|---|---|
| Conta A cadastra 2 receitas e elas aparecem na lista | ☐ |
| Conta A edita uma receita, fecha e reabre o app, e a alteração permanece | ☐ |
| Conta A exclui uma receita (com confirmação) e ela some da lista e do Firestore | ☐ |
| Conta B cadastra uma receita própria e não vê as da conta A | ☐ |
| Sem login, o app redireciona para a tela de login | ☐ |
| Acesso cruzado: a conta B não consegue ler nem alterar documentos da conta A (Rules Playground) | ☐ |
| Estado vazio exibe a mensagem amigável | ☐ |
| Erro de operação/permissão é tratado com mensagem visual | ☐ |

## Screenshots

<!-- Adicione as imagens em uma pasta docs/ e referencie aqui -->
- CREATE: `docs/create.png`
- READ: `docs/read.png`
- UPDATE: `docs/update.png`
- DELETE (diálogo de confirmação): `docs/delete.png`
- Estado vazio: `docs/vazio.png`
- Security Rules publicadas: `docs/rules.png`

## Limitações conhecidas

- Sem internet, a escrita no Firestore é guardada no aparelho e só é confirmada quando a conexão volta. O app mostra um aviso após 10 segundos, e o usuário pode tentar salvar de novo, o que em um cadastro pode gerar receita duplicada.
- Tempo de preparo, porções e dificuldade das receitas importadas da TheMealDB são estimativas, porque a API não fornece esses dados.
- As fotos das receitas importadas continuam hospedadas na TheMealDB; sem internet elas não carregam.
- Não há recuperação de senha nem login com Google.

## Próximas evoluções (Trabalho 4)

- Versão final do app e refinamentos de interface.
- Busca e filtro por categoria e dificuldade.
- Receitas favoritas por usuário.
- Testes automatizados das Security Rules (Firebase Emulator).
- Preparação para a entrevista individual sobre o código.
