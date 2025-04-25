import 'package:admin_panel/app/admin_app.dart';
import 'package:admin_panel/core/di/get_it.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  AndroidOptions _getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  setupDI();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('tr')],
      path: "assets/lang",
      fallbackLocale: Locale('en'),
      child: AdminApp(initalPage: "/login-view"),
    ),
  );
}
