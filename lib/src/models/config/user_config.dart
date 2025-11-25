import 'package:core/src/models/config/user_limits_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_config.g.dart';

/// {@template user_config}
/// A container for all user-related configurations.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserConfig extends Equatable {
  /// {@macro user_config}
  const UserConfig({required this.limits});

  /// Creates a [UserConfig] from JSON data.
  factory UserConfig.fromJson(Map<String, dynamic> json) =>
      _$UserConfigFromJson(json);

  /// Role-based quantitative limits for user actions.
  final UserLimitsConfig limits;

  /// Converts this [UserConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$UserConfigToJson(this);

  @override
  List<Object> get props => [limits];
}
