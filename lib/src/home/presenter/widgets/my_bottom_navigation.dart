// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weight_tracker/src/core/my_assets.dart';
import 'package:weight_tracker/src/core/my_colors.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';
import 'package:weight_tracker/src/home/presenter/widgets/icon_navigattion.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 10,
          offset: const Offset(0, -5),
        ),
      ], color: MyColors.primary),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<HomeController>(builder: (context, controller, child) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    controller.toExercisePage();
                  },
                  child: IconNavigation(
                    icon: MyAssets.iconWeight,
                    selected: controller.store.isExercise,
                    label: 'Exercicios',
                  )),
              InkWell(
                onTap: () {
                  controller.toResultsPage();
                },
                child: IconNavigation(
                  icon: MyAssets.iconSharp,
                  selected: controller.store.isResults,
                  label: 'Resultados',
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
