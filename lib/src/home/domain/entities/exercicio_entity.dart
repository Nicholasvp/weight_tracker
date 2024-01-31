import 'dart:convert';

import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ExercicioEntity {
  final String id;
  final String nome;
  final String imagem;
  final int peso;
  final TypeExercise type;

  ExercicioEntity(
      {required this.id,
      required this.nome,
      required this.imagem,
      required this.peso,
      required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'imagem': imagem,
      'peso': peso,
      'type': type.name,
    };
  }

  factory ExercicioEntity.fromMap(Map<String, dynamic> map) {
    return ExercicioEntity(
      id: map['id'] as String,
      nome: map['nome'] as String,
      imagem: map['imagem'] as String,
      peso: map['peso'] as int,
      type: TypeExerciseUtils.stringToTypeExercise(map['type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ExercicioEntity.fromJson(String source) =>
      ExercicioEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  ExercicioEntity copyWith({
    String? id,
    String? nome,
    String? imagem,
    int? peso,
    TypeExercise? type,
  }) {
    return ExercicioEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      imagem: imagem ?? this.imagem,
      peso: peso ?? this.peso,
      type: type ?? this.type,
    );
  }

  static List<ExercicioEntity> fromMapList(List<dynamic> mapList) {
    return List<ExercicioEntity>.from(
      mapList.map(
        (x) => ExercicioEntity.fromMap(x as Map<String, dynamic>),
      ),
    );
  }
}
