import 'package:flutter_online_shop/provider/login_provider.dart';
import 'package:flutter_online_shop/provider/main_screen_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<MainScreenProvider>(
      create: (_) => MainScreenProvider()),
  ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
];
