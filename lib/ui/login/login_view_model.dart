import 'package:admin_panel/app/app_base_view_model.dart';
import 'package:admin_panel/ui/main/main_view.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends AppBaseViewModel {
  final BuildContext context;

  LoginViewModel(this.context) {}

  Future<void> login(String email, String password) async {
    setBusy(true);
    try {
      await Future.delayed(const Duration(seconds: 2));
      // TODO: Add actual login logic here

      // Navigate to main view with animation
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder:
              (context, animation, secondaryAnimation) => const MainView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 500),
        ),
      );
    } catch (e) {
      // Handle login errors
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Login failed: ${e.toString()}')));
    } finally {
      setBusy(false);
    }
  }

  bool _obscureText = true;
  bool get obscureText => _obscureText;

  void togglePasswordVisibility() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
