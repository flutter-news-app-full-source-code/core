import 'package:core/src/enums/reward_type.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template reward_granted_payload}
/// Payload for the `rewardGranted` analytics event.
///
/// Triggered when the server validates the ad view and the app successfully
/// grants the reward to the user.
/// {@endtemplate}
class RewardGrantedPayload extends AnalyticsEventPayload {
  /// {@macro reward_granted_payload}
  const RewardGrantedPayload({
    required this.rewardType,
    required this.durationDays,
  });

  /// The type of reward granted.
  final RewardType rewardType;

  /// The duration of the reward in days.
  final int durationDays;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.rewardType: rewardType.name,
      AnalyticsParameterKeys.durationDays: durationDays,
    };
  }

  @override
  List<Object> get props => [rewardType, durationDays];
}
