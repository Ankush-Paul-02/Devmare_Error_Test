import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomCheckBox extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomCheckBox(
      {super.key, required this.tabController, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: const CircleBorder(),
          value: false,
          onChanged: (value) {},
        ),
        text.text.normal.headline6(context).white.make()
      ],
    );
  }
}
