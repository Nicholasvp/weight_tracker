// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';

class ResultEntity {
  final String id;
  final List<ExercicioEntity> listExercises;
  final String type;

  ResultEntity({
    required this.id,
    required this.listExercises,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'listExercises': listExercises.map((x) => x.toMap()).toList(),
      'type': type,
    };
  }

  factory ResultEntity.fromMap(Map<String, dynamic> map) {
    return ResultEntity(
      id: map['id'] as String,
      listExercises: List<ExercicioEntity>.from(
        (map['listExercises'] as List<int>).map<ExercicioEntity>(
          (x) => ExercicioEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultEntity.fromJson(String source) =>
      ResultEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
