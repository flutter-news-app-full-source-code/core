import 'package:json_annotation/json_annotation.dart';

/// Defines the types of engagement content templates available.
/// The string value of the enum (e.g., 'rate-app') will be used as the ID
/// to link rules in AppConfig to specific EngagementContentTemplate instances.
@JsonEnum(fieldRename: FieldRename.kebab)
enum EngagementTemplateType {
  /// Prompt to rate the application.
  rateApp,

  /// Prompt for guest users to create/link an account.
  linkAccount,

  /// Prompt for standard users to upgrade to premium.
  upgradeToPremium,

  /// Prompt to complete user profile (e.g., select content preferences).
  completeProfile,

  /// Prompt to explore a new feature.
  exploreNewFeature,
}

/// Defines the types of suggested content templates available.
/// The string value of the enum (e.g., 'categories-to-follow') will be used as the ID
/// to link rules in AppConfig to specific SuggestedContentTemplate instances.
@JsonEnum(fieldRename: FieldRename.kebab)
enum SuggestionTemplateType {
  /// Suggest categories to follow.
  categoriesToFollow,

  /// Suggest sources to follow.
  sourcesToFollow,

  /// Suggest countries to follow for news.
  countriesToFollow,
}
