import 'package:ht_shared/ht_shared.dart' show EngagementContent;
import 'package:ht_shared/src/models/feed_decorators/engagement_content.dart'
    show EngagementContent;
import 'package:ht_shared/src/models/feed_decorators/feed_decorators.dart'
    show EngagementContent;
import 'package:ht_shared/src/models/models.dart' show EngagementContent;
import 'package:json_annotation/json_annotation.dart';

/// {@template engagement_content_type}
/// Defines the specific type or purpose of an [EngagementContent] item.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.kebab)
enum EngagementContentType {
  /// A call-to-action to sign up for an account.
  signUp,

  /// A call-to-action to upgrade to a premium subscription.
  upgrade,

  /// A prompt to provide feedback on the application.
  feedback,

  /// A prompt to complete a survey.
  survey,

  /// A call-to-action to rate the application in an app store.
  rateApp,

  /// A call-to-action to share the application with others.
  shareApp,

  /// A generic or custom engagement content type.
  custom,
}
