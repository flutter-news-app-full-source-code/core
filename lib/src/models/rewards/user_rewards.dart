import 'package:core/core.dart' show User;
import 'package:core/src/enums/reward_type.dart';
import 'package:core/src/models/auth/auth.dart' show User;
import 'package:core/src/models/auth/user.dart' show User;
import 'package:core/src/models/models.dart' show User;
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_rewards.g.dart';

/// {@template user_rewards}
/// Tracks the active rewards and entitlements for a specific user.
///
/// This model is persisted separately from the core [User] identity to allow
/// for high-frequency updates (e.g., ad watching, timer expiration) without
/// contention on the main user profile.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserRewards extends Equatable {
  /// {@macro user_rewards}
  const UserRewards({
    required this.id,
    required this.userId,
    required this.activeRewards,
  });

  /// Creates a [UserRewards] from JSON data.
  factory UserRewards.fromJson(Map<String, dynamic> json) =>
      _$UserRewardsFromJson(json);

  /// The unique identifier for this rewards record.
  final String id;

  /// The ID of the user these rewards belong to.
  final String userId;

  /// A map of active rewards and their expiration times.
  ///
  /// Key: The [RewardType] (e.g., adFree).
  /// Value: The [DateTime] when the reward expires.
  @JsonKey(fromJson: _activeRewardsFromJson, toJson: _activeRewardsToJson)
  final Map<RewardType, DateTime> activeRewards;

  /// Checks if a specific reward is currently active.
  bool isRewardActive(RewardType type) {
    final expiry = activeRewards[type];
    return expiry != null && DateTime.now().isBefore(expiry);
  }

  /// Converts this [UserRewards] instance to JSON data.
  Map<String, dynamic> toJson() => _$UserRewardsToJson(this);

  @override
  List<Object?> get props => [id, userId, activeRewards];

  /// Creates a copy of this [UserRewards] with updated values.
  UserRewards copyWith({
    String? id,
    String? userId,
    Map<RewardType, DateTime>? activeRewards,
  }) {
    return UserRewards(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      activeRewards: activeRewards ?? this.activeRewards,
    );
  }
}

Map<RewardType, DateTime> _activeRewardsFromJson(Map<String, dynamic> json) {
  return json.map(
    (k, v) =>
        MapEntry(RewardType.values.byName(k), DateTime.parse(v as String)),
  );
}

Map<String, dynamic> _activeRewardsToJson(Map<RewardType, DateTime> rewards) {
  return rewards.map((k, v) => MapEntry(k.name, v.toIso8601String()));
}
