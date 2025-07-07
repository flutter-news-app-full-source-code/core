import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'account_action_config.g.dart';

/// {@template account_action_config}
/// Defines configuration settings related to the display frequency of
/// account actions, tiered by user role.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AccountActionConfig extends Equatable {
  /// {@macro account_action_config}
  const AccountActionConfig({
    required this.guestDaysBetweenAccountActions,
    required this.standardUserDaysBetweenAccountActions,
  });

  /// Factory method to create an [AccountActionConfig] instance from a
  /// JSON map.
  factory AccountActionConfig.fromJson(Map<String, dynamic> json) =>
      _$AccountActionConfigFromJson(json);

  /// Days between account actions for guest users.
  final int guestDaysBetweenAccountActions;

  /// Days between account actions for standard users.
  final int standardUserDaysBetweenAccountActions;

  /// Converts this [AccountActionConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$AccountActionConfigToJson(this);

  /// Creates a copy of this [AccountActionConfig] but with the given
  /// fields replaced with the new values.
  AccountActionConfig copyWith({
    int? guestDaysBetweenAccountActions,
    int? standardUserDaysBetweenAccountActions,
  }) {
    return AccountActionConfig(
      guestDaysBetweenAccountActions:
          guestDaysBetweenAccountActions ?? this.guestDaysBetweenAccountActions,
      standardUserDaysBetweenAccountActions:
          standardUserDaysBetweenAccountActions ??
          this.standardUserDaysBetweenAccountActions,
    );
  }

  @override
  List<Object> get props => [
    guestDaysBetweenAccountActions,
    standardUserDaysBetweenAccountActions,
  ];
}
