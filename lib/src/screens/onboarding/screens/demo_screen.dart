import 'package:devmare/src/screens/onboarding/widgets/custom_checkbox.dart';
import 'package:devmare/src/screens/onboarding/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_header.dart';

class DemoScreen extends StatelessWidget {
  final TabController tabController;
  const DemoScreen({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final demoController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextHeader(
                  tabController: tabController,
                  text: 'What\'s Your Gender?',
                ),
                10.heightBox,
                CustomCheckBox(tabController: tabController, text: 'MALE'),
                5.heightBox,
                CustomCheckBox(tabController: tabController, text: 'FEMALE'),
                100.heightBox,
                TextHeader(
                  tabController: tabController,
                  text: 'What\'s Your Age?',
                ),
                20.heightBox,
                CustomTextField(
                  text: 'Enter your age...',
                  controller: demoController,
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            const StepProgressIndicator(
              totalSteps: 6,
              currentStep: 3,
              selectedColor: accentColor,
            ),
            5.heightBox,
            CustomButton(
              tabController: tabController,
              text: 'NEXT STEP',
              onTap: (){},
            ),
          ],
        ),
      ],
    ).pSymmetric(h: 30, v: 30);
  }
}
