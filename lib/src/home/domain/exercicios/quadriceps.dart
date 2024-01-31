import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

class Quadriceps extends TreinoEntity {
  static List<ExercicioEntity> listExercicios = [
    agachamento,
    legPress,
    avanco,
    extensaoDeQuadril,
    hackMachine,
    avancoNoSmith,
    mesaFlexora,
    stiff,
  ];

  static ExercicioEntity agachamento = ExercicioEntity(
      nome: 'Agachamento',
      imagem: MyAssets.quadriceps,
      id: '47',
      peso: 0,
      type: TypeExercise.quadriceps);

  static ExercicioEntity legPress = ExercicioEntity(
      nome: 'Leg Press',
      imagem: MyAssets.quadriceps,
      id: '48',
      peso: 0,
      type: TypeExercise.quadriceps);

  static ExercicioEntity avanco = ExercicioEntity(
      nome: 'Avanço',
      imagem: MyAssets.quadriceps,
      id: '49',
      peso: 0,
      type: TypeExercise.quadriceps);

  static ExercicioEntity extensaoDeQuadril = ExercicioEntity(
      nome: 'Extensão de Quadril',
      imagem: MyAssets.quadriceps,
      id: '50',
      peso: 0,
      type: TypeExercise.quadriceps);

  static ExercicioEntity hackMachine = ExercicioEntity(
      nome: 'Hack Machine',
      imagem: MyAssets.quadriceps,
      id: '51',
      peso: 0,
      type: TypeExercise.quadriceps);

  static ExercicioEntity avancoNoSmith = ExercicioEntity(
      nome: 'Avanço no Smith',
      imagem: MyAssets.quadriceps,
      id: '52',
      peso: 0,
      type: TypeExercise.quadriceps);

  static ExercicioEntity mesaFlexora = ExercicioEntity(
      nome: 'Mesa Flexora',
      imagem: MyAssets.quadriceps,
      id: '53',
      peso: 0,
      type: TypeExercise.quadriceps);

  static ExercicioEntity stiff = ExercicioEntity(
      nome: 'Stiff',
      imagem: MyAssets.quadriceps,
      id: '54',
      peso: 0,
      type: TypeExercise.quadriceps);

  Quadriceps({
    required super.id,
    required super.treino,
  });
}
