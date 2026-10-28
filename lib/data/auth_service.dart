import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

/// Login com Firebase Authentication (e-mail e senha).
/// É um ChangeNotifier para o go_router (refreshListenable) reagir quando
/// o usuário entra ou sai e redirecionar para a tela certa.
class AuthService extends ChangeNotifier {
  AuthService() {
    _usuario = FirebaseAuth.instance.currentUser;
    FirebaseAuth.instance.authStateChanges().listen((user) {
      _usuario = user;
      notifyListeners();
    });
  }

  User? _usuario;

  User? get usuario => _usuario;
  bool get logado => _usuario != null;

  Future<void> entrar(String email, String senha) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.trim(), password: senha);
  }

  Future<void> cadastrar(String email, String senha) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email.trim(), password: senha);
  }

  Future<void> sair() => FirebaseAuth.instance.signOut();

  /// Traduz códigos do Firebase Auth em mensagens compreensíveis.
  static String mensagemDeErro(Object e) {
    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'invalid-email':
          return 'E-mail inválido.';
        case 'user-not-found':
        case 'wrong-password':
        case 'invalid-credential':
          return 'E-mail ou senha incorretos.';
        case 'email-already-in-use':
          return 'Esse e-mail já está cadastrado.';
        case 'weak-password':
          return 'Senha fraca. Use pelo menos 6 caracteres.';
        case 'network-request-failed':
          return 'Sem conexão. Verifique sua internet.';
        case 'too-many-requests':
          return 'Muitas tentativas. Aguarde um pouco e tente de novo.';
      }
      return 'Erro de autenticação (${e.code}).';
    }
    return 'Algo deu errado. Tente novamente.';
  }
}

/// Instância única, no mesmo estilo do receitaRepository.
/// (Só é criada no primeiro uso, depois do Firebase.initializeApp.)
final authService = AuthService();
