import 'package:admin_panel/app/app_base_view_model.dart';
import 'package:admin_panel/core/api/api.dart';
import 'package:admin_panel/core/error/default_error_factory.dart';
import 'package:admin_panel/core/error/error_factory.dart';
import 'package:admin_panel/core/error/error_seperator.dart';
import 'package:admin_panel/core/repository/repository.dart';
import 'package:admin_panel/core/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton(() => AppBaseViewModel());
  getIt.registerLazySingleton(() => NavigationService());

  //NETWORK
  getIt.registerLazySingleton<Dio>(() => ApiClient().getDio());
  getIt.registerLazySingleton(() => ApiService(getIt.get()));

  getIt.registerLazySingleton(() => Repository(getIt.get(), getIt.get()));

  getIt.registerLazySingleton(() => ErrorFactory);
  getIt.registerLazySingleton(() => DefaultErrorFactory());
  getIt.registerLazySingleton(() => ErrorSeparator(getIt.get()));
}
