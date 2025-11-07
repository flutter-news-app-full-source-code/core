import 'package:core/src/models/config/one_signal_provider_config.dart';
import 'package:test/test.dart';

void main() {
  group('OneSignalProviderConfig', () {
    // Since a specific fixture file was not provided, sample data is
    // created here for testing purposes.
    const config = OneSignalProviderConfig(
      appId: 'test-app-id',
      restApiKey: 'test-rest-api-key',
    );

    final json = {
      'appId': 'test-app-id',
      'restApiKey': 'test-rest-api-key',
      'provider': 'oneSignal', // Manually added by toJson
    };

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      const anotherConfig = OneSignalProviderConfig(
        appId: 'test-app-id',
        restApiKey: 'test-rest-api-key',
      );

      // Assert: The two instances should be equal.
      expect(config, equals(anotherConfig));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields including provider.
      expect(
        config.props,
        equals(['oneSignal', 'test-app-id', 'test-rest-api-key']),
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
      const newAppId = 'new-app-id';

      // Act: Create a copy with the new value.
      final copiedConfig = config.copyWith(appId: newAppId);

      // Assert: The new instance should have the updated value.
      expect(copiedConfig.appId, equals(newAppId));
      expect(copiedConfig.restApiKey, equals(config.restApiKey));

      // Assert: The original instance should remain unchanged.
      expect(config.appId, isNot(equals(newAppId)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedConfig = config.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedConfig, equals(config));
      },
    );
  });
}
