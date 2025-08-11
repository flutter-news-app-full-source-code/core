import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'role_specific_settings.g.dart';

/// {@template role_specific_settings}
/// Defines settings that can be configured on a per-role basis for a feed
/// decorator.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class RoleSpecificSettings extends Equatable {
  /// {@macro role_specific_settings}
  const RoleSpecificSettings({required this.daysBetweenViews});

  /// Factory method to create a [RoleSpecificSettings] instance from a JSON map.
  factory RoleSpecificSettings.fromJson(Map<String, dynamic> json) =>
      _$RoleSpecificSettingsFromJson(json);

  /// The number of days that must pass before the decorator can be shown again
  /// to a user with this specific role.
  final int daysBetweenViews;

  /// Converts this [RoleSpecificSettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$RoleSpecificSettingsToJson(this);

  @override
  List<Object> get props => [daysBetweenViews];
}
