import 'package:core/src/exceptions/ht_http_exception.dart';

/// Exception thrown for 404 Not Found errors.
final class NotFoundException extends HtHttpException {
  /// {@macro not_found_exception}
  const NotFoundException(super.message);
}
