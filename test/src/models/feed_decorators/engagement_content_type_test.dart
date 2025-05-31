import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementContentType', () {
    test('has all expected values', () {
      expect(
        EngagementContentType.values,
        containsAll([
          EngagementContentType.signUp,
          EngagementContentType.upgrade,
          EngagementContentType.rateApp,
        ]),
      );
    });

    test('string representation (name) matches expected camelCase', () {
      expect(EngagementContentType.signUp.name, 'signUp');
      expect(EngagementContentType.upgrade.name, 'upgrade');
      expect(EngagementContentType.rateApp.name, 'rateApp');
    });

    test('can be created from string using values.byName', () {
      expect(
        EngagementContentType.values.byName('signUp'),
        EngagementContentType.signUp,
      );
      expect(
        EngagementContentType.values.byName('upgrade'),
        EngagementContentType.upgrade,
      );
      expect(
        EngagementContentType.values.byName('rateApp'),
        EngagementContentType.rateApp,
      );
    });

    test('values.byName throws ArgumentError for unknown value', () {
      expect(
        () => EngagementContentType.values.byName('unknownType'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
