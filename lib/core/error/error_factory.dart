import 'package:admin_panel/core/error/error.dart';

abstract class ErrorFactory {
  DefaultError createApiError(
    dynamic error,
    StackTrace stackTrace,
    String message,
  );
  DefaultError createBusinessError(dynamic error, StackTrace stackTrace);
  DefaultError createUnknownError(dynamic error, StackTrace stackTrace);
}
