import 'package:core/core.dart';

/// Exception thrown for invalid input provided by the client.
///
/// This typically corresponds to HTTP status codes 400 or 422, but can also
/// be used for client-side validation failures before a request is sent.
/// Use the [message] to provide specific details about the validation failure
/// (e.g., "Invalid email format", "Code must be 6 digits").
final class InvalidInputException extends HttpException {
  /// {@macro invalid_input_exception}
  const InvalidInputException(super.message);
}
