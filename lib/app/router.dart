import 'package:go_router/go_router.dart';

import '../data/auth_service.dart';
import '../ui/auth/login_screen.dart';
import '../ui/receitas/receita_detail_screen.dart';
import '../ui/receitas/receita_form_screen.dart';
import '../ui/receitas/receita_list_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  // Quando o usuário entra ou sai, o router reavalia o redirect abaixo.
  refreshListenable: authService,
  // Área protegida: sem login, só a tela de login é acessível.
  redirect: (context, state) {
    final logado = authService.logado;
    final naTelaDeLogin = state.matchedLocation == '/login';

    if (!logado && !naTelaDeLogin) return '/login';
    if (logado && naTelaDeLogin) return '/';
    return null;
  },
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const ReceitaListScreen(),
      routes: [
        // "nova" precisa vir antes de ":id", senão "nova" seria lido como id.
        GoRoute(
          path: 'receita/nova',
          builder: (context, state) => const ReceitaFormScreen(),
        ),
        GoRoute(
          path: 'receita/:id',
          builder: (context, state) =>
              ReceitaDetailScreen(receitaId: state.pathParameters['id']!),
        ),
        GoRoute(
          path: 'receita/:id/editar',
          builder: (context, state) =>
              ReceitaFormScreen(receitaId: state.pathParameters['id']),
        ),
      ],
    ),
  ],
);
