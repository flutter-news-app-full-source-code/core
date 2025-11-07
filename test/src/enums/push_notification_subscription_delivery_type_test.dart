import 'package:core/src/enums/push_notification_subscription_delivery_type.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationSubscriptionDeliveryType', () {
    test('should contain all expected values', () {
      // Arrange: The expected set of enum values.
      const expectedValues = {
        PushNotificationSubscriptionDeliveryType.breakingOnly,
        PushNotificationSubscriptionDeliveryType.dailyDigest,
        PushNotificationSubscriptionDeliveryType.weeklyRoundup,
      };

      // Assert
      // Check that the number of enum values is correct.
      expect(PushNotificationSubscriptionDeliveryType.values.length, 3);

      // Check that all expected values are present in the enum's values list.
      for (final value in expectedValues) {
        expect(
          PushNotificationSubscriptionDeliveryType.values,
          contains(value),
        );
      }
    });
  });
}
