import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('RemoteConfig', () {
    final remoteConfigFixture = remoteConfigsFixturesData.first;
    final json = remoteConfigFixture.toJson();

    test('supports value equality', () {
      // Arrange: Create another instance with the same values from the fixture.
      final anotherConfig = remoteConfigsFixturesData.first.copyWith();

      // Assert: The two instances should be equal.
      expect(remoteConfigFixture, equals(anotherConfig));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields for Equatable.
      expect(
        remoteConfigFixture.props,
        equals([
          remoteConfigFixture.id,
          remoteConfigFixture.userPreferenceConfig,
          remoteConfigFixture.adConfig,
          remoteConfigFixture.feedDecoratorConfig,
          remoteConfigFixture.appStatus,
          remoteConfigFixture.pushNotificationConfig,
          remoteConfigFixture.createdAt,
          remoteConfigFixture.updatedAt,
        ]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = RemoteConfig.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(remoteConfigFixture));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = remoteConfigFixture.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define new values for various properties.
      const newId = 'new_app_config';
      final newAppStatus = remoteConfigFixture.appStatus.copyWith(
        isUnderMaintenance: true,
      );
      final newPushConfig = remoteConfigFixture.pushNotificationConfig.copyWith(
        primaryProvider: PushNotificationProvider.oneSignal,
      );

      // Act: Create a copy with the updated values.
      final copiedConfig = remoteConfigFixture.copyWith(
        id: newId,
        appStatus: newAppStatus,
        pushNotificationConfig: newPushConfig,
      );

      // Assert: The new instance should have the updated values.
      expect(copiedConfig.id, equals(newId));
      expect(copiedConfig.appStatus, equals(newAppStatus));
      expect(copiedConfig.pushNotificationConfig, equals(newPushConfig));

      // Assert: Unchanged properties remain the same.
      expect(
        copiedConfig.userPreferenceConfig,
        equals(remoteConfigFixture.userPreferenceConfig),
      );
      expect(copiedConfig.adConfig, equals(remoteConfigFixture.adConfig));

      // Assert: The original instance remains unchanged.
      expect(remoteConfigFixture.id, isNot(equals(newId)));
      expect(remoteConfigFixture.appStatus, isNot(equals(newAppStatus)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedConfig = remoteConfigFixture.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedConfig, equals(remoteConfigFixture));
      },
    );

    test('instances with different properties are not equal', () {
      // Arrange: Create two instances with a differing property.
      final config1 = remoteConfigFixture.copyWith();
      final config2 = remoteConfigFixture.copyWith(id: 'different_id');

      // Assert: The instances should not be equal.
      expect(config1, isNot(equals(config2)));
    });
  });
}
