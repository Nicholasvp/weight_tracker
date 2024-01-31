import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

class Posterior extends TreinoEntity {
  static List<ExercicioEntity> listExercicios = [
    stiff,
    flexorSentado,
    flexorDeitado,
    cadeiraFlexora,
    avancoNoSmith,
    legCurl,
    pesoMorto,
    goodMorning,
  ];

  static ExercicioEntity stiff = ExercicioEntity(
      nome: 'Stiff',
      imagem: MyAssets.posterior,
      id: '39',
      peso: 0,
      type: TypeExercise.posterior);

  static ExercicioEntity flexorSentado = ExercicioEntity(
      nome: 'Flexor Sentado',
      imagem: MyAssets.posterior,
      id: '40',
      peso: 0,
      type: TypeExercise.posterior);

  static ExercicioEntity flexorDeitado = ExercicioEntity(
      nome: 'Flexor Deitado',
      imagem: MyAssets.posterior,
      id: '41',
      peso: 0,
      type: TypeExercise.posterior);

  static ExercicioEntity cadeiraFlexora = ExercicioEntity(
      nome: 'Cadeira Flexora',
      imagem: MyAssets.posterior,
      id: '42',
      peso: 0,
      type: TypeExercise.posterior);

  static ExercicioEntity avancoNoSmith = ExercicioEntity(
      nome: 'Avanço no Smith',
      imagem: MyAssets.posterior,
      id: '43',
      peso: 0,
      type: TypeExercise.posterior);

  static ExercicioEntity legCurl = ExercicioEntity(
      nome: 'Leg Curl',
      imagem: MyAssets.posterior,
      id: '44',
      peso: 0,
      type: TypeExercise.posterior);

  static ExercicioEntity pesoMorto = ExercicioEntity(
      nome: 'Peso Morto',
      imagem: MyAssets.posterior,
      id: '45',
      peso: 0,
      type: TypeExercise.posterior);

  static ExercicioEntity goodMorning = ExercicioEntity(
      nome: 'Good Morning',
      imagem: MyAssets.posterior,
      id: '46',
      peso: 0,
      type: TypeExercise.posterior);

  Posterior({
    required super.id,
    required super.treino,
  });
}
