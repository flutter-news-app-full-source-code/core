import 'package:core/src/enums/analytics_provider.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsProvider', () {
    test('has correct values', () {
      expect(
        AnalyticsProvider.values,
        containsAll([
          AnalyticsProvider.firebase,
          AnalyticsProvider.mixpanel,
          AnalyticsProvider.demo,
        ]),
      );
    });

    test('has correct string names', () {
      expect(AnalyticsProvider.firebase.name, 'firebase');
      expect(AnalyticsProvider.mixpanel.name, 'mixpanel');
      expect(AnalyticsProvider.demo.name, 'demo');
    });

    test('can be created from string names', () {
      expect(
        AnalyticsProvider.values.byName('firebase'),
        AnalyticsProvider.firebase,
      );
    });
  });
}
