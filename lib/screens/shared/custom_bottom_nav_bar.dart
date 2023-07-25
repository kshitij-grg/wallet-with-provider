import 'package:flutter/material.dart';
import 'package:flutter_online_shop/provider/main_screen_provider.dart';
import 'package:flutter_online_shop/util/icons.dart';
import 'package:provider/provider.dart';

import 'custom_bottom_nav_widget.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenProvider>(
        builder: (context, mainScreenProvider, child) {
      return ColoredBox(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              // padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBottomNavWidget(
                      onTap: () {
                        mainScreenProvider.pageIndex = 0;
                      },
                      icon: iconHome),
                  CustomBottomNavWidget(
                      onTap: () {
                        mainScreenProvider.pageIndex = 1;
                      },
                      icon: iconSearch),
                  CustomBottomNavWidget(
                      onTap: () {
                        mainScreenProvider.pageIndex = 2;
                      },
                      icon: iconAdd),
                  CustomBottomNavWidget(
                      onTap: () {
                        mainScreenProvider.pageIndex = 3;
                      },
                      icon: iconCart),
                  CustomBottomNavWidget(
                      onTap: () {
                        mainScreenProvider.pageIndex = 4;
                      },
                      icon: iconUser),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
