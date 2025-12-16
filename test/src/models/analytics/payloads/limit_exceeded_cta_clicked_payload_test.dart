import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('LimitExceededCtaClickedPayload', () {
    const payload = LimitExceededCtaClickedPayload(ctaType: 'upgrade');

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {AnalyticsParameterKeys.ctaType: 'upgrade'});
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = LimitExceededCtaClickedPayload(ctaType: 'upgrade');
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = LimitExceededCtaClickedPayload(
          ctaType: 'linkAccount',
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.ctaType]);
      });
    });
  });
}
