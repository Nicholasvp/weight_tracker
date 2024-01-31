import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';
import 'package:weight_tracker/src/home/presenter/page/exercise_page.dart';
import 'package:weight_tracker/src/home/presenter/page/results_page.dart';

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(builder: (context, controller, _) {
      switch (controller.store.currentPage) {
        case 0:
          return const ExercisePage();
        case 1:
          return const ResultsPage();
        default:
          return const Text('Home');
      }
    });
  }
}
