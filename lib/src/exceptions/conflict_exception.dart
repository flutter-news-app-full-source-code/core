import 'package:ht_shared/src/exceptions/ht_http_exception.dart';

/// Exception thrown for 409 Conflict errors.
///
/// This indicates that the request could not be completed due to a conflict
/// with the current state of the target resource. For example, an attempt to
/// create a resource that already exists, or an update that would violate
/// a consistency constraint.
final class ConflictException extends HtHttpException {
  /// {@macro conflict_exception}
  const ConflictException(super.message);
}
