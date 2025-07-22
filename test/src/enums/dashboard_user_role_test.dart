import 'package:core/src/enums/dashboard_user_role.dart';
import 'package:test/test.dart';

void main() {
  group('DashboardUserRole', () {
    test('has correct number of values', () {
      expect(DashboardUserRole.values.length, 3);
    });

    group('serialization', () {
      test('uses correct string values for json serialization', () {
        // This test verifies that the enum's string representation,
        // which is used by json_serializable, matches the expected value.
        expect(DashboardUserRole.admin.name, 'admin');
        expect(DashboardUserRole.publisher.name, 'publisher');
        expect(DashboardUserRole.none.name, 'none');
      });

      test('can be created from string value for json deserialization', () {
        // This test verifies that the enum can be created from its
        // string representation, mimicking json_serializable's behavior.
        expect(
          DashboardUserRole.values.byName('admin'),
          DashboardUserRole.admin,
        );
        expect(
          DashboardUserRole.values.byName('publisher'),
          DashboardUserRole.publisher,
        );
        expect(DashboardUserRole.values.byName('none'), DashboardUserRole.none);
      });

      test('throws ArgumentError for invalid string value', () {
        // Verifies that an unknown string cannot be converted to an enum value.
        // json_serializable would throw a CheckedFromJsonException, but this
        // test ensures the core lookup fails as expected.
        expect(
          () => DashboardUserRole.values.byName('invalid_role'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
