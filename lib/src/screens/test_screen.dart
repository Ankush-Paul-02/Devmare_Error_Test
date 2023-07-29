import 'package:devmare/src/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'onboarding/widgets/custom_button.dart';
import 'onboarding/widgets/custom_text_field.dart';
import 'onboarding/widgets/custom_text_header.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CustomTextField(
                  text: 'Enter your Email..',
                  controller: emailController,
                ),
                100.heightBox,
                20.heightBox,
                CustomTextField(
                  text: 'Enter your Password..',
                  controller: passwordController,
                ),
              ],
            ).scrollVertical().expand(),
            Column(
              children: [
                // const StepProgressIndicator(
                //   totalSteps: 6,
                //   currentStep: 1,
                //   selectedColor: accentColor,
                // ),
                // 5.heightBox,
                CustomButton(
                  // tabController: tabController,
                  text: 'NEXT STEP',
                  onTap: () async {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      )
                          .then((value) {
                        // tabController.animateTo(tabController.index + 1);
                        VxToast.show(context, msg: 'User Added...');
                      }).catchError((error) {
                        VxToast.show(context,
                            msg: 'Failed to Add User : $error');
                      });
                    } catch (e) {
                      VxToast.show(context, msg: e.toString());
                    }
                  },
                ),
              ],
            ),
          ],
        ).pSymmetric(h: 30, v: 30));
  }
}
