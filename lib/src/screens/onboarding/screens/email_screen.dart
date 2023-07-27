import 'package:devmare/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/widgets.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            TextHeader(
              tabController: tabController,
              text: 'What\'s Your Email Address?',
            ),
            30.heightBox,
            CustomTextField(
              text: 'Enter your Email..',
              tabController: tabController,
            ),
          ],
        ),
        Column(
          children: [
            const StepProgressIndicator(
              totalSteps: 6,
              currentStep: 1,
              selectedColor: accentColor,
            ),
            5.heightBox,
            CustomButton(
              tabController: tabController,
              text: 'NEXT STEP',
            ),
          ],
        ),
      ],
    ).pSymmetric(h: 30, v: 30);
  }
}
