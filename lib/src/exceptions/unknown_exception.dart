import 'package:core/src/exceptions/ht_http_exception.dart';

/// Exception thrown for unexpected errors.
final class UnknownException extends HtHttpException {
  /// {@macro unknown_exception}
  const UnknownException(super.message);
}
