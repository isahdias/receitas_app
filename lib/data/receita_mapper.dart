import 'package:cloud_firestore/cloud_firestore.dart';

import '../domain/receita.dart';

/// Converte uma [Receita] nos campos que vão para o documento do Firestore.
/// O id não entra aqui: ele é o próprio id do documento.
/// createdAt e updatedAt são acrescentados no repository.
Map<String, dynamic> receitaParaMap(Receita r) => {
      'titulo': r.titulo,
      'descricao': r.descricao,
      'categoria': r.categoria,
      'tempoPreparo': r.tempoPreparo,
      'porcoes': r.porcoes,
      'ingredientes': r.ingredientes,
      'modoPreparo': r.modoPreparo,
      'dificuldade': r.dificuldade,
      'imagemUrl': r.imagemUrl,
    };

/// Converte um documento do Firestore em [Receita].
Receita receitaDeDoc(DocumentSnapshot<Map<String, dynamic>> doc) {
  final d = doc.data() ?? {};
  return Receita(
    id: doc.id,
    titulo: (d['titulo'] as String?) ?? '',
    descricao: (d['descricao'] as String?) ?? '',
    categoria: (d['categoria'] as String?) ?? 'Salgado',
    tempoPreparo: (d['tempoPreparo'] as num?)?.toInt() ?? 0,
    porcoes: (d['porcoes'] as num?)?.toInt() ?? 0,
    ingredientes: ((d['ingredientes'] as List?) ?? const [])
        .map((e) => e.toString())
        .toList(),
    modoPreparo: (d['modoPreparo'] as String?) ?? '',
    dificuldade: (d['dificuldade'] as String?) ?? 'Fácil',
    imagemUrl: d['imagemUrl'] as String?,
  );
}
