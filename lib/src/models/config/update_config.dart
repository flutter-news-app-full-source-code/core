import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'update_config.g.dart';

/// {@template update_config}
/// Defines configuration settings related to application updates.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UpdateConfig extends Equatable {
  /// {@macro update_config}
  const UpdateConfig({
    required this.latestAppVersion,
    required this.isLatestVersionOnly,
    required this.iosUpdateUrl,
    required this.androidUpdateUrl,
  });

  /// Creates an [UpdateConfig] from JSON data.
  factory UpdateConfig.fromJson(Map<String, dynamic> json) =>
      _$UpdateConfigFromJson(json);

  /// The latest available app version.
  final String latestAppVersion;

  /// Indicates if only the latest version of the app is allowed to run.
  final bool isLatestVersionOnly;

  /// URL for iOS app updates.
  final String iosUpdateUrl;

  /// URL for Android app updates.
  final String androidUpdateUrl;

  /// Converts this [UpdateConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$UpdateConfigToJson(this);

  @override
  List<Object> get props => [
    latestAppVersion,
    isLatestVersionOnly,
    iosUpdateUrl,
    androidUpdateUrl,
  ];
}
