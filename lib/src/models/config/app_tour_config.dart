import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_tour_config.g.dart';

/// {@template app_tour_config}
/// Defines the remote configuration for the pre-authentication app tour.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AppTourConfig extends Equatable {
  /// {@macro app_tour_config}
  const AppTourConfig({required this.isEnabled, required this.isSkippable});

  /// Creates an [AppTourConfig] from JSON data.
  factory AppTourConfig.fromJson(Map<String, dynamic> json) =>
      _$AppTourConfigFromJson(json);

  /// A master switch to enable or disable the entire app tour flow.
  final bool isEnabled;

  /// A switch to allow users to skip the app tour.
  final bool isSkippable;

  /// Converts this [AppTourConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$AppTourConfigToJson(this);

  @override
  List<Object> get props => [isEnabled, isSkippable];

  /// Creates a copy of this [AppTourConfig] but with the given fields
  /// replaced with the new values.
  AppTourConfig copyWith({bool? isEnabled, bool? isSkippable}) {
    return AppTourConfig(
      isEnabled: isEnabled ?? this.isEnabled,
      isSkippable: isSkippable ?? this.isSkippable,
    );
  }
}
