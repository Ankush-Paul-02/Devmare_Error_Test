import 'package:devmare/src/constants/colors.dart';
import 'package:devmare/src/model/models.dart';
import 'package:devmare/src/screens/widgets/choice_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = User.users[0];
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 45, top: 25, left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(User.users[0].imageUrls[0]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.redAccent,
                          icon: Icons.clear_outlined,
                          hasGradient: false,
                        ),
                        ChoiceButton(
                          width: 75,
                          height: 75,
                          size: 30,
                          color: Colors.white,
                          hasGradient: true,
                          icon: Icons.favorite,
                        ),
                        ChoiceButton(
                          color: Colors.brown,
                          icon: Icons.watch_later_outlined,
                          hasGradient: false,
                          size: 25,
                          height: 60,
                          width: 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              '${user.name} ${user.age}'.text.white.size(22).semiBold.make(),
            ],
          )
        ],
      ),
    );
  }
}
