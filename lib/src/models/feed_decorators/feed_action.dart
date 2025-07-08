import 'package:ht_shared/src/enums/feed_action_type.dart';
import 'package:ht_shared/src/models/core/feed_item.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_action.g.dart';

/// {@template feed_action}
/// A generic model for in-feed calls-to-action related to account management.
///
/// This item encourages user interaction, such as linking an account or
/// upgrading a subscription. The [accountActionType] specifies the nature
/// of the call-to-action.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedAction extends FeedItem {
  /// {@macro feed_action}
  const FeedAction({
    required this.id,
    required this.title,
    required this.accountActionType,
    required this.description,
    required this.callToActionText,
    required this.callToActionUrl,
  }) : super(type: 'feed_action');

  /// Factory method to create an [FeedAction] instance from a JSON map.
  factory FeedAction.fromJson(Map<String, dynamic> json) =>
      _$FeedActionFromJson(json);

  /// Unique identifier for the account action.
  final String id;

  /// The main title or heading for the account action.
  final String title;

  /// An optional description providing more details.
  final String description;

  /// The type of account action.
  final FeedActionType accountActionType;

  /// The text for the call-to-action button or link.
  final String callToActionText;

  /// The URL to navigate to when the call-to-action is triggered.
  final String callToActionUrl;

  /// Converts this [FeedAction] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$FeedActionToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    accountActionType,
    callToActionText,
    callToActionUrl,
    type,
  ];

  /// Creates a new [FeedAction] with updated properties.
  /// Use this to modify an [FeedAction] without changing the original
  /// instance.
  FeedAction copyWith({
    String? id,
    String? title,
    String? description,
    FeedActionType? accountActionType,
    String? callToActionText,
    String? callToActionUrl,
  }) {
    return FeedAction(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      accountActionType: accountActionType ?? this.accountActionType,
      callToActionText: callToActionText ?? this.callToActionText,
      callToActionUrl: callToActionUrl ?? this.callToActionUrl,
    );
  }
}
