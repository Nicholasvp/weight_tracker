import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/home/presenter/controller/home_controller.dart';
import 'package:weight_tracker/src/results/widgets/chart_bar_example.dart';

class CharpsPage extends StatelessWidget {
  const CharpsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Consumer<HomeController>(
        builder: (context, controller, _) {
          print(controller.store.listResults);
          return const BarChartSample3();
        },
      ),
    );
  }
}
