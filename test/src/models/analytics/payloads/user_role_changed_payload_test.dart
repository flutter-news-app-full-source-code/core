import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserRoleChangedPayload', () {
    const payload = UserRoleChangedPayload(
      fromRole: AppUserRole.standardUser,
      toRole: AppUserRole.premiumUser,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.fromRole: AppUserRole.standardUser.name,
          AnalyticsParameterKeys.toRole: AppUserRole.premiumUser.name,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = UserRoleChangedPayload(
          fromRole: AppUserRole.standardUser,
          toRole: AppUserRole.premiumUser,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = UserRoleChangedPayload(
          fromRole: AppUserRole.premiumUser,
          toRole: AppUserRole.standardUser,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.fromRole, payload.toRole]);
      });
    });
  });
}
