import 'dart:io';

import 'package:admin_panel/core/error/error_seperator.dart';
import 'package:admin_panel/core/helpers/shared_prefences_helpers.dart';
import 'package:admin_panel/core/services/api_service.dart';

class Repository {
  final ApiService _apiService;
  final ErrorSeparator _errorSeparator;

  Repository(this._apiService, this._errorSeparator);

  getLanguage() async {
    return await SharedPreferencesHelper.getString("language");
  }
}
