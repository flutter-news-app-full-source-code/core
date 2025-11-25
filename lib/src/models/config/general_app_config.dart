import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'general_app_config.g.dart';

/// {@template general_app_config}
/// Defines general application-level settings not covered by other configs.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class GeneralAppConfig extends Equatable {
  /// {@macro general_app_config}
  const GeneralAppConfig();

  /// Creates a [GeneralAppConfig] from JSON data.
  factory GeneralAppConfig.fromJson(Map<String, dynamic> json) =>
      _$GeneralAppConfigFromJson(json);

  /// Converts this [GeneralAppConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$GeneralAppConfigToJson(this);

  @override
  List<Object> get props => [];
}
