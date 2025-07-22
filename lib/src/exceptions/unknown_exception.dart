import 'package:core/src/exceptions/http_exception.dart';

/// Exception thrown for unexpected errors.
final class UnknownException extends HttpException {
  /// {@macro unknown_exception}
  const UnknownException(super.message);
}
