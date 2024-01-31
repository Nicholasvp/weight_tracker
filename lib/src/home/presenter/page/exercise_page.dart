import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/core/my_text.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/domain/entities/result_entity.dart';
import 'package:weight_tracker/src/home/domain/enum/app_status.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';
import 'package:weight_tracker/src/home/presenter/widgets/buttom_submit.dart';
import 'package:weight_tracker/src/home/presenter/widgets/card_exercise.dart';
import 'package:weight_tracker/src/home/presenter/widgets/home_categories.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({
    super.key,
  });

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Consumer<HomeController>(builder: (context, controller, _) {
        var type = controller.store.treino;

        List<ExercicioEntity> listExercise = controller.getExercises(type);
        controller.store.exercises = listExercise;
        return switch (controller.store.appStatus) {
          AppStatus.initial => Column(
              children: [
                const HomeCategories(),
                const SizedBox(height: 22),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: listExercise.length,
                    itemBuilder: (context, index) {
                      return CardExercise(
                        exercise: listExercise[index],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 22),
                ButtomSubmit(
                  label: 'FINALIZAR',
                  onPressed: () => controller.saveTreino(),
                )
              ],
            ),
          AppStatus.loading => const Center(
              child: CircularProgressIndicator(),
            ),
          AppStatus.finished => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Treino salvo\ncom sucesso!',
                    textAlign: TextAlign.center,
                    style: MyText.title.copyWith(color: Colors.white),
                  ),
                ),
                TextButton.icon(
                  onPressed: () => controller.newTreino(),
                  icon: const Icon(Icons.add, color: Colors.yellow),
                  label: Text(
                    'Criar novo treino',
                    style: MyText.subtitle.copyWith(color: Colors.yellow),
                  ),
                )
              ],
            ),
          _ => const SizedBox.shrink(),
        };
      }),
    );
  }
}
