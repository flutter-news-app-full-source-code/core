import 'package:core/src/enums/push_notification_provider.dart';
import 'package:core/src/fixtures/remote_configs.dart';
import 'package:core/src/models/config/push_notification_config.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationConfig', () {
    // Retrieve the PushNotificationConfig from the remoteConfigsFixturesData.
    // This ensures consistency with predefined application configurations.
    final pushNotificationConfig =
        remoteConfigsFixturesData.first.pushNotificationConfig;

    // Corresponding JSON representation
    final json = pushNotificationConfig.toJson();

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      final anotherConfig =
          remoteConfigsFixturesData.first.pushNotificationConfig;

      // Assert: The two instances should be equal.
      expect(pushNotificationConfig, equals(anotherConfig));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields.
      expect(
        pushNotificationConfig.props,
        equals([
          pushNotificationConfig.enabled,
          pushNotificationConfig.primaryProvider,
          pushNotificationConfig.deliveryConfigs,
        ]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = PushNotificationConfig.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(pushNotificationConfig));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = pushNotificationConfig.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define updated values.
      const newEnabled = false;
      const newPrimaryProvider = PushNotificationProvider.oneSignal;

      // Act: Create a copy with updated values.
      final copiedConfig = pushNotificationConfig.copyWith(
        enabled: newEnabled,
        primaryProvider: newPrimaryProvider,
      );

      // Assert: The new instance should have the updated values.
      expect(copiedConfig.enabled, equals(newEnabled));
      expect(copiedConfig.primaryProvider, equals(newPrimaryProvider));
      expect(
        copiedConfig.deliveryConfigs,
        equals(pushNotificationConfig.deliveryConfigs),
      );

      // Assert: The original instance should remain unchanged.
      expect(pushNotificationConfig.enabled, isNot(equals(newEnabled)));
      expect(
        pushNotificationConfig.primaryProvider,
        isNot(equals(newPrimaryProvider)),
      );
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedConfig = pushNotificationConfig.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedConfig, equals(pushNotificationConfig));
      },
    );
  });
}
