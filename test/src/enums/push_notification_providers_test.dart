import 'package:core/src/enums/push_notification_providers.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationProviders', () {
    test('should contain all expected values', () {
      // Arrange: The expected set of enum values.
      const expectedValues = {
        PushNotificationProviders.firebase,
        PushNotificationProviders.oneSignal,
      };

      // Assert
      // Check that the number of enum values is correct.
      expect(PushNotificationProviders.values.length, 2);

      // Check that all expected values are present in the enum's values list.
      expect(PushNotificationProviders.values, containsAll(expectedValues));
    });
  });
}
