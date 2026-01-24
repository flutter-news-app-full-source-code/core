import 'package:core/core.dart';

/// {@template rewards_hub_viewed_payload}
/// Payload for the `rewardsHubViewed` analytics event.
///
/// Triggered when the user navigates to the Rewards Hub screen.
/// {@endtemplate}
class RewardsHubViewedPayload extends AnalyticsEventPayload {
  /// {@macro rewards_hub_viewed_payload}
  const RewardsHubViewedPayload({this.referrer});

  /// The screen or feature from which the user navigated to the rewards hub.
  final String? referrer;

  @override
  Map<String, dynamic> toMap() {
    return {if (referrer != null) AnalyticsParameterKeys.referrer: referrer};
  }

  @override
  List<Object?> get props => [referrer];
}
