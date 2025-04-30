import 'package:ht_shared/src/exceptions/ht_http_exception.dart';

/// Exception thrown for 403 Forbidden errors.
final class ForbiddenException extends HtHttpException {
  /// {@macro forbidden_exception}
  const ForbiddenException(super.message);
}
