import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool isPasswordVisible = false;
  bool isRemember = false;
  changeRememberMeStatus() {
    isRemember = !isRemember;
    notifyListeners();
  }

  hidePassword() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }
}
