import 'package:admin_panel/common/constants/api_constants.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio();

  BaseOptions options = BaseOptions(
    baseUrl: ApiConstants.BASE_URL,
    headers: {"Content-Type": "application/json; charset=utf-8"},
  );

  Dio getDio() {
    dio.options = options;
    dio.interceptors.add(
      LogInterceptor(error: true, requestBody: true, responseBody: true),
    );
    return dio;
  }
}
