import 'package:core/src/enums/push_notification_provider.dart';
import 'package:core/src/fixtures/remote_configs.dart';
import 'package:core/src/models/config/firebase_provider_config.dart';
import 'package:core/src/models/config/one_signal_provider_config.dart';
import 'package:core/src/models/config/push_notification_provider_config.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationProviderConfig', () {
    // Arrange: Retrieve sample concrete instances from the fixtures.
    final firebaseConfig = remoteConfigsFixturesData
        .first
        .pushNotificationConfig
        .providerConfigs[PushNotificationProvider.firebase]!;

    final oneSignalConfig = remoteConfigsFixturesData
        .first
        .pushNotificationConfig
        .providerConfigs[PushNotificationProvider.oneSignal]!;

    // Arrange: Create corresponding JSON maps with the 'provider' discriminator.
    final firebaseJson = (firebaseConfig as FirebaseProviderConfig).toJson();
    final oneSignalJson = (oneSignalConfig as OneSignalProviderConfig).toJson();

    group('fromJson factory (polymorphic)', () {
      test('correctly deserializes to FirebaseProviderConfig', () {
        // Act: Deserialize the Firebase JSON using the base factory.
        final result = PushNotificationProviderConfig.fromJson(firebaseJson);

        // Assert: The result should be the correct concrete type and value.
        expect(result, isA<FirebaseProviderConfig>());
        expect(result, equals(firebaseConfig));
      });

      test('correctly deserializes to OneSignalProviderConfig', () {
        // Act: Deserialize the OneSignal JSON using the base factory.
        final result = PushNotificationProviderConfig.fromJson(oneSignalJson);

        // Assert: The result should be the correct concrete type and value.
        expect(result, isA<OneSignalProviderConfig>());
        expect(result, equals(oneSignalConfig));
      });

      test('throws FormatException for missing provider field', () {
        // Arrange: Create JSON without the discriminator field.
        final jsonWithoutProvider = {'appId': 'test-app-id'};

        // Assert: Deserializing should throw a FormatException.
        expect(
          () => PushNotificationProviderConfig.fromJson(jsonWithoutProvider),
          throwsA(isA<FormatException>()),
        );
      });

      test('throws FormatException for unknown provider field', () {
        // Arrange: Create JSON with an invalid discriminator.
        final jsonWithUnknownProvider = {
          'provider': 'unknownProvider',
          'appId': 'test-app-id',
        };

        // Assert: Deserializing should throw a FormatException.
        expect(
          () =>
              PushNotificationProviderConfig.fromJson(jsonWithUnknownProvider),
          throwsA(isA<FormatException>()),
        );
      });
    });

    group('toJson static method (polymorphic)', () {
      test('correctly serializes a FirebaseProviderConfig instance', () {
        expect(
          PushNotificationProviderConfig.toJson(firebaseConfig),
          equals(firebaseJson),
        );
      });

      test('correctly serializes a OneSignalProviderConfig instance', () {
        expect(
          PushNotificationProviderConfig.toJson(oneSignalConfig),
          equals(oneSignalJson),
        );
      });
    });
  });
}
