import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_status.g.dart';

/// Represents the application's remote status, including maintenance and update information.
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AppStatus extends Equatable {
  const AppStatus({
    required this.isUnderMaintenance,
    required this.latestAppVersion,
    required this.isLatestVersionOnly,
    required this.iosUpdateUrl,
    required this.androidUpdateUrl,
  });

  /// Factory method to create a [AppStatus] instance from a JSON map.
  factory AppStatus.fromJson(Map<String, dynamic> json) =>
      _$AppStatusFromJson(json);

  /// Indicates if the app is currently under maintenance.
  final bool isUnderMaintenance;

  /// The latest available app version.
  final String latestAppVersion;

  /// Indicates if only the latest version of the app is allowed to run (force update).
  final bool isLatestVersionOnly;

  /// URL for iOS app updates.
  final String iosUpdateUrl;

  /// URL for Android app updates.
  final String androidUpdateUrl;

  /// Converts this [AppStatus] instance to a JSON map.
  Map<String, dynamic> toJson() => _$AppStatusToJson(this);

  /// Creates a new [AppStatus] instance with specified changes.
  AppStatus copyWith({
    bool? isUnderMaintenance,
    String? latestAppVersion,
    bool? isLatestVersionOnly,
    String? iosUpdateUrl,
    String? androidUpdateUrl,
  }) {
    return AppStatus(
      isUnderMaintenance: isUnderMaintenance ?? this.isUnderMaintenance,
      latestAppVersion: latestAppVersion ?? this.latestAppVersion,
      isLatestVersionOnly: isLatestVersionOnly ?? this.isLatestVersionOnly,
      iosUpdateUrl: iosUpdateUrl ?? this.iosUpdateUrl,
      androidUpdateUrl: androidUpdateUrl ?? this.androidUpdateUrl,
    );
  }

  @override
  List<Object> get props => [
    isUnderMaintenance,
    latestAppVersion,
    isLatestVersionOnly,
    iosUpdateUrl,
    androidUpdateUrl,
  ];

  @override
  bool get stringify => true;
}
