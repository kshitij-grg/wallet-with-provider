import 'package:flutter/material.dart';
import 'package:flutter_online_shop/util/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../util/styles.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextInputAction? textInputAction;

  final TextInputType? textInputType;
  final String? hint;
  final bool? isForPassword, obscureText;
  final String? suffixIcon;
  final Widget? suffixWidget;
  const CustomTextFieldWidget({
    super.key,
    this.textInputAction,
    this.suffixIcon,
    this.suffixWidget,
    this.textInputType,
    this.hint,
    this.isForPassword = false,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        fillColor: AppColors.fLIGHT_GREY_COLOR,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        hintText: hint,
        hintStyle: appStyle(
          fontSize: 13,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: isForPassword == true
              ? suffixWidget
              : suffixIcon != null
                  ? SvgPicture.asset(suffixIcon ?? '')
                  : null,
        ),
        suffixIconConstraints: const BoxConstraints(),
      ),
      obscureText: obscureText ?? false,
      textInputAction: textInputAction ?? TextInputAction.done,
      keyboardType: textInputType,
    );
  }
}
