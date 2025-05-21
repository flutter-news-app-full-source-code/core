import 'package:ht_shared/src/models/feed/engagement_content_type.dart';
import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:ht_shared/src/utils/json_converters.dart';
import 'package:uuid/uuid.dart';

/// {@template engagement_content}
/// A generic model for in-feed calls-to-action or engagement prompts.
///
/// This item encourages user interaction, such as signing up, upgrading,
/// or providing feedback. The [engagementContentType] specifies the nature
/// of the call-to-action.
/// {@endtemplate}
class EngagementContent extends FeedItem {
  /// {@macro engagement_content}
  EngagementContent({
    required this.title,
    required this.engagementContentType,
    required super.action, // Refactored to super.action
    this.description,
    this.callToActionText,
    this.callToActionUrl,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(
          type: 'engagement_content',
        ); // Removed action from super constructor

  /// Factory method to create an [EngagementContent] instance from a JSON map.
  factory EngagementContent.fromJson(Map<String, dynamic> json) {
    return EngagementContent(
      id: json['id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String?,
      engagementContentType: engagementContentTypeFromJson(
        json['engagementContentType'] as String,
      ),
      callToActionText: json['callToActionText'] as String?,
      callToActionUrl: json['callToActionUrl'] as String?,
      action: FeedItemAction.fromJson(json['action'] as Map<String, dynamic>),
    );
  }

  /// Unique identifier for the engagement content.
  final String id;

  /// The main title or heading for the engagement content.
  final String title;

  /// An optional description providing more details.
  final String? description;

  /// The type of engagement content.
  final EngagementContentType engagementContentType;

  /// The text for the call-to-action button or link.
  final String? callToActionText;

  /// The URL to navigate to when the call-to-action is triggered.
  final String? callToActionUrl;

  /// Converts this [EngagementContent] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'engagementContentType':
          engagementContentTypeToJson(engagementContentType),
      'callToActionText': callToActionText,
      'callToActionUrl': callToActionUrl,
      'action': action.toJson(),
      'type': type, // Inherited from FeedItem
    };
    return json..removeWhere((key, value) => value == null);
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
      description: description ?? this.description,
      engagementContentType:
          engagementContentType ?? this.engagementContentType,
      callToActionText: callToActionText ?? this.callToActionText,
      callToActionUrl: callToActionUrl ?? this.callToActionUrl,
      action: action ?? this.action,
    );
  }
}
