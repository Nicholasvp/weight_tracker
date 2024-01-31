import 'package:flutter/material.dart';
import 'package:weight_tracker/src/core/my_colors.dart';
import 'package:weight_tracker/src/core/my_text.dart';

class ButtomSubmit extends StatelessWidget {
  const ButtomSubmit({super.key, required this.label, required this.onPressed});
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: MyText.subtitle.copyWith(
          fontWeight: FontWeight.bold,
          color: MyColors.primary,
        ),
      ),
    );
  }
}
