import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/core/my_text.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(builder: (context, controller, _) {
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
                        controller.repository.getItems();
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
                  onPressed: () => controller.repository.clearResults(),
                  child: const Text('Limpar resultados')),
              ElevatedButton(
                  onPressed: () => controller.repository.clearTreino(),
                  child: const Text('Limpar treinos')),
            ],
          ),
        ),
      );
    });
  }
}
