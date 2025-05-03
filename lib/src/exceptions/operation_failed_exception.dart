import 'package:ht_shared/ht_shared.dart';

/// Exception thrown for general operation failures that are not covered by
/// more specific exceptions like [NetworkException], [ServerException],
/// [InvalidInputException], [AuthenticationException], etc.
///
/// Use this as a fallback for unexpected issues during a specific operation
/// where the cause isn't easily categorized otherwise. The [message] should
/// provide context about the operation that failed.
final class OperationFailedException extends HtHttpException {
  /// {@macro operation_failed_exception}
  const OperationFailedException(super.message);
}
