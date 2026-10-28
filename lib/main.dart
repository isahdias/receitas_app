import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/router.dart';
import 'data/receita_repository.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Espera o Firebase restaurar a sessão salva, para o app já abrir na tela
  // certa (lista, se já estava logada; login, se não).
  await FirebaseAuth.instance.authStateChanges().first;

  // A partir daqui o repository acompanha o login: ao entrar, escuta as
  // receitas da conta; ao sair, para de escutar.
  receitaRepository.ouvirUsuario();

  runApp(const ReceitasApp());
}

class ReceitasApp extends StatelessWidget {
  const ReceitasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tempero do Tempo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      routerConfig: appRouter,
    );
  }
}
