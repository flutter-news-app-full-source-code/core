import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('Interest', () {
    // Use the first item from the fixtures as the test subject.
    final interestFixture = interestsFixturesData.first;
    final json = interestFixture.toJson();

    test('supports value equality', () {
      // Arrange: Create another instance with the same values from the fixture.
      final anotherInterest = interestFixture.copyWith();

      // Assert: The two instances should be equal.
      expect(interestFixture, equals(anotherInterest));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields for Equatable.
      expect(
        interestFixture.props,
        equals([
          interestFixture.id,
          interestFixture.userId,
          interestFixture.name,
          interestFixture.criteria,
          interestFixture.isFeedFilter,
          interestFixture.deliveryTypes,
        ]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = Interest.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(interestFixture));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = interestFixture.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define new values for various properties.
      const newName = 'My Custom Tech Feed';
      const newDeliveryTypes = {
        PushNotificationSubscriptionDeliveryType.dailyDigest,
      };

      // Act: Create a copy with the updated values.
      final copiedInterest = interestFixture.copyWith(
        name: newName,
        deliveryTypes: newDeliveryTypes,
      );

      // Assert: The new instance should have the updated values.
      expect(copiedInterest.name, equals(newName));
      expect(copiedInterest.deliveryTypes, equals(newDeliveryTypes));

      // Assert: Unchanged properties remain the same.
      expect(copiedInterest.id, equals(interestFixture.id));
      expect(copiedInterest.criteria, equals(interestFixture.criteria));

      // Assert: The original instance remains unchanged.
      expect(interestFixture.name, isNot(equals(newName)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedInterest = interestFixture.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedInterest, equals(interestFixture));
      },
    );
  });
}
