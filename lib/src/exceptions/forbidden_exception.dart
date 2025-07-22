import 'package:core/src/exceptions/http_exception.dart';

/// Exception thrown for 403 Forbidden errors.
final class ForbiddenException extends HttpException {
  /// {@macro forbidden_exception}
  const ForbiddenException(super.message);
}
