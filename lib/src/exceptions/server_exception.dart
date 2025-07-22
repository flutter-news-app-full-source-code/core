import 'package:core/src/exceptions/http_exception.dart';

/// Exception thrown for 5xx Server errors.
final class ServerException extends HttpException {
  /// {@macro server_exception}
  const ServerException(super.message);
}
