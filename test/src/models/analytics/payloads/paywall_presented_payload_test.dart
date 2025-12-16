import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('PaywallPresentedPayload', () {
    const payloadWithContent = PaywallPresentedPayload(
      triggerEvent: 'limitExceeded',
      contentId: 'headline-123',
    );

    const payloadWithoutContent = PaywallPresentedPayload(
      triggerEvent: 'upgradeButton',
    );

    group('toMap', () {
      test('should correctly serialize to a map with contentId', () {
        final map = payloadWithContent.toMap();
        expect(map, {
          AnalyticsParameterKeys.triggerEvent: 'limitExceeded',
          AnalyticsParameterKeys.contentId: 'headline-123',
        });
      });

      test('should correctly serialize to a map without contentId', () {
        final map = payloadWithoutContent.toMap();
        expect(map, {AnalyticsParameterKeys.triggerEvent: 'upgradeButton'});
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payloadWithContent;
        const instance2 = PaywallPresentedPayload(
          triggerEvent: 'limitExceeded',
          contentId: 'headline-123',
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        expect(payloadWithContent, isNot(equals(payloadWithoutContent)));
      });

      test('props list should contain all relevant fields', () {
        expect(payloadWithContent.props, [
          payloadWithContent.triggerEvent,
          payloadWithContent.contentId,
        ]);
      });
    });
  });
}
