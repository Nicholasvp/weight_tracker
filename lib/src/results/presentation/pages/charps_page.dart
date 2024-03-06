import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weight_tracker/src/home/domain/entities/result_entity.dart';
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
          List<ResultEntity?> listResults = controller.store.listResults;
          if (listResults.isEmpty) {
            return const Center(
              child: Text('Nenhum resultado encontrado'),
            );
          }
          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: listResults.first!.listExercises.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listResults.first!.listExercises[index].nome,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 300,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        child: BarChartSample3(
                          listResults: listResults.cast<ResultEntity>(),
                          exerciseName:
                              listResults.first!.listExercises[index].nome,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
