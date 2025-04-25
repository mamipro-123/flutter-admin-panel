import 'package:admin_panel/core/error/error.dart';

extension ErrorHandle on DefaultError {
  String handle() => this.when(
    apiError: ((error, stackTrace, mesage) => mesage),
    businessError: ((error, stackTrace) => error.toString()),
    unknownError: ((error, stackTrace) => error.toString()),
  );
}
