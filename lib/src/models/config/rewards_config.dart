import 'package:core/src/enums/reward_type.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'rewards_config.g.dart';

/// {@template rewards_config}
/// Configuration for the time-based reward system.
///
/// Controls which rewards are available and their duration.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class RewardsConfig extends Equatable {
  /// {@macro rewards_config}
  const RewardsConfig({required this.enabled, required this.rewards});

  /// Creates a [RewardsConfig] from JSON data.
  factory RewardsConfig.fromJson(Map<String, dynamic> json) =>
      _$RewardsConfigFromJson(json);

  /// Master switch for the rewards system.
  final bool enabled;

  /// Configuration for each specific reward type.
  final Map<RewardType, RewardDetails> rewards;

  /// Converts this [RewardsConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$RewardsConfigToJson(this);

  @override
  List<Object?> get props => [enabled, rewards];

  /// Creates a copy of this [RewardsConfig] with updated values.
  RewardsConfig copyWith({
    bool? enabled,
    Map<RewardType, RewardDetails>? rewards,
  }) {
    return RewardsConfig(
      enabled: enabled ?? this.enabled,
      rewards: rewards ?? this.rewards,
    );
  }
}

/// {@template reward_details}
/// Defines the parameters for a specific reward.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class RewardDetails extends Equatable {
  /// {@macro reward_details}
  const RewardDetails({required this.enabled, required this.durationDays});

  /// Creates a [RewardDetails] from JSON data.
  factory RewardDetails.fromJson(Map<String, dynamic> json) =>
      _$RewardDetailsFromJson(json);

  /// Whether this specific reward is currently obtainable.
  final bool enabled;

  /// The duration in days that the reward remains active after being granted.
  final int durationDays;

  /// Converts this [RewardDetails] instance to JSON data.
  Map<String, dynamic> toJson() => _$RewardDetailsToJson(this);

  @override
  List<Object?> get props => [enabled, durationDays];

  /// Creates a copy of this [RewardDetails] with updated values.
  RewardDetails copyWith({bool? enabled, int? durationDays}) {
    return RewardDetails(
      enabled: enabled ?? this.enabled,
      durationDays: durationDays ?? this.durationDays,
    );
  }
}
