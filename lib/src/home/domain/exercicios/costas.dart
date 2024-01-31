import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';

class Costas extends TreinoEntity {
  static List<ExercicioEntity> listExercicios = [
    pullUp,
    barraFixa,
    remadaCurvada,
    puxadaFrontal,
    pulldownComCorda,
    levantamentoTerra,
    pulldownComHalteres,
    pulleyInvertido,
  ];

  static ExercicioEntity pullUp = ExercicioEntity(
      nome: 'Pull-up',
      imagem: MyAssets.costas,
      id: '14',
      peso: 0,
      type: TypeExercise.costas);

  static ExercicioEntity barraFixa = ExercicioEntity(
      nome: 'Barra Fixa',
      imagem: MyAssets.costas,
      id: '15',
      peso: 0,
      type: TypeExercise.costas);

  static ExercicioEntity remadaCurvada = ExercicioEntity(
      nome: 'Remada Curvada',
      imagem: MyAssets.costas,
      id: '16',
      peso: 0,
      type: TypeExercise.costas);

  static ExercicioEntity puxadaFrontal = ExercicioEntity(
      nome: 'Puxada Frontal',
      imagem: MyAssets.costas,
      id: '17',
      peso: 0,
      type: TypeExercise.costas);

  static ExercicioEntity pulldownComCorda = ExercicioEntity(
      nome: 'Pulldown com Corda',
      imagem: MyAssets.costas,
      id: '18',
      peso: 0,
      type: TypeExercise.costas);

  static ExercicioEntity levantamentoTerra = ExercicioEntity(
      nome: 'Levantamento Terra',
      imagem: MyAssets.costas,
      id: '19',
      peso: 0,
      type: TypeExercise.costas);

  static ExercicioEntity pulldownComHalteres = ExercicioEntity(
      nome: 'Pulldown com Halteres',
      imagem: MyAssets.costas,
      id: '20',
      peso: 0,
      type: TypeExercise.costas);

  static ExercicioEntity pulleyInvertido = ExercicioEntity(
      nome: 'Pulley Invertido',
      imagem: MyAssets.costas,
      id: '21',
      peso: 0,
      type: TypeExercise.costas);

  Costas({
    required super.id,
    required super.treino,
  });
}
