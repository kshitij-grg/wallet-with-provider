import 'package:flutter/material.dart';
import 'package:flutter_online_shop/routes.dart';
import 'package:flutter_online_shop/screens/authorization/registration/register_number/register_number_screen.dart';

import 'screens/authorization/login/login_screen.dart';
import 'screens/splash/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreenRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.registerScreenRoute:
        return MaterialPageRoute(builder: (_) => const RegisterNumberScreen());
      default:
    }
    return null;
  }
}
