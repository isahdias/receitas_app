import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../domain/receita.dart';
import 'receita_mapper.dart';
import 'receitas_exemplo.dart';

/// Único lugar do app que fala com o Firestore.
///
/// Os dados ficam em users/{uid}/receitas/{receitaId}. O uid vem SEMPRE da
/// sessão autenticada (FirebaseAuth), nunca de um campo da tela, e as
/// Security Rules reforçam isso no servidor.
///
/// Mantém a mesma "cara" de antes (receitas, buscarPorId, adicionar, remover)
/// para as telas continuarem funcionando com ListenableBuilder.
class ReceitaRepository extends ChangeNotifier {
  List<Receita> _receitas = [];
  bool _carregando = false;
  String? _erro;

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _assinatura;
  StreamSubscription<User?>? _assinaturaAuth;

  List<Receita> get receitas => List.unmodifiable(_receitas);

  /// true enquanto espera a primeira resposta do Firestore.
  bool get carregando => _carregando;

  /// Mensagem de erro da leitura (permissão, conexão...), ou null.
  String? get erro => _erro;

  /// Chamar uma vez no main(), depois do Firebase.initializeApp.
  /// Quando o usuário entra, começa a escutar as receitas dele;
  /// quando sai, para de escutar e limpa a lista.
  void ouvirUsuario() {
    _assinaturaAuth?.cancel();
    _assinaturaAuth =
        FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        _parar();
      } else {
        _iniciar(user.uid);
      }
    });
  }

  CollectionReference<Map<String, dynamic>> _colecao(String uid) =>
      FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .collection('receitas');

  String get _uid {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) throw StateError('Usuário não autenticado.');
    return user.uid;
  }

  /// READ em tempo real: a lista se atualiza sozinha depois de criar,
  /// editar ou excluir (snapshots).
  void _iniciar(String uid) {
    _assinatura?.cancel();
    _receitas = [];
    _carregando = true;
    _erro = null;
    notifyListeners();

    _assinatura = _colecao(uid)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .listen(
      (snap) {
        _receitas = snap.docs.map(receitaDeDoc).toList();
        _carregando = false;
        _erro = null;
        notifyListeners();
      },
      onError: (Object e) {
        _carregando = false;
        _erro = mensagemDeErro(e);
        notifyListeners();
      },
    );
  }

  void _parar() {
    _assinatura?.cancel();
    _assinatura = null;
    _receitas = [];
    _carregando = false;
    _erro = null;
    notifyListeners();
  }

  Receita? buscarPorId(String id) {
    for (final receita in _receitas) {
      if (receita.id == id) return receita;
    }
    return null;
  }

  /// CREATE
  Future<void> adicionar(Receita receita) {
    return _executar(() => _colecao(_uid).add({
          ...receitaParaMap(receita),
          'createdAt': FieldValue.serverTimestamp(),
          'updatedAt': FieldValue.serverTimestamp(),
        }));
  }

  /// UPDATE
  Future<void> atualizar(Receita receita) {
    return _executar(() => _colecao(_uid).doc(receita.id).update({
          ...receitaParaMap(receita),
          'updatedAt': FieldValue.serverTimestamp(),
        }));
  }

  /// DELETE (a confirmação é feita na tela, antes de chamar este método)
  Future<void> remover(String id) {
    return _executar(() => _colecao(_uid).doc(id).delete());
  }

  /// Grava uma cópia das receitas de exemplo na conta logada.
  Future<void> importarExemplos() {
    return _executar(() {
      final colecao = _colecao(_uid);
      final lote = FirebaseFirestore.instance.batch();
      for (final r in receitasExemplo) {
        lote.set(colecao.doc(), {
          ...receitaParaMap(r),
          'createdAt': FieldValue.serverTimestamp(),
          'updatedAt': FieldValue.serverTimestamp(),
        });
      }
      return lote.commit();
    });
  }

  /// Sem internet o Firestore guarda a escrita e só confirma quando a conexão
  /// volta. O timeout evita a tela ficar carregando para sempre.
  Future<void> _executar(Future<dynamic> Function() acao) async {
    await acao().timeout(const Duration(seconds: 10));
  }

  /// Traduz erros do Firestore em mensagens compreensíveis.
  static String mensagemDeErro(Object e) {
    if (e is TimeoutException) {
      return 'Sem conexão. A alteração será enviada quando a internet voltar.';
    }
    if (e is FirebaseException) {
      switch (e.code) {
        case 'permission-denied':
          return 'Você não tem permissão para acessar esses dados.';
        case 'unavailable':
        case 'deadline-exceeded':
          return 'Sem conexão com o servidor. Tente novamente.';
        case 'not-found':
          return 'Receita não encontrada. Ela pode ter sido excluída.';
        case 'unauthenticated':
          return 'Sessão expirada. Entre novamente.';
      }
      return 'Erro no Firestore (${e.code}).';
    }
    if (e is StateError) return e.message;
    return 'Algo deu errado. Tente novamente.';
  }
}

final receitaRepository = ReceitaRepository();
