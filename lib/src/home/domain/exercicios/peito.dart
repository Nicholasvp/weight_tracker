import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/result_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';

class Peito extends TreinoEntity {
  final controller = HomeController();

  static List<ExercicioEntity> listExercicios = [
    supinoReto,
    supinoInclinado,
    flexaoDeBracos,
    supinoDeclinado,
    crossoverComCabos,
    pulloverComHalteres,
    crucifixo,
  ];

  static ExercicioEntity supinoReto = ExercicioEntity(
    nome: 'Supino Reto',
    imagem: MyAssets.peito,
    id: '1',
    peso: 0,
    type: TypeExercise.peito,
  );

  static ExercicioEntity supinoInclinado = ExercicioEntity(
    nome: 'Supino Inclinado',
    imagem: MyAssets.peito,
    id: '2',
    peso: 0,
    type: TypeExercise.peito,
  );

  static ExercicioEntity flexaoDeBracos = ExercicioEntity(
    nome: 'Flexão de Braços',
    imagem: MyAssets.peito,
    id: '3',
    peso: 0,
    type: TypeExercise.peito,
  );

  static ExercicioEntity supinoDeclinado = ExercicioEntity(
    nome: 'Supino Declinado',
    imagem: MyAssets.peito,
    id: '4',
    peso: 0,
    type: TypeExercise.peito,
  );

  static ExercicioEntity crossoverComCabos = ExercicioEntity(
    nome: 'Crossover com Cabos',
    imagem: MyAssets.peito,
    id: '5',
    peso: 0,
    type: TypeExercise.peito,
  );

  static ExercicioEntity pulloverComHalteres = ExercicioEntity(
    nome: 'Pullover com Halteres',
    imagem: MyAssets.peito,
    id: '6',
    peso: 0,
    type: TypeExercise.peito,
  );
  static ExercicioEntity crucifixo = ExercicioEntity(
    nome: 'Crucifixo',
    imagem: MyAssets.peito,
    id: '7',
    peso: 0,
    type: TypeExercise.peito,
  );

  Peito({required super.id, required super.treino});
}
