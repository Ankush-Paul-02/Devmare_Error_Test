// ignore_for_file: unreachable_switch_case

import 'package:devmare/src/model/models.dart';
import 'package:devmare/src/screens/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/home/home_scree.dart';
import '../../screens/user/user_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case UserScreen.routeName:
        return UserScreen.route(user: settings.arguments as User);
      case OnBoardingScreen.routeName:
        return OnBoardingScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: const Text('error'))),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
