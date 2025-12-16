import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template user_registered_payload}
/// Payload for the `userRegistered` analytics event.
/// {@endtemplate}
class UserRegisteredPayload extends AnalyticsEventPayload {
  /// {@macro user_registered_payload}
  const UserRegisteredPayload({required this.authMethod});

  /// The authentication method used for registration (e.g., 'email',
  /// 'anonymous').
  final String authMethod;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.authMethod: authMethod};
  }

  @override
  List<Object> get props => [authMethod];
}
