import 'package:core/core.dart';
import 'package:core/src/models/config/feed_ad_frequency_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_ad_configuration.g.dart';

/// {@template feed_ad_configuration}
/// Configuration for ads in all feed-like sections
/// (main feed, search, similar headlines feed).
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedAdConfiguration extends Equatable {
  /// {@macro feed_ad_configuration}
  const FeedAdConfiguration({
    required this.enabled,
    required this.adType,
    required this.frequencyConfig,
  }) : assert(
         adType == AdType.native || adType == AdType.banner,
         'Feed ads must be of type native or banner.',
       );

  /// Creates a [FeedAdConfiguration] from JSON data.
  factory FeedAdConfiguration.fromJson(Map<String, dynamic> json) =>
      _$FeedAdConfigurationFromJson(json);

  /// Converts this [FeedAdConfiguration] instance to JSON data.
  Map<String, dynamic> toJson() => _$FeedAdConfigurationToJson(this);

  /// Master switch to enable or disable feed ads.
  final bool enabled;

  /// Defines the type of ad (Native or Banner) for the entire feed placement.
  final AdType adType;

  /// User-role-based ad frequency and placement intervals for feed ads.
  final FeedAdFrequencyConfig frequencyConfig;

  @override
  List<Object?> get props => [enabled, adType, frequencyConfig];

  /// Creates a copy of this [FeedAdConfiguration] but with the given fields
  /// replaced with the new values.
  FeedAdConfiguration copyWith({
    bool? enabled,
    AdType? adType,
    FeedAdFrequencyConfig? frequencyConfig,
  }) {
    return FeedAdConfiguration(
      enabled: enabled ?? this.enabled,
      adType: adType ?? this.adType,
      frequencyConfig: frequencyConfig ?? this.frequencyConfig,
    );
  }
}
