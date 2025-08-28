import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_ad_frequency_config.g.dart';

/// {@template feed_ad_frequency_config}
/// Encapsulates user-role-based ad frequency and placement intervals
/// for feed-like ads.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedAdFrequencyConfig extends Equatable {
  /// {@macro feed_ad_frequency_config}
  const FeedAdFrequencyConfig({
    required this.guestAdFrequency,
    required this.guestAdPlacementInterval,
    required this.authenticatedAdFrequency,
    required this.authenticatedAdPlacementInterval,
    required this.premiumAdFrequency,
    required this.premiumAdPlacementInterval,
  });

  /// Creates a [FeedAdFrequencyConfig] from JSON data.
  factory FeedAdFrequencyConfig.fromJson(Map<String, dynamic> json) =>
      _$FeedAdFrequencyConfigFromJson(json);

  /// Converts this [FeedAdFrequencyConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$FeedAdFrequencyConfigToJson(this);

  /// See class documentation for details on AdFrequency.
  final int guestAdFrequency;

  /// See class documentation for details on AdPlacementInterval.
  final int guestAdPlacementInterval;

  /// See class documentation for details on AdFrequency.
  final int authenticatedAdFrequency;

  /// See class documentation for details on AdPlacementInterval.
  final int authenticatedAdPlacementInterval;

  /// See class documentation for details on AdFrequency.
  final int premiumAdFrequency;

  /// See class documentation for details on AdPlacementInterval.
  final int premiumAdPlacementInterval;

  @override
  List<Object> get props => [
    guestAdFrequency,
    guestAdPlacementInterval,
    authenticatedAdFrequency,
    authenticatedAdPlacementInterval,
    premiumAdFrequency,
    premiumAdPlacementInterval,
  ];

  /// Creates a copy of this [FeedAdFrequencyConfig] but with the given fields
  /// replaced with the new values.
  FeedAdFrequencyConfig copyWith({
    int? guestAdFrequency,
    int? guestAdPlacementInterval,
    int? authenticatedAdFrequency,
    int? authenticatedAdPlacementInterval,
    int? premiumAdFrequency,
    int? premiumAdPlacementInterval,
  }) {
    return FeedAdFrequencyConfig(
      guestAdFrequency: guestAdFrequency ?? this.guestAdFrequency,
      guestAdPlacementInterval:
          guestAdPlacementInterval ?? this.guestAdPlacementInterval,
      authenticatedAdFrequency:
          authenticatedAdFrequency ?? this.authenticatedAdFrequency,
      authenticatedAdPlacementInterval:
          authenticatedAdPlacementInterval ??
          this.authenticatedAdPlacementInterval,
      premiumAdFrequency: premiumAdFrequency ?? this.premiumAdFrequency,
      premiumAdPlacementInterval:
          premiumAdPlacementInterval ?? this.premiumAdPlacementInterval,
    );
  }
}
