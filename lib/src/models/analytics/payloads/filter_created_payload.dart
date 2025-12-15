import 'package:core/src/enums/push_notification_subscription_delivery_type.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';
import 'package:core/src/models/analytics/payloads/filter_criteria_summary.dart';

/// {@template filter_created_payload}
/// Payload for the `filterCreated` analytics event.
/// {@endtemplate}
class FilterCreatedPayload extends AnalyticsEventPayload {
  /// {@macro filter_created_payload}
  const FilterCreatedPayload({
    required this.filterId,
    required this.criteriaSummary,
    required this.isPinned,
    required this.deliveryTypes,
    this.wasPinningLimited = false,
    this.limitedDeliveryTypes,
  });

  /// The unique identifier of the filter that was created.
  final String filterId;

  /// A summary of the filter criteria at creation.
  final FilterCriteriaSummary criteriaSummary;

  /// The initial pinned state of the filter at creation.
  final bool isPinned;

  /// The initial set of notification delivery types at creation.
  final Set<PushNotificationSubscriptionDeliveryType> deliveryTypes;

  /// A flag indicating if the user attempted to pin this filter during
  /// creation but was prevented by a limit.
  final bool wasPinningLimited;

  /// A list of notification delivery types that was disabled due to usage limits.
  final List<PushNotificationSubscriptionDeliveryType>? limitedDeliveryTypes;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.filterId: filterId,
      AnalyticsParameterKeys.isPinned: isPinned,
      AnalyticsParameterKeys.criteriaSummary: criteriaSummary.toJson(),
      AnalyticsParameterKeys.deliveryTypes: deliveryTypes
          .map((e) => e.name)
          .toList(),
      if (wasPinningLimited) 'wasPinningLimited': wasPinningLimited,
      if (limitedDeliveryTypes != null)
        'limitedDeliveryTypes': limitedDeliveryTypes!
            .map((e) => e.name)
            .toList(),
    };
  }

  @override
  List<Object?> get props => [
    filterId,
    criteriaSummary,
    isPinned,
    deliveryTypes,
    wasPinningLimited,
    limitedDeliveryTypes,
  ];
}
