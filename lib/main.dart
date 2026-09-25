import 'package:flutter/material.dart';

import 'ui/receitas/receita_list_screen.dart';

void main() {
  runApp(const ReceitasApp());
}

class ReceitasApp extends StatelessWidget {
  const ReceitasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minhas Receitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const ReceitaListScreen(),
    );
  }
}