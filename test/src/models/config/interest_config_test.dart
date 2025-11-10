import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InterestConfig', () {
    // Use the interest config from the main remote config fixture.
    final interestConfigFixture =
        remoteConfigsFixturesData.first.interestConfig;
    final json = interestConfigFixture.toJson();

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      final anotherConfig = InterestConfig(
        limits: interestConfigFixture.limits,
      );

      // Assert: The two instances should be equal.
      expect(interestConfigFixture, equals(anotherConfig));
    });

    test('props are correct', () {
      // Assert: The props list should contain all relevant fields.
      expect(
        interestConfigFixture.props,
        equals([interestConfigFixture.limits]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = InterestConfig.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(interestConfigFixture));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = interestConfigFixture.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define a new limits map, modifying one role.
      final newLimits = Map<AppUserRole, InterestLimits>.from(
        interestConfigFixture.limits,
      );
      newLimits[AppUserRole.guestUser] = newLimits[AppUserRole.guestUser]!
          .copyWith(total: 5);

      // Act: Create a copy with the new limits.
      final copiedConfig = interestConfigFixture.copyWith(limits: newLimits);

      // Assert: The new instance should have the updated value.
      expect(copiedConfig.limits, equals(newLimits));
      expect(copiedConfig.limits[AppUserRole.guestUser]!.total, equals(5));

      // Assert: The original instance remains unchanged.
      expect(interestConfigFixture.limits, isNot(equals(newLimits)));
    });
  });
}
