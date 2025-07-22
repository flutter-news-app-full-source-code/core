import 'package:core/src/exceptions/ht_http_exception.dart';

/// Exception thrown when a network error occurs (e.g., no internet connection).
final class NetworkException extends HtHttpException {
  /// {@macro network_exception}
  const NetworkException() : super('Network error occurred');
}
