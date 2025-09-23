import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed_ad_frequency_config.g.dart';

/// {@template feed_ad_frequency_config}
/// Encapsulates ad frequency and placement intervals for feed-like ads
/// for a specific user role.
///
/// **Ad Injection Logic Explained:**
///
/// - __`AdFrequency`__: This determines *how often* an ad *can* be injected
///   relative to the number of primary content items. For example, an
///   `adFrequency` of 5 means an ad *could* be placed after every 5 primary
///   items. It sets the overall density of ads in the feed.
///
/// - __`AdPlacementInterval`__: This sets a *minimum number of primary items*
///   that must appear *before* the *first* ad is placed. It prevents ads
///   from appearing right at the very beginning of the feed, ensuring the
///   user sees some initial content first.
///
/// So, `AdFrequency` controls the spacing of ads *throughout* the feed
/// (after the initial interval), while `AdPlacementInterval` controls where
/// the *very first* ad can appear.
///
/// Think of it like this:
///
/// - `AdPlacementInterval` = 3: No ads will appear in the first 3 primary
///   items.
/// - `AdFrequency` = 5: After the first 3 items, an ad *could* appear after
///   item #5, then potentially after item #10, #15, etc.
/// {@endtemplate}@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedAdFrequencyConfig extends Equatable {
  /// {@macro feed_ad_frequency_config}
  const FeedAdFrequencyConfig({
    required this.adFrequency,
    required this.adPlacementInterval,
  });

  /// Creates a [FeedAdFrequencyConfig] from JSON data.
  factory FeedAdFrequencyConfig.fromJson(Map<String, dynamic> json) =>
      _$FeedAdFrequencyConfigFromJson(json);

  /// Converts this [FeedAdFrequencyConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$FeedAdFrequencyConfigToJson(this);

  /// See class documentation for details on AdFrequency.
  final int adFrequency;

  /// See class documentation for details on AdPlacementInterval.
  final int adPlacementInterval;

  @override
  List<Object> get props => [adFrequency, adPlacementInterval];

  /// Creates a copy of this [FeedAdFrequencyConfig] but with the given fields
  /// replaced with the new values.
  FeedAdFrequencyConfig copyWith({int? adFrequency, int? adPlacementInterval}) {
    return FeedAdFrequencyConfig(
      adFrequency: adFrequency ?? this.adFrequency,
      adPlacementInterval: adPlacementInterval ?? this.adPlacementInterval,
    );
  }
}
