import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template user_login_payload}
/// Payload for the `userLogin` analytics event.
/// {@endtemplate}
class UserLoginPayload extends AnalyticsEventPayload {
  /// {@macro user_login_payload}
  const UserLoginPayload({required this.authMethod});

  /// The authentication method used for login (e.g., 'email',
  /// 'anonymous').
  final String authMethod;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.authMethod: authMethod};
  }

  @override
  List<Object> get props => [authMethod];
}
