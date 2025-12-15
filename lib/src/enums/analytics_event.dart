/// {@template analytics_event}
/// A comprehensive, standardized vocabulary for all trackable user actions and
/// system events across the application.
///
/// Using an enum for event names ensures type safety and consistency between
/// client-side tracking and backend reporting, eliminating "magic strings".
/// {@endtemplate}
enum AnalyticsEvent {
  // --- Authentication & User Progression ---

  /// Triggered when a new user is successfully registered.
  userRegistered,

  /// Triggered when a user successfully logs in.
  userLogin,

  /// Triggered when an anonymous user links their account to a permanent one.
  accountLinked,

  /// Triggered when a user's role changes (e.g., standard to premium).
  userRoleChanged,

  // --- Content Consumption ---

  /// Triggered when a user views a piece of content (e.g., a headline).
  contentViewed,

  /// Triggered when a user shares a piece of content.
  contentShared,

  /// Triggered when a user saves a piece of content.
  contentSaved,

  /// Triggered when a user unsaves a piece of content.
  contentUnsaved,

  /// Triggered when a user clicks a headline and is redirected. This event can
  /// be used as a proxy for tracking reading time by measuring the duration
  /// until the user returns to the app.
  contentReadingTime,

  // --- User-Generated Content (UGC) ---

  /// Triggered when a user adds or changes a reaction to a piece of content.
  reactionCreated,

  /// Triggered when a user removes a reaction from a piece of content.
  reactionDeleted,

  /// Triggered when a user posts a comment.
  commentCreated,

  /// Triggered when a user deletes their own comment.
  commentDeleted,

  /// Triggered when a user submits a report for a piece of content.
  reportSubmitted,

  // --- Feature Usage ---

  /// Triggered when a user creates a new filter.
  filterCreated,

  /// Triggered when a user updates a filter's metadata (e.g., name, pin status).
  filterUpdated,

  /// Triggered when a user applies an existing filter.
  filterUsed,

  /// Triggered when a user performs a search.
  searchPerformed,

  /// Triggered when a user responds to the in-app review prompt.
  appReviewPromptResponded,

  /// Triggered when the app requests the native store review dialog.
  appReviewStoreRequested,

  // --- Limits & Monetization CTAs ---

  /// Triggered when a user hits a feature limit defined in remote config.
  /// This event captures that the "limit exceeded" bottom sheet was shown.
  limitExceeded,

  /// Triggered when a user clicks the call-to-action button on a
  /// "limit exceeded" bottom sheet (e.g., 'Upgrade', 'Link Account').
  limitExceededCtaClicked,

  // --- Monetization & Paywall ---

  /// Triggered when a paywall is presented to the user.
  paywallPresented,

  /// Triggered when a user starts a new subscription.
  subscriptionStarted,

  /// Triggered when a user's subscription is successfully renewed.
  subscriptionRenewed,

  /// Triggered when a user cancels their subscription.
  subscriptionCancelled,

  /// Triggered when a subscription ends (e.g., due to billing failure).
  subscriptionEnded,

  // --- Ads ---

  /// Triggered when an ad is shown to the user.
  adImpression,

  /// Triggered when a user clicks on an ad.
  adClicked,

  /// Triggered when an ad fails to load.
  adLoadFailed,

  /// Triggered when a user earns a reward from a rewarded ad.
  adRewardEarned,

  // --- Settings & Preferences ---

  /// Triggered when the user changes the app theme.
  themeChanged,

  /// Triggered when the user changes the app language.
  languageChanged,

  /// Triggered when the user changes the feed density setting.
  feedDensityChanged,

  /// Triggered when the user changes their preferred browser behavior.
  browserChoiceChanged,
}
