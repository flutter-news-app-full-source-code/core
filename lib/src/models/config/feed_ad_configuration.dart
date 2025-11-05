import 'package:core/core.dart';
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
    required this.visibleTo,
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

  /// Explicitly defines which user roles can see this feed ad configuration
  /// and their specific frequency settings. If a role is not in this map,
  /// they will not see feed ads.
  final Map<AppUserRole, FeedAdFrequencyConfig> visibleTo;

  @override
  List<Object?> get props => [enabled, adType, visibleTo];

  /// Creates a copy of this [FeedAdConfiguration] but with the given fields
  /// replaced with the new values.
  FeedAdConfiguration copyWith({
    bool? enabled,
    AdType? adType,
    Map<AppUserRole, FeedAdFrequencyConfig>? visibleTo,
  }) {
    return FeedAdConfiguration(
      enabled: enabled ?? this.enabled,
      adType: adType ?? this.adType,
      visibleTo: visibleTo ?? this.visibleTo,
    );
  }
}
