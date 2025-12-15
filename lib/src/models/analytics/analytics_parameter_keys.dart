import 'package:core/src/models/analytics/payloads/account_linked_payload.dart';
import 'package:core/src/models/analytics/payloads/ad_clicked_payload.dart';
import 'package:core/src/models/analytics/payloads/ad_impression_payload.dart';
import 'package:core/src/models/analytics/payloads/ad_load_failed_payload.dart';
import 'package:core/src/models/analytics/payloads/ad_reward_earned_payload.dart';
import 'package:core/src/models/analytics/payloads/app_review_prompt_responded_payload.dart';
import 'package:core/src/models/analytics/payloads/browser_choice_changed_payload.dart';
import 'package:core/src/models/analytics/payloads/comment_created_payload.dart';
import 'package:core/src/models/analytics/payloads/comment_deleted_payload.dart';
import 'package:core/src/models/analytics/payloads/content_reading_time_payload.dart';
import 'package:core/src/models/analytics/payloads/content_saved_payload.dart';
import 'package:core/src/models/analytics/payloads/content_shared_payload.dart';
import 'package:core/src/models/analytics/payloads/content_unsaved_payload.dart';
import 'package:core/src/models/analytics/payloads/content_viewed_payload.dart';
import 'package:core/src/models/analytics/payloads/feed_density_changed_payload.dart';
import 'package:core/src/models/analytics/payloads/filter_created_payload.dart';
import 'package:core/src/models/analytics/payloads/filter_updated_payload.dart';
import 'package:core/src/models/analytics/payloads/filter_used_payload.dart';
import 'package:core/src/models/analytics/payloads/language_changed_payload.dart';
import 'package:core/src/models/analytics/payloads/limit_exceeded_cta_clicked_payload.dart';
import 'package:core/src/models/analytics/payloads/limit_exceeded_payload.dart';
import 'package:core/src/models/analytics/payloads/paywall_presented_payload.dart';
import 'package:core/src/models/analytics/payloads/reaction_created_payload.dart';
import 'package:core/src/models/analytics/payloads/reaction_deleted_payload.dart';
import 'package:core/src/models/analytics/payloads/search_performed_payload.dart';
import 'package:core/src/models/analytics/payloads/subscription_cancelled_payload.dart';
import 'package:core/src/models/analytics/payloads/subscription_ended_payload.dart';
import 'package:core/src/models/analytics/payloads/subscription_renewed_payload.dart';
import 'package:core/src/models/analytics/payloads/subscription_started_payload.dart';
import 'package:core/src/models/analytics/payloads/theme_changed_payload.dart';
import 'package:core/src/models/analytics/payloads/user_login_payload.dart';
import 'package:core/src/models/analytics/payloads/user_registered_payload.dart';
import 'package:core/src/models/analytics/payloads/user_role_changed_payload.dart';

/// {@template analytics_parameter_keys}
/// Defines a centralized, type-safe collection of parameter keys used in
/// analytics events.
///
/// Using constants for keys prevents typos and "magic strings", ensuring
/// consistency between the client-side event logging and backend data analysis.
/// {@endtemplate}
abstract final class AnalyticsParameterKeys {
  /// The method used for authentication (e.g., 'email', 'anonymous').
  ///
  /// Used in [UserRegisteredPayload] and [UserLoginPayload].
  static const String authMethod = 'authMethod';

  /// The unique identifier of a piece of content.
  ///
  /// Used in: [ContentViewedPayload], [ContentSharedPayload],
  /// [ContentSavedPayload], [ContentUnsavedPayload], [ReactionCreatedPayload],
  /// [ReactionDeletedPayload], [CommentCreatedPayload], [CommentDeletedPayload],
  /// [ContentReadingTimePayload].
  static const String contentId = 'contentId';

  /// The type of content (e.g., 'headline').
  ///
  /// Used in [ContentViewedPayload].
  static const String contentType = 'contentType';

  /// The type of a user's reaction (e.g., 'like', 'insightful').
  ///
  /// Used in: [ReactionCreatedPayload], [ReactionDeletedPayload].
  static const String reactionType = 'reactionType';

  /// The type of limit that was exceeded (e.g., 'savedHeadlines').
  ///
  /// Used in [LimitExceededPayload].
  static const String limitType = 'limitType';

  /// The call-to-action presented to the user (e.g., 'upgrade', 'linkAccount').
  ///
  /// Used in [LimitExceededCtaClickedPayload].
  static const String ctaType = 'ctaType';

  /// The duration of an event, in seconds (e.g., content reading time).
  ///
  /// Used in [ContentReadingTimePayload].
  static const String durationInSeconds = 'durationInSeconds';

