import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

class Ombro extends TreinoEntity {
  static List<ExercicioEntity> listExercicios = [
    desenvolvimentoFrontal,
    desenvolvimentoLateral,
    elevacaoFrontal,
    elevacaoLateral,
    desenvolvimentoArnold,
    remadaAlta,
    facePull,
    pressaArnold,
  ];

  static ExercicioEntity desenvolvimentoFrontal = ExercicioEntity(
      nome: 'Desenvolvimento Frontal',
      imagem: MyAssets.ombro,
      id: '30',
      peso: 0,
      type: TypeExercise.ombro);

  static ExercicioEntity desenvolvimentoLateral = ExercicioEntity(
      nome: 'Desenvolvimento Lateral',
      imagem: MyAssets.ombro,
      id: '31',
      peso: 0,
      type: TypeExercise.ombro);

  static ExercicioEntity elevacaoFrontal = ExercicioEntity(
      nome: 'Elevação Frontal',
      imagem: MyAssets.ombro,
      id: '32',
      peso: 0,
      type: TypeExercise.ombro);

  static ExercicioEntity elevacaoLateral = ExercicioEntity(
      nome: 'Elevação Lateral',
      imagem: MyAssets.ombro,
      id: '33',
      peso: 0,
      type: TypeExercise.ombro);

  static ExercicioEntity desenvolvimentoArnold = ExercicioEntity(
      nome: 'Desenvolvimento Arnold',
      imagem: MyAssets.ombro,
      id: '34',
      peso: 0,
      type: TypeExercise.ombro);

  static ExercicioEntity remadaAlta = ExercicioEntity(
      nome: 'Remada Alta',
      imagem: MyAssets.ombro,
      id: '35',
      peso: 0,
      type: TypeExercise.ombro);

  static ExercicioEntity facePull = ExercicioEntity(
      nome: 'Face Pull',
      imagem: MyAssets.ombro,
      id: '36',
      peso: 0,
      type: TypeExercise.ombro);

  static ExercicioEntity pressaArnold = ExercicioEntity(
      nome: 'Pressa Arnold',
      imagem: MyAssets.ombro,
      id: '37',
      peso: 0,
      type: TypeExercise.ombro);

  Ombro({
    required super.id,
    required super.treino,
  });
}
