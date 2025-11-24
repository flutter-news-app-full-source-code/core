import 'package:core/core.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remote_config.g.dart';

/// Represents the overall application configuration.
///
/// This model serves as a central container for various configuration
/// settings that can be fetched from a remote source. It includes settings
/// for user preference limits, ad display, and feed decorators.
///
/// There should typically be only one instance of this configuration,
/// identified by a fixed ID (e.g., 'app_config').
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class RemoteConfig extends Equatable {
  /// Creates a new [RemoteConfig] instance.
  const RemoteConfig({
    required this.id,
    required this.appStatus,
    required this.adConfig,
    required this.feedDecoratorConfig,
    required this.userPreferenceConfig,
    required this.pushNotificationConfig,
    required this.feedItemClickBehavior,
    required this.createdAt,
    required this.updatedAt,
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

  /// Defines configuration settings for all feed decorators.
  final Map<FeedDecoratorType, FeedDecoratorConfig> feedDecoratorConfig;

  /// Defines configuration settings related to the overall application status
  /// (maintenance, updates).
  final AppStatus appStatus;

  /// Defines the global configuration for the push notification system.
  final PushNotificationConfig pushNotificationConfig;

  /// The default behavior when clicking feed items.
  final FeedItemClickBehavior feedItemClickBehavior;

  /// The creation timestamp of the remote config.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The last update timestamp of the remote config.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// Converts this [RemoteConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$RemoteConfigToJson(this);

  /// Creates a new [RemoteConfig] instance with specified changes.
  RemoteConfig copyWith({
    String? id,
    UserPreferenceConfig? userPreferenceConfig,
    AdConfig? adConfig,
    Map<FeedDecoratorType, FeedDecoratorConfig>? feedDecoratorConfig,
    AppStatus? appStatus,
    PushNotificationConfig? pushNotificationConfig,
    FeedItemClickBehavior? feedItemClickBehavior,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return RemoteConfig(
      id: id ?? this.id,
      userPreferenceConfig: userPreferenceConfig ?? this.userPreferenceConfig,
      adConfig: adConfig ?? this.adConfig,
      feedDecoratorConfig: feedDecoratorConfig ?? this.feedDecoratorConfig,
      appStatus: appStatus ?? this.appStatus,
      pushNotificationConfig:
          pushNotificationConfig ?? this.pushNotificationConfig,
      feedItemClickBehavior:
          feedItemClickBehavior ?? this.feedItemClickBehavior,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object> get props => [
    id,
    userPreferenceConfig,
    adConfig,
    feedDecoratorConfig,
    appStatus,
    pushNotificationConfig,
    feedItemClickBehavior,
    createdAt,
    updatedAt,
  ];

  @override
  bool get stringify => true;
}
