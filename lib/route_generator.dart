import 'package:flutter/material.dart';
import 'package:flutter_online_shop/routes.dart';
import 'package:flutter_online_shop/screens/ui/authorization/login/login_screen.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
    }
    return null;
  }
}
