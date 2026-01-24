import 'package:core/src/enums/analytics_event.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsEvent', () {
    test('has correct number of values', () {
      // This test is fragile and will need updates if the enum changes.
      expect(AnalyticsEvent.values.length, 41);
    });

    test('has correct string names', () {
      expect(AnalyticsEvent.userRegistered.name, 'userRegistered');
      expect(
        AnalyticsEvent.limitExceededCtaClicked.name,
        'limitExceededCtaClicked',
      );
      expect(
        AnalyticsEvent.headlineFilterCreated.name,
        'headlineFilterCreated',
      );
      expect(AnalyticsEvent.sourceFilterCreated.name, 'sourceFilterCreated');
    });

    test('can be created from string names', () {
      expect(
        AnalyticsEvent.values.byName('userRegistered'),
        AnalyticsEvent.userRegistered,
      );
      expect(
        AnalyticsEvent.values.byName('headlineFilterCreated'),
        AnalyticsEvent.headlineFilterCreated,
      );
    });
  });
}
