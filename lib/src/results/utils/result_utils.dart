import 'package:weight_tracker/src/home/domain/entities/result_entity.dart';

class ResultUtils {
  double maxY(List<ResultEntity> listResults) {
    var bigger = listResults.last.listExercises.map((e) => e.peso).toList();
    return bigger.reduce((value, element) => value + element).toDouble();
  }
}
