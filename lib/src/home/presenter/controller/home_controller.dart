// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/result_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/app_status.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';
import 'package:weight_tracker/src/home/domain/exercicios/exercise_export.dart';

import 'package:weight_tracker/src/home/presenter/store/home_store.dart';
import 'package:weight_tracker/src/database/db.dart';
import 'package:weight_tracker/src/repository/home_repository.dart';

class HomeController extends ChangeNotifier {
  final store = HomeStore();
  final database = DB.instance;
  final _repository = HomeRepository();

  void toExercisePage() {
    store.currentPage = 0;
    store.isExercise = true;
    store.isResults = false;

    notifyListeners();
  }

  void toResultsPage() {
    store.currentPage = 1;
    store.isResults = true;
    store.isExercise = false;

    notifyListeners();
  }

  void increment(ExercicioEntity exerciseEntity) {
    int index = store.exercises.indexOf(exerciseEntity);
    if (index != -1) {
      ExercicioEntity exerciseEntityUpdate =
          exerciseEntity.copyWith(peso: exerciseEntity.peso + 1);
      store.exercises[index] = exerciseEntityUpdate;
      developer.log(store.exercises[index].toString());
      notifyListeners();
    }
  }

  void decrement(ExercicioEntity exerciseEntity) {
    int index = store.exercises.indexOf(exerciseEntity);
    if (index != -1 && exerciseEntity.peso > 0) {
      ExercicioEntity exerciseEntityUpdate =
          exerciseEntity.copyWith(peso: exerciseEntity.peso - 1);
      store.exercises[index] = exerciseEntityUpdate;
      notifyListeners();
    }
  }

  Future<void> saveTreino() async {
    store.appStatus = AppStatus.loading;
    Future.delayed(const Duration(milliseconds: 600));
    notifyListeners();

    ResultEntity resultEntity = ResultEntity(
      type: store.treino.name,
      id: store.datetime,
      listExercises: store.exercises,
    );

    _repository.insert(resultEntity);

    store.appStatus = AppStatus.finished;
    notifyListeners();
  }

  void newTreino() async {
    store.appStatus = AppStatus.initial;
    notifyListeners();
  }

  Future<void> getKeys() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var keys = prefs.getKeys();
    developer.log(keys.toString());
  }

  Future<void> clear() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    var keys = prefs.getKeys();
    developer.log(keys.toString());
  }

  List<ExercicioEntity> getExercises(TypeExercise type) {
    switch (type) {
      case TypeExercise.peito:
        return Peito.listExercicios;
      case TypeExercise.triceps:
        return Triceps.listExercicios;
      case TypeExercise.ombro:
        return Ombro.listExercicios;
      case TypeExercise.costas:
        return Costas.listExercicios;
      case TypeExercise.quadriceps:
        return Quadriceps.listExercicios;
      case TypeExercise.biceps:
        return Biceps.listExercicios;
      case TypeExercise.posterior:
        return Posterior.listExercicios;

      default:
        return Peito.listExercicios;
    }
  }

  Future<void> initializeData() async {
    store.appStatus = AppStatus.loading;
    await getExercisesFromDB();
    store.appStatus = AppStatus.initial;
    notifyListeners();
  }

  Future<void> getExercisesFromDB() async {
    store.appStatus = AppStatus.loading;
    TypeExercise type = store.treino;
    var result = await _repository.getExercise(type);
    if (result.isNotEmpty) {
      store.exercises = result;
    } else {
      store.exercises = getExercises(type);
    }
    store.appStatus = AppStatus.initial;
  }

  List<TypeExercise> getTreino() {
    return TypeExercise.values.toList();
  }

  void changeTreino(TypeExercise type) async {
    store.treino = type;
    await initializeData();
    developer.log(store.treino.name);
    notifyListeners();
  }

  Future<List<ResultEntity>> fetchResults({required String type}) {
    return _repository.fetchResults(type: type);
  }

  Future<void> modalClearResults({
    required BuildContext context,
    required Widget widget,
  }) async {
    bool? confirmed = await showModalBottomSheet(
        constraints: const BoxConstraints(maxHeight: 300),
        context: context,
        builder: (context) => widget);
    confirmed ?? false ? _repository.clearResults() : null;
  }
}
