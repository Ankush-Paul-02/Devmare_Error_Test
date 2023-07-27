import 'package:devmare/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomButton(
      {super.key, required this.tabController, required this.text});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          colors: [
            primaryColor,
            accentColor,
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(),
        ),
        onPressed: () {
          tabController.animateTo(tabController.index + 1);
        },
        child:
            text.text.white.semiBold.make().centered().box.width(100.w).make(),
      ),
    );
  }
}
