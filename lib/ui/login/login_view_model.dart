import 'package:admin_panel/app/app_base_view_model.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends AppBaseViewModel {
  final BuildContext context;

  LoginViewModel(this.context) {}

  Future<void> login(String email, String password) async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 2));
    setBusy(false);
  }

  bool _obscureText = true;
  bool get obscureText => _obscureText;

  void togglePasswordVisibility() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
