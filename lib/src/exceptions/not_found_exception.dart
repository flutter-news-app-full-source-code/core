import 'package:core/src/exceptions/http_exception.dart';

/// Exception thrown for 404 Not Found errors.
final class NotFoundException extends HttpException {
  /// {@macro not_found_exception}
  const NotFoundException(super.message);
}
