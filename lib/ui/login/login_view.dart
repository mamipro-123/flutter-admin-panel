import 'package:flutter/material.dart';
import 'package:responsive_size_helper_plus/responsive_size_helper_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_view_model.dart';

class LoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(context),
      builder:
          (context, viewModel, child) => Scaffold(
            backgroundColor: Colors.white,
            body:
                viewModel.isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : LayoutBuilder(
                      builder: (context, constraints) {
                        if (constraints.maxWidth > 800) {
                          return Row(
                            children: [
                              Expanded(
                                child: LoginForm(
                                  usernameController: _usernameController,
                                  passwordController: _passwordController,
                                  viewModel: viewModel,
                                ),
                              ),
                              const Expanded(child: DesktopIllustration()),
                              SizedBox(width: 20.w),
                            ],
                          );
                        } else {
                          return LoginForm(
                            usernameController: _usernameController,
                            passwordController: _passwordController,
                            viewModel: viewModel,
                          );
                        }
                      },
                    ),
          ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final LoginViewModel viewModel;

  const LoginForm({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'login.title'.tr(),
              style: GoogleFonts.poppins(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'login.subtitle'.tr(),
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
          ),
          SizedBox(height: 8.h),
          TextField(
            controller: usernameController,
            decoration: _inputDecoration(
              'login.username'.tr(),
              Icons.person_outline,
              false,
            ),
          ),
          SizedBox(height: 16.h),
          TextField(
            controller: passwordController,
            obscureText: viewModel.obscureText,
            decoration: _inputDecoration(
              'login.password'.tr(),
              Icons.lock_outline,
              true,
            ),
          ),
          SizedBox(height: 24.h),
          _buildElevetedButton(),
          SizedBox(height: 10.h),
          _buildForgetPassword(),
          SizedBox(height: 20.h),
          Spacer(),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "owner".tr(),
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Row _buildForgetPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "login.forgotPassword".tr(),
          style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey[600]),
        ),
      ],
    );
  }

  ElevatedButton _buildElevetedButton() {
    return ElevatedButton(
      onPressed: () {
        viewModel.login(usernameController.text, passwordController.text);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        'login.login'.tr(),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(
    String hint,
    IconData icon,
    bool isPasswordField,
  ) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: Icon(icon),
      suffixIcon:
          isPasswordField
              ? IconButton(
                icon: Icon(
                  viewModel.obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
                onPressed: () => viewModel.togglePasswordVisibility(),
              )
              : null,
      filled: true,
      fillColor: Colors.grey[100],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: Colors.grey[500]),
    );
  }
}

class DesktopIllustration extends StatelessWidget {
  const DesktopIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
      child: Center(
        child: Image.asset('assets/images/bg.png', fit: BoxFit.contain),
      ),
    );
  }
}
