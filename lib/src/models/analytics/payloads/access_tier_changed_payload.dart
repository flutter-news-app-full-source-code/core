import 'package:core/core.dart';

/// {@template access_tier_changed_payload}
/// Payload for the `accessTierChanged` analytics event.
/// This event is fired when a user's entitlement level (service tier) changes.
/// Examples:
/// - A guest user signs up (Guest -> Standard).
/// - A standard user purchases a subscription (Standard -> Premium).
/// - A subscription expires (Premium -> Standard).
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
      AnalyticsParameterKeys.fromTier: fromTier.name,
      AnalyticsParameterKeys.toTier: toTier.name,
    };
  }

  @override
  List<Object> get props => [fromTier, toTier];
}
