import 'package:ht_shared/src/models/core/feed_item.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'account_action.g.dart';

/// {@template account_action_type}
/// Defines the specific type or purpose of an [AccountAction] item.
/// {@endtemplate}
enum AccountActionType {
  /// A call-to-action to link an account.
  linkAccount,

  /// A call-to-action to upgrade to a premium subscription.
  upgrade,
}

/// {@template account_action}
/// A generic model for in-feed calls-to-action related to account management.
///
/// This item encourages user interaction, such as linking an account or
/// upgrading a subscription. The [accountActionType] specifies the nature
/// of the call-to-action.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AccountAction extends FeedItem {
  /// {@macro account_action}
  const AccountAction({
    required this.id,
    required this.title,
    required this.accountActionType,
    required this.description,
    required this.callToActionText,
    required this.callToActionUrl,
  }) : super(type: 'account_action');

  /// Factory method to create an [AccountAction] instance from a JSON map.
  factory AccountAction.fromJson(Map<String, dynamic> json) =>
      _$AccountActionFromJson(json);

  /// Unique identifier for the account action.
  final String id;

  /// The main title or heading for the account action.
  final String title;

  /// An optional description providing more details.
  final String description;

  /// The type of account action.
  final AccountActionType accountActionType;

  /// The text for the call-to-action button or link.
  final String callToActionText;

  /// The URL to navigate to when the call-to-action is triggered.
  final String callToActionUrl;

  /// Converts this [AccountAction] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$AccountActionToJson(this);
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

  /// Creates a new [AccountAction] with updated properties.
  /// Use this to modify an [AccountAction] without changing the original
  /// instance.
  AccountAction copyWith({
    String? id,
    String? title,
    String? description,
    AccountActionType? accountActionType,
    String? callToActionText,
    String? callToActionUrl,
  }) {
    return AccountAction(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      accountActionType: accountActionType ?? this.accountActionType,
      callToActionText: callToActionText ?? this.callToActionText,
      callToActionUrl: callToActionUrl ?? this.callToActionUrl,
    );
  }
}
