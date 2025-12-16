import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';
import 'package:core/src/models/analytics/payloads/headline_filter_criteria_summary.dart';

/// {@template headline_filter_updated_payload}
/// Payload for the `headlineFilterUpdated` analytics event.
///
/// This event is fired when a user changes any aspect of an existing filter,
/// including its name, pin status, notification subscriptions, or criteria.
/// {@endtemplate}
class HeadlineFilterUpdatedPayload extends AnalyticsEventPayload {
  /// {@macro headline_filter_updated_payload}
  const HeadlineFilterUpdatedPayload({
    required this.filterId,
    this.newName,
    this.pinStatusChangedTo,
    this.deliveryTypesAdded,
    this.deliveryTypesRemoved,
    this.newCriteriaSummary,
  }) : assert(
         newName != null ||
             pinStatusChangedTo != null ||
             deliveryTypesAdded != null ||
             deliveryTypesRemoved != null ||
             newCriteriaSummary != null,
         'At least one change must be provided for a filter update event.',
       );

  /// The unique identifier of the filter that was updated.
  final String filterId;

  /// The new name of the filter, if it was changed.
  final String? newName;

  /// The new pinned status, if it was changed.
  final bool? pinStatusChangedTo;

  /// A list of notification delivery types that were enabled in this update.
  final List<PushNotificationSubscriptionDeliveryType>? deliveryTypesAdded;

  /// A list of notification delivery types that were disabled in this update.
  final List<PushNotificationSubscriptionDeliveryType>? deliveryTypesRemoved;

  /// A summary of the new filter criteria, if they were changed.
  final HeadlineFilterCriteriaSummary? newCriteriaSummary;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.filterId: filterId,
      if (newName != null) 'newName': newName,
      if (pinStatusChangedTo != null) 'pinStatusChangedTo': pinStatusChangedTo,
      if (deliveryTypesAdded != null)
        'deliveryTypesAdded': deliveryTypesAdded!.map((e) => e.name).toList(),
      if (deliveryTypesRemoved != null)
        'deliveryTypesRemoved': deliveryTypesRemoved!
            .map((e) => e.name)
            .toList(),
      if (newCriteriaSummary != null)
        'newCriteriaSummary': newCriteriaSummary!.toJson(),
    };
  }

  @override
  List<Object?> get props => [
    filterId,
    newName,
    pinStatusChangedTo,
    deliveryTypesAdded,
    deliveryTypesRemoved,
    newCriteriaSummary,
  ];
}
