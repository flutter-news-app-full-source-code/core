import 'package:core/src/models/config/firebase_provider_config.dart';
import 'package:core/src/models/config/one_signal_provider_config.dart';
import 'package:core/src/models/config/push_notification_provider_config.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationProviderConfig', () {
    // Arrange: Create sample concrete instances.
    const firebaseConfig = FirebaseProviderConfig(
      projectId: 'test-project',
      clientEmail: 'test@example.com',
      privateKey: 'test-key',
    );

    const oneSignalConfig = OneSignalProviderConfig(
      appId: 'test-app-id',
      restApiKey: 'test-api-key',
    );

    // Arrange: Create corresponding JSON maps with the 'provider' discriminator.
    final firebaseJson = {
      'provider': 'firebase',
      'projectId': 'test-project',
      'clientEmail': 'test@example.com',
      'privateKey': 'test-key',
    };

    final oneSignalJson = {
      'provider': 'oneSignal',
      'appId': 'test-app-id',
      'restApiKey': 'test-api-key',
    };

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
