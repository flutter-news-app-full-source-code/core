import 'package:core/core.dart';

/// Exception thrown for 400 Bad Request errors.
final class BadRequestException extends HttpException {
  /// {@macro bad_request_exception}
  const BadRequestException(super.message);
}
