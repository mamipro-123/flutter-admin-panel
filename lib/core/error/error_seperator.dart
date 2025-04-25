import 'package:admin_panel/core/error/default_error_factory.dart';
import 'package:admin_panel/core/error/error.dart';

class ErrorSeparator {
  final DefaultErrorFactory errorFactory;

  ErrorSeparator(this.errorFactory);

  DefaultError createError(Object exception, StackTrace stackTrace) {
    try {
      if (exception.toString().contains("message")) {
        return errorFactory.createApiError(exception, stackTrace, "message");
      } else {
        return errorFactory.createBusinessError(exception, stackTrace);
      }
    } catch (e, stackTrace) {
      return errorFactory.createUnknownError(e.toString(), stackTrace);
    }
  }
}
