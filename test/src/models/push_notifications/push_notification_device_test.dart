import 'package:core/src/enums/device_platform.dart';
import 'package:core/src/enums/push_notification_provider.dart';
import 'package:core/src/models/push_notifications/push_notification_device.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationDevice', () {
    const id = 'device-id-1';
    const userId = 'user-id-1';
    const token = 'device-token-string';
    const provider = PushNotificationProvider.firebase;
    const platform = DevicePlatform.android;
    final createdAt = DateTime.parse('2023-01-01T10:00:00.000Z');
    final updatedAt = DateTime.parse('2023-01-01T11:00:00.000Z');

    final device = PushNotificationDevice(
      id: id,
      userId: userId,
      token: token,
      provider: provider,
      platform: platform,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );

    final json = {
      'id': id,
      'userId': userId,
      'token': token,
      'provider': 'firebase',
      'platform': 'android',
      'createdAt': '2023-01-01T10:00:00.000Z',
      'updatedAt': '2023-01-01T11:00:00.000Z',
    };

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      final anotherDevice = PushNotificationDevice(
        id: id,
        userId: userId,
        token: token,
        provider: provider,
        platform: platform,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

      // Assert: The two instances should be equal.
      expect(device, equals(anotherDevice));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields.
      expect(
        device.props,
        equals([id, userId, token, provider, platform, createdAt, updatedAt]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = PushNotificationDevice.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(device));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = device.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define the updated values.
      const newToken = 'new-device-token';
      final newUpdatedAt = DateTime.parse('2023-02-01T12:00:00.000Z');

      // Act: Create a copy with the updated values.
      final copiedDevice = device.copyWith(
        token: newToken,
        updatedAt: newUpdatedAt,
      );

      // Assert: The new instance should have the updated values.
      expect(copiedDevice.token, equals(newToken));
      expect(copiedDevice.updatedAt, equals(newUpdatedAt));

      // Assert: The original instance should remain unchanged.
      expect(device.token, equals(token));
      expect(device.updatedAt, equals(updatedAt));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedDevice = device.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedDevice, equals(device));
      },
    );
  });
}
