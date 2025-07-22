import 'package:core/src/exceptions/ht_http_exception.dart';

/// Exception thrown for 401 Unauthorized errors.
final class UnauthorizedException extends HtHttpException {
  /// {@macro unauthorized_exception}
  const UnauthorizedException(super.message);
}
