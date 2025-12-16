import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';
import 'package:core/src/models/analytics/payloads/source_filter_criteria_summary.dart';

/// {@template source_filter_updated_payload}
/// Payload for the `sourceFilterUpdated` analytics event.
/// {@endtemplate}
class SourceFilterUpdatedPayload extends AnalyticsEventPayload {
  /// {@macro source_filter_updated_payload}
  const SourceFilterUpdatedPayload({
    required this.filterId,
    this.newName,
    this.pinStatusChangedTo,
    this.newCriteriaSummary,
  }) : assert(
         newName != null ||
             pinStatusChangedTo != null ||
             newCriteriaSummary != null,
         'At least one change must be provided for a source filter update event.',
       );

  /// The unique identifier of the filter that was updated.
  final String filterId;

  /// The new name of the filter, if it was changed.
  final String? newName;

  /// The new pinned status, if it was changed.
  final bool? pinStatusChangedTo;

  /// A summary of the new filter criteria, if they were changed.
  final SourceFilterCriteriaSummary? newCriteriaSummary;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.filterId: filterId,
      if (newName != null) 'newName': newName,
      if (pinStatusChangedTo != null) 'pinStatusChangedTo': pinStatusChangedTo,
      if (newCriteriaSummary != null)
        'newCriteriaSummary': newCriteriaSummary!.toJson(),
    };
  }

  @override
  List<Object?> get props => [
    filterId,
    newName,
    pinStatusChangedTo,
    newCriteriaSummary,
  ];
}
