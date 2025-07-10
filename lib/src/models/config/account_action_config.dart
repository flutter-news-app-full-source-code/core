import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/enums/feed_action_type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'account_action_config.g.dart';

/// {@template account_action_config}
/// Defines configuration settings related to the display frequency of
/// different feed actions, tiered by user role.
///
/// This allows for granular control over how often specific calls-to-action
/// (like 'linkAccount' or 'rateApp') are shown to users based on their
/// status (Guest or Standard).
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AccountActionConfig extends Equatable {
  /// {@macro account_action_config}
  const AccountActionConfig({
    required this.guestDaysBetweenActions,
    required this.standardUserDaysBetweenActions,
  });

  /// Factory method to create an [AccountActionConfig] instance from a
  /// JSON map.
  factory AccountActionConfig.fromJson(Map<String, dynamic> json) =>
      _$AccountActionConfigFromJson(json);

  /// A map where each [FeedActionType] is linked to the number of days
  /// that must pass before it can be shown again to a **guest user**.
  final Map<FeedActionType, int> guestDaysBetweenActions;

  /// A map where each [FeedActionType] is linked to the number of days
  /// that must pass before it can be shown again to a **standard user**.
  final Map<FeedActionType, int> standardUserDaysBetweenActions;

  /// Converts this [AccountActionConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$AccountActionConfigToJson(this);

  /// Creates a copy of this [AccountActionConfig] but with the given
  /// fields replaced with the new values.
  AccountActionConfig copyWith({
    Map<FeedActionType, int>? guestDaysBetweenActions,
    Map<FeedActionType, int>? standardUserDaysBetweenActions,
  }) {
    return AccountActionConfig(
      guestDaysBetweenActions:
          guestDaysBetweenActions ?? this.guestDaysBetweenActions,
      standardUserDaysBetweenActions:
          standardUserDaysBetweenActions ?? this.standardUserDaysBetweenActions,
    );
  }

  @override
  List<Object> get props => [
    guestDaysBetweenActions,
    standardUserDaysBetweenActions,
  ];
}
