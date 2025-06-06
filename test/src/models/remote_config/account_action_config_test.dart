import 'package:ht_shared/src/models/remote_config/account_action_config.dart';
import 'package:test/test.dart';

void main() {
  group('AccountActionConfig', () {
    const guestDays = 7;
    const standardUserDays = 14;

    const defaultConfig = AccountActionConfig(
      guestDaysBetweenAccountActions: guestDays,
      standardUserDaysBetweenAccountActions: standardUserDays,
    );

    group('constructor', () {
      test('assigns all properties correctly', () {
        expect(defaultConfig.guestDaysBetweenAccountActions, guestDays);
        expect(
          defaultConfig.standardUserDaysBetweenAccountActions,
          standardUserDays,
        );
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = {
          'guest_days_between_account_actions': guestDays,
          'standard_user_days_between_account_actions': standardUserDays,
        };
        final result = AccountActionConfig.fromJson(json);
        expect(result, equals(defaultConfig));
      });

      test('parses a complete object with different values', () {
        final json = {
          'guest_days_between_account_actions': 5,
          'standard_user_days_between_account_actions': 10,
        };
        final result = AccountActionConfig.fromJson(json);
        expect(result.guestDaysBetweenAccountActions, 5);
        expect(result.standardUserDaysBetweenAccountActions, 10);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = defaultConfig.toJson();
        expect(json, {
          'guest_days_between_account_actions': guestDays,
          'standard_user_days_between_account_actions': standardUserDays,
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
          guestDaysBetweenAccountActions: 1,
          standardUserDaysBetweenAccountActions: 2,
        );
        expect(copy.guestDaysBetweenAccountActions, 1);
        expect(copy.standardUserDaysBetweenAccountActions, 2);
      });

      test('copies correctly when some arguments are provided', () {
        final copy = defaultConfig.copyWith(guestDaysBetweenAccountActions: 10);
        expect(copy.guestDaysBetweenAccountActions, 10);
        expect(copy.standardUserDaysBetweenAccountActions, standardUserDays);
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        const config1 = AccountActionConfig(
          guestDaysBetweenAccountActions: 1,
          standardUserDaysBetweenAccountActions: 2,
        );
        const config2 = AccountActionConfig(
          guestDaysBetweenAccountActions: 1,
          standardUserDaysBetweenAccountActions: 2,
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        const config1 = AccountActionConfig(
          guestDaysBetweenAccountActions: 1,
          standardUserDaysBetweenAccountActions: 2,
        );
        const config2 = AccountActionConfig(
          guestDaysBetweenAccountActions: 10, // Different
          standardUserDaysBetweenAccountActions: 2,
        );
        expect(config1, isNot(equals(config2)));
      });

      test('props list contains all relevant fields', () {
        expect(defaultConfig.props, [guestDays, standardUserDays]);
      });
    });
  });
}
