import 'package:core/core.dart';

/// {@template access_tier_changed_payload}
/// Payload for the `accessTierChanged` analytics event.
///
/// This event is fired when a user's entitlement level changes, for example,
/// by upgrading to premium or when a access expires.
/// {@endtemplate}
class AccessTierChangedPayload extends AnalyticsEventPayload {
  /// {@macro access_tier_changed_payload}
  const AccessTierChangedPayload({
    required this.fromTier,
    required this.toTier,
  });

  /// The user's access tier before the change.
  final AccessTier fromTier;

  /// The user's new access tier after the change.
  final AccessTier toTier;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.fromRole: fromTier.name,
      AnalyticsParameterKeys.toRole: toTier.name,
    };
  }

  @override
  List<Object> get props => [fromTier, toTier];
}
