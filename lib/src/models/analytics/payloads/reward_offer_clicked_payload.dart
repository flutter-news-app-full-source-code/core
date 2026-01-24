import 'package:core/src/enums/reward_type.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template reward_offer_clicked_payload}
/// Payload for the `rewardOfferClicked` analytics event.
///
/// Triggered when a user clicks on a specific reward offer card to initiate
/// the ad flow.
/// {@endtemplate}
class RewardOfferClickedPayload extends AnalyticsEventPayload {
  /// {@macro reward_offer_clicked_payload}
  const RewardOfferClickedPayload({required this.rewardType});

  /// The type of reward the user is attempting to unlock.
  final RewardType rewardType;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.rewardType: rewardType.name};
  }

  @override
  List<Object> get props => [rewardType];
}
