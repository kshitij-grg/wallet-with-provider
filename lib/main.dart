import 'package:flutter/material.dart';
import 'package:flutter_online_shop/provider/providers.dart';
import 'package:flutter_online_shop/route_generator.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreenRoute,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
