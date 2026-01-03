import 'package:core/src/enums/analytics_providers.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsProviders', () {
    test('has correct values', () {
      expect(
        AnalyticsProviders.values,
        containsAll([AnalyticsProviders.firebase, AnalyticsProviders.mixpanel]),
      );
    });

    test('has correct string names', () {
      expect(AnalyticsProviders.firebase.name, 'firebase');
      expect(AnalyticsProviders.mixpanel.name, 'mixpanel');
    });

    test('can be created from string names', () {
      expect(
        AnalyticsProviders.values.byName('firebase'),
        AnalyticsProviders.firebase,
      );
    });
  });
}
