import 'package:core/src/models/config/ad_config.dart';
import 'package:core/src/models/config/engagement_config.dart';
import 'package:core/src/models/config/feed_config.dart';
import 'package:core/src/models/config/push_notification_config.dart';
import 'package:core/src/models/config/reporting_config.dart';
import 'package:core/src/models/config/review_funnel_config.dart';
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
    required this.ads,
    required this.pushNotifications,
    required this.feed,
    required this.engagement,
    required this.reporting,
    required this.reviewFunnel,
  });

  /// Creates a [FeaturesConfig] from JSON data.
  factory FeaturesConfig.fromJson(Map<String, dynamic> json) =>
      _$FeaturesConfigFromJson(json);

  /// Configuration for all ad-related features.
  final AdConfig ads;

  /// Configuration for the push notification system.
  final PushNotificationConfig pushNotifications;

  /// Configuration for all feed-related features.
  final FeedConfig feed;

  /// Configuration for user engagement features (reactions, comments).
  final EngagementConfig engagement;

  /// Configuration for user content reporting features.
  final ReportingConfig reporting;

  /// Configuration for the smart app review funnel.
  final ReviewFunnelConfig reviewFunnel;

  /// Converts this [FeaturesConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$FeaturesConfigToJson(this);

  @override
  List<Object> get props => [
    ads,
    pushNotifications,
    feed,
    engagement,
    reporting,
    reviewFunnel,
  ];

  /// Creates a copy of this [FeaturesConfig] but with the given fields
  /// replaced with the new values.
  FeaturesConfig copyWith({
    AdConfig? ads,
    PushNotificationConfig? pushNotifications,
    FeedConfig? feed,
    EngagementConfig? engagement,
    ReportingConfig? reporting,
    ReviewFunnelConfig? reviewFunnel,
  }) {
    return FeaturesConfig(
      ads: ads ?? this.ads,
      pushNotifications: pushNotifications ?? this.pushNotifications,
      feed: feed ?? this.feed,
      engagement: engagement ?? this.engagement,
      reporting: reporting ?? this.reporting,
      reviewFunnel: reviewFunnel ?? this.reviewFunnel,
    );
  }
}
