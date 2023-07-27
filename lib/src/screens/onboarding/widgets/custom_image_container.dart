import 'package:devmare/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          bottom: BorderSide(color: white, width: 1),
          top: BorderSide(color: white, width: 1),
          left: BorderSide(color: white, width: 1),
          right: BorderSide(color: white, width: 1),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: const Icon(
            Icons.add_a_photo_outlined,
            color: accentColor,
          ).onTap(() {}),
        ),
      ),
    ).pOnly(bottom: 10, right: 10);
  }
}
