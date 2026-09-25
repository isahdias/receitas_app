import 'package:go_router/go_router.dart';

import '../ui/receitas/receita_detail_screen.dart';
import '../ui/receitas/receita_list_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ReceitaListScreen(),
      routes: [
        GoRoute(
          path: 'receita/:id',
          builder: (context, state) =>
              ReceitaDetailScreen(receitaId: state.pathParameters['id']!),
        ),
      ],
    ),
  ],
);