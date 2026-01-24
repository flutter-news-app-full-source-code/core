import 'package:core/src/enums/ad_platform_type.dart';
import 'package:core/src/enums/ad_type.dart';
import 'package:core/src/enums/reward_type.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template ad_reward_earned_payload}
/// Payload for the `adRewardEarned` analytics event.
/// {@endtemplate}
class AdRewardEarnedPayload extends AnalyticsEventPayload {
  /// {@macro ad_reward_earned_payload}
  const AdRewardEarnedPayload({
    required this.adProvider,
    required this.adType,
    required this.adPlacement,
    required this.rewardType,
    required this.rewardAmount,
  });

  /// The ad provider that served the ad.
  final AdPlatformType adProvider;

  /// The format of the ad.
  final AdType adType;

  /// The location in the app where the ad was shown.
  final String adPlacement;

  /// The type of reward the user is attempting to unlock.
  final RewardType rewardType;

  /// The amount of the reward earned.
  final num rewardAmount;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.adProvider: adProvider.name,
      AnalyticsParameterKeys.adType: adType.name,
      AnalyticsParameterKeys.adPlacement: adPlacement,
      AnalyticsParameterKeys.rewardType: rewardType.name,
      AnalyticsParameterKeys.rewardAmount: rewardAmount,
    };
  }

  @override
  List<Object> get props => [
    adProvider,
    adType,
    adPlacement,
    rewardType,
    rewardAmount,
  ];
}
