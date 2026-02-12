import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AppTourCompletedPayload', () {
    const payload = AppTourCompletedPayload();

    group('toMap', () {
      test('should return an empty map', () {
        final map = payload.toMap();
        expect(map, isEmpty);
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = AppTourCompletedPayload();
        const instance2 = AppTourCompletedPayload();
        expect(instance1, equals(instance2));
      });

      test('props list should be empty', () {
        expect(payload.props, isEmpty);
      });
    });
  });
}
