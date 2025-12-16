import 'package:core/src/models/config/ad_config.dart';
import 'package:core/src/models/config/analytics_config.dart';
import 'package:core/src/models/config/community_config.dart';
import 'package:core/src/models/config/feed_config.dart';
import 'package:core/src/models/config/push_notification_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'features_config.g.dart';

/// {@template features_config}
/// A container for all user-facing feature configurations.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeaturesConfig extends Equatable {
  /// {@macro features_config}
  const FeaturesConfig({
    required this.analytics,
    required this.ads,
    required this.pushNotifications,
    required this.feed,
    required this.community,
  });

  /// Creates a [FeaturesConfig] from JSON data.
  factory FeaturesConfig.fromJson(Map<String, dynamic> json) =>
      _$FeaturesConfigFromJson(json);

  /// Configuration for the analytics system.
  final AnalyticsConfig analytics;

  /// Configuration for all ad-related features.
  final AdConfig ads;

  /// Configuration for the push notification system.
  final PushNotificationConfig pushNotifications;

  /// Configuration for all feed-related features.
  final FeedConfig feed;

  /// Configuration for community and user-generated content features.
  final CommunityConfig community;

  /// Converts this [FeaturesConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$FeaturesConfigToJson(this);

  @override
  List<Object> get props => [
    analytics,
    ads,
    pushNotifications,
    feed,
    community,
  ];

  /// Creates a copy of this [FeaturesConfig] but with the given fields
  /// replaced with the new values.
  FeaturesConfig copyWith({
    AnalyticsConfig? analytics,
    AdConfig? ads,
    PushNotificationConfig? pushNotifications,
    FeedConfig? feed,
    CommunityConfig? community,
  }) {
    return FeaturesConfig(
      analytics: analytics ?? this.analytics,
      ads: ads ?? this.ads,
      pushNotifications: pushNotifications ?? this.pushNotifications,
      feed: feed ?? this.feed,
      community: community ?? this.community,
    );
  }
}
