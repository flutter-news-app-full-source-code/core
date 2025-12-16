import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserRegisteredPayload', () {
    const payload = UserRegisteredPayload(authMethod: 'anonymous');

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {AnalyticsParameterKeys.authMethod: 'anonymous'});
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = UserRegisteredPayload(authMethod: 'anonymous');
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = UserRegisteredPayload(authMethod: 'email');
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.authMethod]);
      });
    });
  });
}
