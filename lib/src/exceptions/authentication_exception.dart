import 'package:core/core.dart';

/// Exception specifically thrown for failures during an authentication attempt.
///
/// This is distinct from [UnauthorizedException] (which typically means a valid
/// token is missing or expired for an *already authenticated* action) and
/// [ForbiddenException] (which means the authenticated user lacks permission).
///
/// Use this for errors like incorrect password, invalid verification code,
/// or other credential-specific failures during the login/verification process.
final class AuthenticationException extends HtHttpException {
  /// {@macro authentication_exception}
  const AuthenticationException(super.message);
}
