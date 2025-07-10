import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/config/account_action_config.dart';
import 'package:ht_shared/src/models/config/ad_config.dart';
import 'package:ht_shared/src/models/config/app_status.dart'; // New import
import 'package:ht_shared/src/models/config/user_preference_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remote_config.g.dart';

/// Represents the overall application configuration.
///
/// This model serves as a central container for various configuration
/// settings that can be fetched from a remote source. It includes settings
/// for user preference limits, ad display, and account actions.
///
/// There should typically be only one instance of this configuration,
/// identified by a fixed ID (e.g., 'app_config').
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class RemoteConfig extends Equatable {
  const RemoteConfig({
    required this.id,
    required this.userPreferenceConfig,
    required this.adConfig,
    required this.accountActionConfig,
    required this.appStatus,
  });

  /// Factory method to create an [RemoteConfig] instance from a JSON map.
  factory RemoteConfig.fromJson(Map<String, dynamic> json) =>
      _$RemoteConfigFromJson(json);

  /// The unique identifier for this configuration.
  final String id;

  /// Defines configuration settings related to user preference limits.
  final UserPreferenceConfig userPreferenceConfig;

  /// Defines configuration settings related to ad display.
  final AdConfig adConfig;

  /// Defines configuration settings related to account action display.
  final AccountActionConfig accountActionConfig;

  /// Defines configuration settings related to the overall application status (maintenance, updates).
  final AppStatus appStatus; // New field

  /// Converts this [RemoteConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$RemoteConfigToJson(this);

  /// Creates a new [RemoteConfig] instance with specified changes.
  RemoteConfig copyWith({
    String? id,
    UserPreferenceConfig? userPreferenceConfig,
    AdConfig? adConfig,
    AccountActionConfig? accountActionConfig,
    AppStatus? appStatus, // New optional parameter
  }) {
    return RemoteConfig(
      id: id ?? this.id,
      userPreferenceConfig: userPreferenceConfig ?? this.userPreferenceConfig,
      adConfig: adConfig ?? this.adConfig,
      accountActionConfig: accountActionConfig ?? this.accountActionConfig,
      appStatus: appStatus ?? this.appStatus, // Pass new field
    );
  }

  @override
  List<Object> get props => [
    id,
    userPreferenceConfig,
    adConfig,
    accountActionConfig,
    appStatus, // Add to props
  ];

  @override
  bool get stringify => true;
}
