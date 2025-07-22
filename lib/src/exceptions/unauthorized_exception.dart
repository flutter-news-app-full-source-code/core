import 'package:core/src/exceptions/http_exception.dart';

/// Exception thrown for 401 Unauthorized errors.
final class UnauthorizedException extends HttpException {
  /// {@macro unauthorized_exception}
  const UnauthorizedException(super.message);
}
