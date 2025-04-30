import 'package:ht_shared/src/exceptions/ht_http_exception.dart';

/// Exception thrown for 5xx Server errors.
final class ServerException extends HtHttpException {
  /// {@macro server_exception}
  const ServerException(super.message);
}
