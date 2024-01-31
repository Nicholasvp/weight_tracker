import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

class Biceps extends TreinoEntity {
  static List<ExercicioEntity> listExercicios = [
    bicepsRoscaDireta,
    bicepsRoscaAlternada,
    bicepsRoscaMartelo,
    bicepsRoscaScott,
    bicepsRoscaConcentrada,
    bicepsRoscaInversa,
    bicepsRosca21,
    bicepsRoscaArana,
  ];

  static ExercicioEntity bicepsRoscaDireta = ExercicioEntity(
      nome: 'Bíceps Rosca Direta',
      imagem: MyAssets.biceps,
      id: '22',
      peso: 0,
      type: TypeExercise.biceps);

  static ExercicioEntity bicepsRoscaAlternada = ExercicioEntity(
      nome: 'Bíceps Rosca Alternada',
      imagem: MyAssets.biceps,
      id: '23',
      peso: 0,
      type: TypeExercise.biceps);

  static ExercicioEntity bicepsRoscaMartelo = ExercicioEntity(
      nome: 'Bíceps Rosca Martelo',
      imagem: MyAssets.biceps,
      id: '24',
      peso: 0,
      type: TypeExercise.biceps);

  static ExercicioEntity bicepsRoscaScott = ExercicioEntity(
      nome: 'Bíceps Rosca Scott',
      imagem: MyAssets.biceps,
      id: '25',
      peso: 0,
      type: TypeExercise.biceps);

  static ExercicioEntity bicepsRoscaConcentrada = ExercicioEntity(
      nome: 'Bíceps Rosca Concentrada',
      imagem: MyAssets.biceps,
      id: '26',
      peso: 0,
      type: TypeExercise.biceps);

  static ExercicioEntity bicepsRoscaInversa = ExercicioEntity(
      nome: 'Bíceps Rosca Inversa',
      imagem: MyAssets.biceps,
      id: '27',
      peso: 0,
      type: TypeExercise.biceps);

  static ExercicioEntity bicepsRosca21 = ExercicioEntity(
      nome: 'Bíceps Rosca 21',
      imagem: MyAssets.biceps,
      id: '28',
      peso: 0,
      type: TypeExercise.biceps);

  static ExercicioEntity bicepsRoscaArana = ExercicioEntity(
      nome: 'Bíceps Rosca Aranha',
      imagem: MyAssets.biceps,
      id: '29',
      peso: 0,
      type: TypeExercise.biceps);

  Biceps({
    required super.id,
    required super.treino,
  });
}
