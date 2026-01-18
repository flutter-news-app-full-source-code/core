/// Defines the service level or entitlement tier of a user.
///
/// This enum is the single source of truth for feature gating and usage limits.
/// It is decoupled from the user's authentication status (`isAnonymous`).
enum AccessTier {
  /// The lowest service level. Typically for anonymous users.
  guest,

  /// The standard service level. Typically for registered, non-paying users.
  standard,
}
