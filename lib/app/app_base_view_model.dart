import 'dart:ui';

import 'package:admin_panel/core/di/get_it.dart';
import 'package:admin_panel/core/repository/repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

class AppBaseViewModel extends BaseViewModel {
  NavigationService navigationService = getIt<NavigationService>();
  Repository repository = getIt<Repository>();
  late Locale _locale;

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    _locale = locale;

    notifyListeners();
  }

  String _selectedLanguage = "";
  String get selectedLanguage => _selectedLanguage;

  Future<void> _loadSelectedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _selectedLanguage = prefs.getString('language') ?? 'system';
    _setLocale(_selectedLanguage);
  }

  Future<void> updateSelectedLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _selectedLanguage = language;
    await prefs.setString('language', language);
    _setLocale(language);
  }

  void _setLocale(String language) {
    if (language == 'system') {
      if (PlatformDispatcher.instance.locale.languageCode == "tr") {
        getIt<AppBaseViewModel>().setLocale(Locale('tr'));
      } else if (PlatformDispatcher.instance.locale.languageCode == "en") {
        getIt<AppBaseViewModel>().setLocale(Locale('en'));
      }
    } else if (language == 'en') {
      getIt<AppBaseViewModel>().setLocale(Locale('en'));
    } else if (language == 'tr') {
      getIt<AppBaseViewModel>().setLocale(Locale('tr'));
    } else {
      getIt<AppBaseViewModel>().setLocale(Locale("en"));
    }
    notifyListeners();
  }

  // Load theme from SharedPreferences
  Future<void> initialise() async {
    _loadSelectedLanguage(); // Existing logic
    await _loadTheme(); // New theme loading logic
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }

  late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  Future<void> _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString('theme') ?? 'system';
    _themeMode = _getThemeMode(theme);
    notifyListeners();
  }

  Future<void> setTheme(String theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _themeMode = _getThemeMode(theme);
    await prefs.setString('theme', theme);
    notifyListeners();
  }

  ThemeMode _getThemeMode(String theme) {
    switch (theme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
