import 'package:core/src/enums/feed_action_type.dart';
import 'package:core/src/models/config/account_action_config.dart';
import 'package:test/test.dart';

void main() {
  group('AccountActionConfig', () {
    final guestDays = {FeedActionType.linkAccount: 7};
    final standardUserDays = {FeedActionType.linkAccount: 14};

    final defaultConfig = AccountActionConfig(
      guestDaysBetweenActions: guestDays,
      standardUserDaysBetweenActions: standardUserDays,
    );

    group('constructor', () {
      test('assigns all properties correctly', () {
        expect(defaultConfig.guestDaysBetweenActions, guestDays);
        expect(defaultConfig.standardUserDaysBetweenActions, standardUserDays);
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = {
          'guestDaysBetweenActions': {'linkAccount': 7},
          'standardUserDaysBetweenActions': {'linkAccount': 14},
        };
        final result = AccountActionConfig.fromJson(json);
        expect(result, equals(defaultConfig));
      });

      test('parses a complete object with different values', () {
        final json = {
          'guestDaysBetweenActions': {'linkAccount': 5},
          'standardUserDaysBetweenActions': {'linkAccount': 10},
        };
        final result = AccountActionConfig.fromJson(json);
        expect(result.guestDaysBetweenActions, {FeedActionType.linkAccount: 5});
        expect(result.standardUserDaysBetweenActions, {
          FeedActionType.linkAccount: 10,
        });
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = defaultConfig.toJson();
        expect(json, {
          'guestDaysBetweenActions': {'linkAccount': 7},
          'standardUserDaysBetweenActions': {'linkAccount': 14},
        });
      });
    });

    group('copyWith', () {
      test('copies correctly when no arguments are provided', () {
        final copy = defaultConfig.copyWith();
        expect(copy, defaultConfig);
      });

      test('copies correctly when all arguments are provided', () {
        final copy = defaultConfig.copyWith(
          guestDaysBetweenActions: {FeedActionType.linkAccount: 1},
          standardUserDaysBetweenActions: {FeedActionType.linkAccount: 2},
        );
        expect(copy.guestDaysBetweenActions, {FeedActionType.linkAccount: 1});
        expect(copy.standardUserDaysBetweenActions, {
          FeedActionType.linkAccount: 2,
        });
      });

      test('copies correctly when some arguments are provided', () {
        final copy = defaultConfig.copyWith(
          guestDaysBetweenActions: {FeedActionType.linkAccount: 10},
        );
        expect(copy.guestDaysBetweenActions, {FeedActionType.linkAccount: 10});
        expect(copy.standardUserDaysBetweenActions, standardUserDays);
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        const config1 = AccountActionConfig(
          guestDaysBetweenActions: {FeedActionType.linkAccount: 1},
          standardUserDaysBetweenActions: {FeedActionType.linkAccount: 2},
        );
        const config2 = AccountActionConfig(
          guestDaysBetweenActions: {FeedActionType.linkAccount: 1},
          standardUserDaysBetweenActions: {FeedActionType.linkAccount: 2},
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        const config1 = AccountActionConfig(
          guestDaysBetweenActions: {FeedActionType.linkAccount: 1},
          standardUserDaysBetweenActions: {FeedActionType.linkAccount: 2},
        );
        const config2 = AccountActionConfig(
          guestDaysBetweenActions: {
            FeedActionType.linkAccount: 10,
          }, // Different
          standardUserDaysBetweenActions: {FeedActionType.linkAccount: 2},
        );
        expect(config1, isNot(equals(config2)));
      });

      test('props list contains all relevant fields', () {
        expect(defaultConfig.props, [guestDays, standardUserDays]);
      });
    });
  });
}
