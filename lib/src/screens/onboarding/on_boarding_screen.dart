import 'package:devmare/src/constants/colors.dart';
import 'package:devmare/src/screens/onboarding/screens/bio_screen.dart';
import 'package:devmare/src/screens/onboarding/screens/demo_screen.dart';
import 'package:devmare/src/screens/onboarding/screens/email_screen.dart';
import 'package:devmare/src/screens/onboarding/screens/email_verify_screen.dart';
import 'package:devmare/src/screens/onboarding/screens/picture_screen.dart';
import 'package:devmare/src/screens/onboarding/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  static const String routeName = '/onBoarding';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const OnBoardingScreen(),
    );
  }

  //! Tab names
  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Start'),
    Tab(text: 'Email'),
    Tab(text: 'Email Verification'),
    Tab(text: 'Demographics'),
    Tab(text: 'Pictures'),
    Tab(text: 'Biography'),
    // Tab(text: 'Location')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });
          return Scaffold(
            appBar: AppBar(
              backgroundColor: bgColor,
              automaticallyImplyLeading: false,
              title: 'Devmare'.text.white.size(28).semiBold.make().centered(),
            ),
            backgroundColor: bgColor,
            body: TabBarView(
              children: [
                StartScreen(tabController: tabController),
                EmailScreen(tabController: tabController),
                EmailVerifyScreen(tabController: tabController),
                DemoScreen(tabController: tabController),
                PictureScreen(tabController: tabController),
                BioScreen(tabController: tabController),
              ],
            ),
          );
        },
      ),
    );
  }
}
