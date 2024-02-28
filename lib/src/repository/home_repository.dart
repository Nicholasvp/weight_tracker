import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weight_tracker/src/database/db.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/result_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

import 'dart:developer' as developer;

class HomeRepository {
  late Database db;

  Future<List<ResultEntity>> fetchResults({required String type}) async {
    db = await DB.instance.database;
    final List<Map<String, dynamic>> resultDB =
        await db.query('results', where: 'type = ?', whereArgs: [type]);

    List<ResultEntity> listResults = resultDB.map((e) {
      return ResultEntity.fromJson(jsonDecode(e['result']));
    }).toList();

    developer.log('Pegando Items');
    return listResults;
  }

  void insert(ResultEntity resultEntity) async {
    db = await DB.instance.database;
    var treino =
        resultEntity.listExercises.map((e) => e.toJson()).toList().toString();
    var existingData = await db
        .query('treinos', where: 'id = ?', whereArgs: [resultEntity.type]);

    if (existingData.isNotEmpty) {
      await db.update('treinos', {'treino': treino},
          where: 'id = ?', whereArgs: [resultEntity.type]);
    } else {
      await db.insert('treinos', {'treino': treino, 'id': resultEntity.type});
    }
    await db.insert(
      'results',
      {'result': jsonEncode(resultEntity.toJson()), 'type': resultEntity.type},
    );
  }

  void clearTreino() async {
    db = await DB.instance.database;
    await db.delete('treinos');
  }

  void clearResults() async {
    db = await DB.instance.database;
    await db.delete('results');
  }

  Future<List<ExercicioEntity>> getExercise(TypeExercise type) async {
    db = await DB.instance.database;
    var existingData =
        await db.query('treinos', where: 'id = ?', whereArgs: [type.name]);
    if (existingData.isNotEmpty) {
      String list = jsonEncode(existingData[0]);

      TreinoEntity resultEntity = TreinoEntity.fromJson(list);
      List<ExercicioEntity> listExercises = resultEntity.treino;
      return listExercises;
    } else {
      return [];
    }
  }
}