  /// The user's chosen browser preference (e.g., 'inApp', 'external').
  ///
  /// Used in [BrowserChoiceChangedPayload].
  static const String browserType = 'browserType';

  /// The ad provider that served the ad (e.g., 'admob').
  ///
  /// Used in: [AdImpressionPayload], [AdClickedPayload], [AdLoadFailedPayload],
  /// [AdRewardEarnedPayload].
  static const String adProvider = 'adProvider';

  /// The format of the ad (e.g., 'native', 'banner').
  ///
  /// Used in: [AdImpressionPayload], [AdClickedPayload], [AdLoadFailedPayload],
  /// [AdRewardEarnedPayload].
  static const String adType = 'adType';

  /// The location in the app where the ad was shown (e.g., 'feed').
  ///
  /// Used in: [AdImpressionPayload], [AdClickedPayload], [AdRewardEarnedPayload].
  static const String adPlacement = 'adPlacement';

  /// The medium used for sharing content (e.g., 'whatsapp', 'twitter').
  ///
  /// Used in [ContentSharedPayload].
  static const String shareMedium = 'shareMedium';

  /// The text query entered by the user for a search.
  ///
  /// Used in [SearchPerformedPayload].
  static const String searchQuery = 'searchQuery';

  /// The number of results returned for a search.
  ///
  /// Used in [SearchPerformedPayload].
  static const String searchResultCount = 'searchResultCount';

  /// The user's previous role before a change.
  ///
  /// Used in [UserRoleChangedPayload].
  static const String fromRole = 'fromRole';

  /// The user's new role after a change.
  ///
  /// Used in [UserRoleChangedPayload].
  static const String toRole = 'toRole';

  /// The user's response to a prompt (e.g., 'positive', 'negative').
  ///
  /// Used in [AppReviewPromptRespondedPayload].
  static const String feedback = 'feedback';

  /// The base theme name (e.g., 'light', 'dark').
  ///
  /// Used in [ThemeChangedPayload].
  static const String baseTheme = 'baseTheme';

  /// The accent theme name (e.g., 'newsRed').
  ///
  /// Used in [ThemeChangedPayload].
  static const String accentTheme = 'accentTheme';

  /// The language code (e.g., 'en', 'ar').
  ///
  /// Used in [LanguageChangedPayload].
  static const String languageCode = 'languageCode';

  /// The event that triggered the presentation of a paywall.
  ///
  /// Used in: [PaywallPresentedPayload].
  static const String triggerEvent = 'triggerEvent';

  /// The unique identifier of a subscription product.
  ///
  /// Used in: [SubscriptionStartedPayload], [SubscriptionRenewedPayload],
  /// [SubscriptionCancelledPayload], [SubscriptionEndedPayload].
  static const String productId = 'productId';

  /// The unique identifier of a filter.
  ///
  /// Used in: [FilterCreatedPayload], [FilterUpdatedPayload], [FilterUsedPayload].
  static const String filterId = 'filterId';

  /// The error code from a failed operation.
  ///
  /// Used in: [AdLoadFailedPayload].
  static const String errorCode = 'errorCode';

  /// The amount of a reward earned.
  ///
  /// Used in: [AdRewardEarnedPayload].
  static const String rewardAmount = 'rewardAmount';

  /// The density setting for a feed.
  ///
  /// Used in: [FeedDensityChangedPayload].
  static const String density = 'density';

  /// The reason for a subscription ending (e.g., 'billingError', 'userCancelled').
  ///
  /// Used in: [SubscriptionEndedPayload].
  static const String reason = 'reason';

  /// The UI element or event that triggered an action.
  ///
  /// Used in: [AccountLinkedPayload].
  static const String trigger = 'trigger';

  /// Indicates if the app review prompt was shown for the first time.
  ///
  /// Used in: [AppReviewPromptRespondedPayload].
  static const String isFirstPrompt = 'isFirstPrompt';

  /// The detailed text feedback provided by a user.
  ///
  /// Used in: [AppReviewPromptRespondedPayload].
  static const String feedbackDetails = 'feedbackDetails';

  /// A boolean indicating if a filter is pinned.
  ///
  /// Used in: [FilterCreatedPayload], [FilterUpdatedPayload].
  static const String isPinned = 'isPinned';

  /// A list of notification delivery types for a filter.
  ///
  /// Used in: [FilterCreatedPayload].
  static const String deliveryTypes = 'deliveryTypes';

  /// A summary of a filter's criteria.
  ///
  /// Used in: [FilterCreatedPayload], [FilterUpdatedPayload].
  static const String criteriaSummary = 'criteriaSummary';
}
