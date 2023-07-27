import 'package:devmare/src/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TabController tabController;
  const CustomTextField(
      {super.key, required this.text, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: black,
      decoration: InputDecoration(
        filled: true,
        fillColor: white,
        hintText: text,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
