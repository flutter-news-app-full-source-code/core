import 'package:core/src/enums/limited_action.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template limit_exceeded_payload}
/// Payload for the `limitExceeded` analytics event.
/// {@endtemplate}
class LimitExceededPayload extends AnalyticsEventPayload {
  /// {@macro limit_exceeded_payload}
  const LimitExceededPayload({required this.limitType});

  /// The type of limit that was hit (e.g., 'savedHeadlines').
  final LimitedAction limitType;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.limitType: limitType.name};
  }

  @override
  List<Object> get props => [limitType];
}
