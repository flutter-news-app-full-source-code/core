import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InterestLimits', () {
    // Use the limits for a standard user from the main remote config fixture.
    final interestLimitsFixture = remoteConfigsFixturesData
        .first
        .interestConfig
        .limits[AppUserRole.standardUser]!;
    final json = interestLimitsFixture.toJson();

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      final anotherLimits = InterestLimits(
        total: interestLimitsFixture.total,
        feedFilters: interestLimitsFixture.feedFilters,
        notifications: interestLimitsFixture.notifications,
      );

      // Assert: The two instances should be equal.
      expect(interestLimitsFixture, equals(anotherLimits));
    });

    test('props are correct', () {
      // Assert: The props list should contain all relevant fields.
      expect(
        interestLimitsFixture.props,
        equals([
          interestLimitsFixture.total,
          interestLimitsFixture.feedFilters,
          interestLimitsFixture.notifications,
        ]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = InterestLimits.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(interestLimitsFixture));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = interestLimitsFixture.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define new values.
      const newTotal = 20;
      const newFeedFilters = 8;

      // Act: Create a copy with the new values.
      final copiedLimits = interestLimitsFixture.copyWith(
        total: newTotal,
        feedFilters: newFeedFilters,
      );

      // Assert: The new instance should have the updated values.
      expect(copiedLimits.total, equals(newTotal));
      expect(copiedLimits.feedFilters, equals(newFeedFilters));

      // Assert: Unchanged properties remain the same.
      expect(
        copiedLimits.notifications,
        equals(interestLimitsFixture.notifications),
      );

      // Assert: The original instance remains unchanged.
      expect(interestLimitsFixture.total, isNot(equals(newTotal)));
    });
  });
}
