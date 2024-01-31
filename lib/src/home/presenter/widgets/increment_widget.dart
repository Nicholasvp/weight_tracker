import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';

class IncrementWidget extends StatelessWidget {
  const IncrementWidget({
    super.key,
    required this.exercise,
  });

  final ExercicioEntity exercise;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, child) {
        return Center(
          child: SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    controller.decrement(exercise);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  exercise.peso.toString(),
                  style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'kg',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () => controller.increment(exercise),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
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
