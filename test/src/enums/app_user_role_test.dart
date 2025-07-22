import 'package:core/src/enums/app_user_role.dart';
import 'package:test/test.dart';

void main() {
  group('AppUserRole', () {
    test('has correct number of values', () {
      expect(AppUserRole.values.length, 3);
    });

    group('serialization', () {
      test('uses correct string values for json serialization', () {
        // This test verifies that the enum's string representation,
        // which is used by json_serializable, matches the expected value.
        expect(AppUserRole.premiumUser.name, 'premiumUser');
        expect(AppUserRole.standardUser.name, 'standardUser');
        expect(AppUserRole.guestUser.name, 'guestUser');
      });

      test('can be created from string value for json deserialization', () {
        // This test verifies that the enum can be created from its
        // string representation, mimicking json_serializable's behavior.
        expect(
          AppUserRole.values.byName('premiumUser'),
          AppUserRole.premiumUser,
        );
        expect(
          AppUserRole.values.byName('standardUser'),
          AppUserRole.standardUser,
        );
        expect(AppUserRole.values.byName('guestUser'), AppUserRole.guestUser);
      });

      test('throws ArgumentError for invalid string value', () {
        // Verifies that an unknown string cannot be converted to an enum value.
        expect(
          () => AppUserRole.values.byName('invalid_role'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
