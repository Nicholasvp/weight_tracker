import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/core/my_colors.dart';
import 'package:weight_tracker/src/core/my_text.dart';
import 'package:weight_tracker/src/home/domain/enum/type_exercise.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, _) {
        List<TypeExercise> listExercise = controller.getTreino();
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listExercise.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        controller.changeTreino(listExercise[index]);
                      },
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          listExercise[index].name,
                          style: MyText.body.copyWith(
                              color: MyColors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
