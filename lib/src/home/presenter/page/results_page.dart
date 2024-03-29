import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/core/my_text.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';
import 'package:weight_tracker/src/home/presenter/widgets/modal_clear.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, _) {
        List<TypeExercise> listExercise = controller.getTreino();
        return Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 22),
                    itemCount: listExercise.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        onPressed: () async {
                          await controller
                              .fetchResults(type: listExercise[index].name)
                              .then((listResults) {
                            controller.store.listResults = listResults;
                            Navigator.pushNamed(context, '/charps');
                          });
                        },
                        child: Text(
                          listExercise[index].name.toUpperCase(),
                          style: MyText.subtitle,
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () => controller.modalClearResults(
                    context: context,
                    widget: const ModalClear(),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Text(
                        'Limpar resultados',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
