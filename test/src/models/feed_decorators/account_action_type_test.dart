import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('AccountActionType', () {
    test('has all expected values', () {
      expect(
        AccountActionType.values,
        containsAll([
          AccountActionType.linkAccount,
          AccountActionType.upgrade,
        ]),
      );
    });

    test('string representation (name) matches expected camelCase', () {
      expect(AccountActionType.linkAccount.name, 'linkAccount');
      expect(AccountActionType.upgrade.name, 'upgrade');
    });

    test('can be created from string using values.byName', () {
      expect(
        AccountActionType.values.byName('linkAccount'),
        AccountActionType.linkAccount,
      );
      expect(
        AccountActionType.values.byName('upgrade'),
        AccountActionType.upgrade,
      );
    });

    test('values.byName throws ArgumentError for unknown value', () {
      expect(
        () => AccountActionType.values.byName('unknownType'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
