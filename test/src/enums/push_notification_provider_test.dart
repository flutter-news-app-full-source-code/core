import 'package:core/src/enums/push_notification_provider.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationProvider', () {
    test('should contain all expected values', () {
      // Arrange: The expected set of enum values.
      const expectedValues = {
        PushNotificationProvider.firebase,
        PushNotificationProvider.oneSignal,
      };

      // Assert
      // Check that the number of enum values is correct.
      expect(PushNotificationProvider.values.length, 2);

      // Check that all expected values are present in the enum's values list.
      expect(PushNotificationProvider.values, containsAll(expectedValues));
    });
  });
}
