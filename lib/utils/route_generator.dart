import 'package:flutter/material.dart';
import 'package:whats_flutter/screens/home_screen/home_screen.dart';
import 'package:whats_flutter/screens/main_screen/main_screen.dart';
import 'package:whats_flutter/screens/signup_screen/signup_screen.dart';
import 'package:whats_flutter/utils/constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME_ROUTE_KEY:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case SIGNUP_ROUTE_KEY:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

      case MAIN_ROUTE_KEY:
        return MaterialPageRoute(builder: (_) => const MainScreen());

      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
