import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserRoleChangedPayload', () {
    const payload = UserRoleChangedPayload(
      fromRole: UserRole.user,
      toRole: UserRole.publisher,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.fromRole: UserRole.user.name,
          AnalyticsParameterKeys.toRole: UserRole.publisher.name,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = UserRoleChangedPayload(
          fromRole: UserRole.user,
          toRole: UserRole.publisher,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = UserRoleChangedPayload(
          fromRole: UserRole.publisher,
          toRole: UserRole.user,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.fromRole, payload.toRole]);
      });
    });
  });
}
