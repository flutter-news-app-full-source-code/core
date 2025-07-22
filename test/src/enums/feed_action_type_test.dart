import 'package:core/core.dart';
import 'package:core/src/enums/feed_action_type.dart';
import 'package:test/test.dart';

void main() {
  group('AccountActionType', () {
    test('has all expected values', () {
      expect(
        FeedActionType.values,
        containsAll([FeedActionType.linkAccount, FeedActionType.upgrade]),
      );
    });

    test('string representation (name) matches expected camelCase', () {
      expect(FeedActionType.linkAccount.name, 'linkAccount');
      expect(FeedActionType.upgrade.name, 'upgrade');
    });

    test('can be created from string using values.byName', () {
      expect(
        FeedActionType.values.byName('linkAccount'),
        FeedActionType.linkAccount,
      );
      expect(FeedActionType.values.byName('upgrade'), FeedActionType.upgrade);
    });

    test('values.byName throws ArgumentError for unknown value', () {
      expect(
        () => FeedActionType.values.byName('unknownType'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
