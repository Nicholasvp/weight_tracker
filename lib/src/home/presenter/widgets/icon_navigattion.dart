import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weight_tracker/src/core/my_colors.dart';
import 'package:weight_tracker/src/core/my_text.dart';

class IconNavigation extends StatelessWidget {
  const IconNavigation({
    Key? key,
    required this.selected,
    required this.label,
    required this.icon,
  }) : super(key: key);
  final bool selected;
  final String label;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          icon,
          color: selected ? MyColors.white : MyColors.secondary,
        ),
        Text(
          label,
          style: MyText.subtitle
              .copyWith(color: selected ? MyColors.white : MyColors.secondary),
        ),
      ],
    );
  }
}
