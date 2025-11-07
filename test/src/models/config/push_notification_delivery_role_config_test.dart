import 'package:core/src/models/config/push_notification_delivery_role_config.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationDeliveryRoleConfig', () {
    // Since a specific fixture file was not provided, sample data is
    // created here for testing purposes.
    const roleConfig = PushNotificationDeliveryRoleConfig(subscriptionLimit: 5);

    final json = {'subscriptionLimit': 5};

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      const anotherRoleConfig = PushNotificationDeliveryRoleConfig(
        subscriptionLimit: 5,
      );

      // Assert: The two instances should be equal.
      expect(roleConfig, equals(anotherRoleConfig));
    });

    test('props are correct', () {
      // Assert: The props list should contain the subscriptionLimit.
      expect(roleConfig.props, equals([5]));
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = PushNotificationDeliveryRoleConfig.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(roleConfig));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = roleConfig.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define a new limit.
      const newLimit = 10;

      // Act: Create a copy with the new limit.
      final copiedConfig = roleConfig.copyWith(subscriptionLimit: newLimit);

      // Assert: The new instance should have the updated value.
      expect(copiedConfig.subscriptionLimit, equals(newLimit));

      // Assert: The original instance should remain unchanged.
      expect(roleConfig.subscriptionLimit, isNot(equals(newLimit)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedConfig = roleConfig.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedConfig, equals(roleConfig));
      },
    );
  });
}
