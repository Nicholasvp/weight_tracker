import 'package:flutter/material.dart';
import 'package:weight_tracker/src/home/domain/entities/treino_entity.dart';

class CharpsPage extends StatelessWidget {
  const CharpsPage({super.key, required this.treinoEntity});
  final TreinoEntity treinoEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}
