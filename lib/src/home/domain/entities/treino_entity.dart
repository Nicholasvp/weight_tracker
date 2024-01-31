// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';

class TreinoEntity {
  final String id;

  final List<ExercicioEntity> treino;

  TreinoEntity({
    required this.id,
    required this.treino,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'treino': treino.map((x) => x.toMap()).toList(),
    };
  }

  factory TreinoEntity.fromMap(Map<String, dynamic> map) {
    return TreinoEntity(
      id: map['id'] as String,
      treino: List<ExercicioEntity>.from(
        (json.decode(map['treino'] as String) as List<dynamic>).map(
          (x) => ExercicioEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory TreinoEntity.fromJson(String source) =>
      TreinoEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
