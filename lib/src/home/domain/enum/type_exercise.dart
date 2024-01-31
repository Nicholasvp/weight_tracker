enum TypeExercise {
  peito,
  triceps,
  ombro,
  costas,
  biceps,
  quadriceps,
  posterior,
}

class TypeExerciseUtils {
  static TypeExercise stringToTypeExercise(String value) {
    switch (value) {
      case 'peito':
        return TypeExercise.peito;
      case 'triceps':
        return TypeExercise.triceps;
      case 'ombro':
        return TypeExercise.ombro;
      case 'costas':
        return TypeExercise.costas;
      case 'biceps':
        return TypeExercise.biceps;
      case 'quadriceps':
        return TypeExercise.quadriceps;
      case 'posterior':
        return TypeExercise.posterior;
      default:
        throw Exception('Invalid TypeExercise value: $value');
    }
  }
}
