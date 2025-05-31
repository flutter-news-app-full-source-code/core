import 'package:ht_shared/src/models/core/feed_item.dart';
import 'package:ht_shared/src/models/core/feed_item_action.dart'
    show FeedItemAction, feedItemActionFromJson, feedItemActionToJson;
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'engagement_content.g.dart';

/// {@template engagement_content_type}
/// Defines the specific type or purpose of an [EngagementContent] item.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.snake)
enum EngagementContentType {
  /// A call-to-action to sign up for an account.
  signUp,

  /// A call-to-action to upgrade to a premium subscription.
  upgrade,

  /// A call-to-action to rate the application in an app store.
  rateApp,
}

/// {@template engagement_content}
/// A generic model for in-feed calls-to-action or engagement prompts.
///
/// This item encourages user interaction, such as signing up, upgrading,
/// or providing feedback. The [engagementContentType] specifies the nature
/// of the call-to-action.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class EngagementContent extends FeedItem {
  /// {@macro engagement_content}
  EngagementContent({
    required this.title,
    required this.engagementContentType,
    required FeedItemAction action,
    this.description,
    this.callToActionText,
    this.callToActionUrl,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        action = action,
        super(type: 'engagement_content', action: action);

  /// Factory method to create an [EngagementContent] instance from a JSON map.
  factory EngagementContent.fromJson(Map<String, dynamic> json) =>
      _$EngagementContentFromJson(json);

  /// Unique identifier for the engagement content.
  final String id;

  /// The main title or heading for the engagement content.
  final String title;

  /// An optional description providing more details.
  final String? description;

  /// The type of engagement content.
  /// Will be null if an unknown value is encountered during deserialization.

  final EngagementContentType? engagementContentType;

  /// The text for the call-to-action button or link.
  final String? callToActionText;

  /// The URL to navigate to when the call-to-action is triggered.
  final String? callToActionUrl;

  /// The action to be performed when this feed item is interacted with.
  @JsonKey(fromJson: feedItemActionFromJson, toJson: feedItemActionToJson)
  @override
  final FeedItemAction action;

  /// Converts this [EngagementContent] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$EngagementContentToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        engagementContentType,
        callToActionText,
        callToActionUrl,
        type,
        action,
      ];

  /// Creates a new [EngagementContent] with updated properties.
  /// Use this to modify an [EngagementContent] without changing the original
  /// instance.
  EngagementContent copyWith({
    String? id,
    String? title,
    String? description,
    EngagementContentType? engagementContentType,
    String? callToActionText,
    String? callToActionUrl,
    FeedItemAction? action,
  }) {
    return EngagementContent(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description,
      engagementContentType:
          engagementContentType ?? this.engagementContentType,
      callToActionText: callToActionText,
      callToActionUrl: callToActionUrl,
      action: action ?? this.action,
    );
  }
}
