import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

class Triceps extends TreinoEntity {
  static List<ExercicioEntity> listExercicios = [
    tricepsCoice,
    tricepsCorda,
    tricepsTesta,
    tricepsFrances,
    tricepsSupino,
    tricepsPuxador,
    tricepsMergulho,
    tricepsKickback,
  ];

  static ExercicioEntity tricepsCoice = ExercicioEntity(
      nome: 'Tríceps Coice',
      imagem: MyAssets.triceps,
      id: '',
      peso: 0,
      type: TypeExercise.triceps);

  static ExercicioEntity tricepsCorda = ExercicioEntity(
      nome: 'Tríceps Corda',
      imagem: MyAssets.triceps,
      id: '',
      peso: 0,
      type: TypeExercise.triceps);

  static ExercicioEntity tricepsTesta = ExercicioEntity(
      nome: 'Tríceps Testa',
      imagem: MyAssets.triceps,
      id: '8',
      peso: 0,
      type: TypeExercise.triceps);

  static ExercicioEntity tricepsFrances = ExercicioEntity(
      nome: 'Tríceps Francês',
      imagem: MyAssets.triceps,
      id: '9',
      peso: 0,
      type: TypeExercise.triceps);

  static ExercicioEntity tricepsSupino = ExercicioEntity(
      nome: 'Tríceps Supino',
      imagem: MyAssets.triceps,
      id: '10',
      peso: 0,
      type: TypeExercise.triceps);

  static ExercicioEntity tricepsPuxador = ExercicioEntity(
      nome: 'Tríceps Puxador',
      imagem: MyAssets.triceps,
      id: '11',
      peso: 0,
      type: TypeExercise.triceps);

  static ExercicioEntity tricepsMergulho = ExercicioEntity(
      nome: 'Tríceps Mergulho',
      imagem: MyAssets.triceps,
      id: '12',
      peso: 0,
      type: TypeExercise.triceps);

  static ExercicioEntity tricepsKickback = ExercicioEntity(
      nome: 'Tríceps Kickback',
      imagem: MyAssets.triceps,
      id: '13',
      peso: 0,
      type: TypeExercise.triceps);

  Triceps({
    required super.id,
    required super.treino,
  });
}
