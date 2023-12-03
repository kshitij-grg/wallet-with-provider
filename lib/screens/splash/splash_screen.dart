import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_online_shop/util/colors.dart';
import 'package:lottie/lottie.dart';

import '../../../routes.dart';
import '../../../util/dimensions.dart';
import '../../../util/images.dart';
import '../../../util/lotties.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fPRIMARY_DARK_COLOR,
      body: SafeArea(
        child: SizedBox(
          width: Dimensions(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Visibility(
                  visible: false,
                  child: Lottie.asset(
                    lottieLoading,
                    width: Dimensions(context).width / 2,
                  ),
                ),
              ),
              Image.asset(
                imageLogoWhite,
                width: Dimensions(context).width / 2.5,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Lottie.asset(
                  lottieLoading,
                  width: Dimensions(context).width / 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Routes.loginScreenRoute);
    });
  }
}
