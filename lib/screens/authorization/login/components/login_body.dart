import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../provider/login_provider.dart';
import '../../../../util/colors.dart';
import '../../../../util/dimensions.dart';
import '../../../../util/icons.dart';
import '../../../../util/images.dart';
import '../../../../util/styles.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text_field_widget.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<LoginProvider>(builder: (context, _, __) {
        return Column(
          children: [
            ClipRRect(
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
                    bottom: 10,
                    left: 15,
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
            Dimensions.verticalSBox3,
            Dimensions.verticalSBox1,
            Expanded(
              child: Container(
                padding: Dimensions.appPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                          textInputType: TextInputType.visiblePassword,
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
                        Dimensions.verticalSBox2,
                        GestureDetector(
                          onTap: () => _.changeRememberMeStatus(),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: _.isRemember
                                      ? AppColors.fPRIMARY_COLOR
                                      : Colors.white,
                                  border: Border.all(
                                    color: _.isRemember
                                        ? AppColors.fPRIMARY_COLOR
                                        : AppColors.fGREY_COLOR,
                                    width: .7,
                                  ),
                                ),
                                padding: const EdgeInsets.all(1),
                                height: 16,
                                width: 16,
                                child: _.isRemember
                                    ? SvgPicture.asset(
                                        iconDone,
                                        height: 15,
                                        width: 15,
                                        colorFilter: const ColorFilter.mode(
                                          Colors.white,
                                          BlendMode.srcIn,
                                        ),
                                      )
                                    : null,
                              ),
                              Dimensions.horizontalSBox1,
                              appText(
                                "Remember Me",
                                color: AppColors.fGREY_COLOR,
                                fontSize: 12,
                              ),
                            ],
                          ),
                        ),
                        Dimensions.verticalSBox2,
                        CustomButton(
                          onPressed: () {},
                          title: "Login",
                        ),
                        Dimensions.verticalSBox3,
                        Align(
                          alignment: Alignment.center,
                          child: appText(
                            "Forgot Password ?",
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            appText(
                              "No Account ?",
                              color: AppColors.fGREY_COLOR,
                            ),
                            Dimensions.horizontalSBox0,
                            appText(
                              "Create a Account",
                              color: AppColors.fPRIMARY_COLOR,
                            ),
                          ],
                        ),
                        Dimensions.verticalSBox2,
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
