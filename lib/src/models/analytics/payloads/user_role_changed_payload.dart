import 'package:core/src/enums/user_role.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template user_role_changed_payload}
/// Payload for the `userRoleChanged` analytics event.
/// {@endtemplate}
class UserRoleChangedPayload extends AnalyticsEventPayload {
  /// {@macro user_role_changed_payload}
  const UserRoleChangedPayload({required this.fromRole, required this.toRole});

  /// The user's role before the change.
  final UserRole fromRole;

  /// The user's new role after the change.
  final UserRole toRole;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.fromRole: fromRole.name,
      AnalyticsParameterKeys.toRole: toRole.name,
    };
  }

  @override
  List<Object> get props => [fromRole, toRole];
}
