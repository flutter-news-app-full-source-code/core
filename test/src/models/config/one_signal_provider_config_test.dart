import 'package:core/src/enums/push_notification_provider.dart';
import 'package:core/src/fixtures/remote_configs.dart';
import 'package:core/src/models/config/one_signal_provider_config.dart';
import 'package:test/test.dart';

void main() {
  group('OneSignalProviderConfig', () {
    // Retrieve the OneSignalProviderConfig from the remoteConfigsFixturesData.
    // This ensures consistency with predefined application configurations.
    final config =
        remoteConfigsFixturesData
                .first
                .pushNotificationConfig
                .providerConfigs[PushNotificationProvider.oneSignal]!
            as OneSignalProviderConfig;

    // Generate the expected JSON from the fixture config for comparison.
    final json = config.toJson();

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      final anotherConfig =
          remoteConfigsFixturesData
                  .first
                  .pushNotificationConfig
                  .providerConfigs[PushNotificationProvider.oneSignal]!
              as OneSignalProviderConfig;

      // Assert: The two instances should be equal.
      expect(config, equals(anotherConfig));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields including provider.
      expect(
        config.props,
        equals([config.provider, config.appId, config.restApiKey]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = OneSignalProviderConfig.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(config));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = config.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define new values.
      const newAppId = 'updated-app-id';

      // Act: Create a copy with the new value.
      final copiedConfig = config.copyWith(
        appId: newAppId,
      ); // Using a new value for appId

      // Assert: The new instance should have the updated value.
      expect(copiedConfig.appId, equals(newAppId));
      expect(copiedConfig.restApiKey, equals(config.restApiKey));

      // Assert: The original instance should remain unchanged.
      expect(config.appId, isNot(equals(newAppId)));
    });

    test('copyWith creates an identical copy when no arguments are provided', () {
      // Act: Create a copy without providing any arguments, expecting an identical instance.
      final copiedConfig = config.copyWith();

      // Assert: The copied instance should be equal to the original.
      expect(copiedConfig, equals(config));
    });
  });
}
