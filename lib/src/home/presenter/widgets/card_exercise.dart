import 'package:flutter/material.dart';
import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/core/my_colors.dart';
import 'package:weight_tracker/src/core/my_text.dart';
import 'package:weight_tracker/src/home/domain/entities/exercicio_entity.dart';
import 'package:weight_tracker/src/home/presenter/widgets/increment_widget.dart';

class CardExercise extends StatelessWidget {
  final ExercicioEntity exercise;

  const CardExercise({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.primary,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(
                    exercise.imagem,
                  ),
                ),
              ),
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 220,
              child: Column(
                children: [
                  Text(
                    exercise.nome,
                    textAlign: TextAlign.center,
                    style: MyText.title.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  IncrementWidget(exercise: exercise),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
