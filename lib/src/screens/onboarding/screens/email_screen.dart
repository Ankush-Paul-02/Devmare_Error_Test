import 'package:devmare/src/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/widgets.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            TextHeader(
              tabController: tabController,
              text: 'What\'s Your Email Address?',
            ),
            20.heightBox,
            CustomTextField(
              text: 'Enter your Email..',
              controller: emailController,
            ),
            100.heightBox,
            TextHeader(
              tabController: tabController,
              text: 'Choose Your Password',
            ),
            20.heightBox,
            CustomTextField(
              text: 'Enter your Password..',
              controller: passwordController,
            ),
          ],
        ).scrollVertical().expand(),
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
              onTap: () async {
                try {
                  if (emailController != null) {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    )
                        .then((value) {
                      tabController.animateTo(tabController.index + 1);
                      VxToast.show(context, msg: 'User Added...');
                    }).catchError((error) {
                      VxToast.show(context, msg: 'Failed to Add User : $error');
                    });
                  }
                } catch (e) {
                  VxToast.show(context, msg: e.toString());
                }
              },
            ),
          ],
        ),
      ],
    ).pSymmetric(h: 30, v: 30);
  }
}
