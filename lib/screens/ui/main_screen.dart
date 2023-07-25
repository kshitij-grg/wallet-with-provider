import 'package:flutter/material.dart';
import 'package:flutter_online_shop/provider/main_screen_provider.dart';
import 'package:flutter_online_shop/screens/ui/cart/cart_screen.dart';
import 'package:flutter_online_shop/screens/ui/home/home_screen.dart';
import 'package:flutter_online_shop/screens/ui/profile/profile_screen.dart';
import 'package:flutter_online_shop/screens/ui/search/search_screen.dart';
import 'package:provider/provider.dart';

import '../shared/custom_bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> pageList = [
    const HomeScreen(),
    const SearchScreen(),
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenProvider>(
        builder: (context, mainScreenProvider, child) {
      return Scaffold(
        backgroundColor: const Color(0xffe2e2e2),
        body: pageList[mainScreenProvider.pageIndex],
        bottomNavigationBar: const CustomBottomNavBar(),
      );
    });
  }
}
