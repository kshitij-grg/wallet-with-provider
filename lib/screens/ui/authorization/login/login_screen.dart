import 'package:flutter/material.dart';
import 'package:flutter_online_shop/provider/login_provider.dart';
import 'package:flutter_online_shop/util/dimensions.dart';
import 'package:flutter_online_shop/util/icons.dart';
import 'package:flutter_online_shop/util/images.dart';
import 'package:flutter_online_shop/util/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/custom_text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<LoginProvider>(builder: (context, _, __) {
          return Column(
            children: [
              SizedBox(
                width: Dimensions(context).width,
                height: Dimensions(context).height / 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Image.asset(
                        imageBuilding,
                        fit: BoxFit.cover,
                        height: Dimensions(context).height / 3,
                      ),
                      Positioned.fill(
                        child: Opacity(
                          opacity: .6,
                          child: Container(
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        left: 30,
                        child: appText(
                          'Login',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Dimensions.verticalSBox3,
              Dimensions.verticalSBox1,
              Padding(
                padding: Dimensions.appPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    appText(
                      'Phone Number',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    Dimensions.verticalSBox1,
                    const CustomTextFieldWidget(
                      hint: 'Enter your phone number',
                      textInputType: TextInputType.phone,
                    ),
                    Dimensions.verticalSBox2,
                    appText(
                      'Password',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    Dimensions.verticalSBox1,
                    CustomTextFieldWidget(
                      hint: '* * * * * * * *',
                      textInputType: TextInputType.phone,
                      isForPassword: true,
                      obscureText: !_.isPasswordVisible,
                      suffixWidget: GestureDetector(
                        onTap: () => _.hidePassword(),
                        child: SvgPicture.asset(
                          _.isPasswordVisible ? iconEye : iconEyeOff,
                          height: 17,
                          width: 17,
                          colorFilter: const ColorFilter.mode(
                              Colors.grey, BlendMode.srcIn),
                        ),
                      ),
                    ),
                    Dimensions.verticalSBox1,
                    appText("Remember Me")
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
