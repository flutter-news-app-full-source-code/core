import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AppTourSkippedPayload', () {
    const payload = AppTourSkippedPayload();

    group('toMap', () {
      test('should return an empty map', () {
        final map = payload.toMap();
        expect(map, isEmpty);
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = AppTourSkippedPayload();
        const instance2 = AppTourSkippedPayload();
        expect(instance1, equals(instance2));
      });

      test('props list should be empty', () {
        expect(payload.props, isEmpty);
      });
    });
  });
}
