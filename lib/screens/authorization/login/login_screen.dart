import 'package:flutter/material.dart';
import 'package:flutter_online_shop/screens/authorization/login/components/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}
