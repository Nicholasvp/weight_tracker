import 'package:intl/intl.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/result_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/app_status.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

class HomeStore {
  AppStatus appStatus = AppStatus.initial;
  int currentPage = 0;
  bool isExercise = true;
  bool isResults = false;
  String datetime = DateFormat('dd-MM-yyyy').format(DateTime.now());

  TypeExercise treino = TypeExercise.peito;

  List<ExercicioEntity> exercises = [];
  List<ResultEntity?> listResults = [];
}
