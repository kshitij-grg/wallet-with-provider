import 'package:flutter/material.dart';

import 'components/register_number_body.dart';

class RegisterNumberScreen extends StatelessWidget {
  const RegisterNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterNumberBody(),
    );
  }
}
