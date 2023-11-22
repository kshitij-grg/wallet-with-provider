import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool isPasswordVisible = false;
  hidePassword() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }
}
