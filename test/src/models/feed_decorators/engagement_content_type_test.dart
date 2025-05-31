import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementContentType', () {
    test('has all expected values', () {
      expect(
        EngagementContentType.values,
        containsAll([
          EngagementContentType.linkAccount,
          EngagementContentType.upgrade,
        ]),
      );
    });

    test('string representation (name) matches expected camelCase', () {
      expect(EngagementContentType.linkAccount.name, 'linkAccount');
      expect(EngagementContentType.upgrade.name, 'upgrade');
    });

    test('can be created from string using values.byName', () {
      expect(
        EngagementContentType.values.byName('linkAccount'),
        EngagementContentType.linkAccount,
      );
      expect(
        EngagementContentType.values.byName('upgrade'),
        EngagementContentType.upgrade,
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
