/// Defines string constants for known user roles to avoid magic strings.
abstract final class UserRoles {
  /// Administrator role with full privileges.
  static const String admin = 'admin';

  /// Premium user role with enhanced privileges or access to exclusive features
  /// compared to a standard user.
  static const String premiumUser = 'premium_user';

  /// Standard user role with regular privileges.
  static const String standardUser = 'standard_user';

  /// Guest user role with limited privileges.
  static const String guestUser = 'guest_user';

  /// A user with content publishing rights.
  static const String publisher = 'publisher';
}
