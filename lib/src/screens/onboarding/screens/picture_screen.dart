import 'package:devmare/src/screens/onboarding/widgets/custom_image_container.dart';
import 'package:devmare/src/screens/onboarding/widgets/custom_text_header.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/colors.dart';
import '../widgets/custom_button.dart';

class PictureScreen extends StatelessWidget {
  final TabController tabController;
  const PictureScreen({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(
                text: 'Add 2 or More Pictures', tabController: tabController),
            30.heightBox,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageContainer(),
                CustomImageContainer(),
                CustomImageContainer(),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageContainer(),
                CustomImageContainer(),
                CustomImageContainer(),
              ],
            ),
          ],
        ),
        Column(
          children: [
            const StepProgressIndicator(
              totalSteps: 6,
              currentStep: 4,
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
