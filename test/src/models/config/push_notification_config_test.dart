import 'package:core/src/enums/app_user_role.dart';
import 'package:core/src/enums/push_notification_provider.dart';
import 'package:core/src/enums/push_notification_subscription_delivery_type.dart';
import 'package:core/src/models/config/firebase_provider_config.dart';
import 'package:core/src/models/config/one_signal_provider_config.dart';
import 'package:core/src/models/config/push_notification_config.dart';
import 'package:core/src/models/config/push_notification_delivery_config.dart';
import 'package:core/src/models/config/push_notification_delivery_role_config.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationConfig', () {
    // Define sample provider configs
    const firebaseProviderConfig = FirebaseProviderConfig(
      projectId: 'test-firebase-project',
      clientEmail: 'firebase@example.com',
      privateKey: 'firebase-private-key',
    );
    const oneSignalProviderConfig = OneSignalProviderConfig(
      appId: 'test-onesignal-app-id',
      restApiKey: 'test-onesignal-rest-api-key',
    );

    // Define sample delivery role configs
    const guestDeliveryRoleConfig = PushNotificationDeliveryRoleConfig(
      subscriptionLimit: 1,
    );
    const standardDeliveryRoleConfig = PushNotificationDeliveryRoleConfig(
      subscriptionLimit: 3,
    );

    // Define sample delivery configs
    const breakingOnlyDeliveryConfig = PushNotificationDeliveryConfig(
      enabled: true,
      visibleTo: {
        AppUserRole.guestUser: guestDeliveryRoleConfig,
        AppUserRole.standardUser: standardDeliveryRoleConfig,
      },
    );

    const dailyDigestDeliveryConfig = PushNotificationDeliveryConfig(
      enabled: false,
      visibleTo: {AppUserRole.standardUser: standardDeliveryRoleConfig},
    );

    // Main PushNotificationConfig instance
    const pushNotificationConfig = PushNotificationConfig(
      enabled: true,
      primaryProvider: PushNotificationProvider.firebase,
      providerConfigs: {
        PushNotificationProvider.firebase: firebaseProviderConfig,
        PushNotificationProvider.oneSignal: oneSignalProviderConfig,
      },
      deliveryConfigs: {
        PushNotificationSubscriptionDeliveryType.breakingOnly:
            breakingOnlyDeliveryConfig,
        PushNotificationSubscriptionDeliveryType.dailyDigest:
            dailyDigestDeliveryConfig,
      },
    );

    // Corresponding JSON representation
    final json = <String, dynamic>{
      'enabled': true,
      'primaryProvider': 'firebase',
      'providerConfigs': {
        'firebase': {
          'projectId': 'test-firebase-project',
          'clientEmail': 'firebase@example.com',
          'privateKey': 'firebase-private-key',
          'provider': 'firebase',
        },
        'oneSignal': {
          'appId': 'test-onesignal-app-id',
          'restApiKey': 'test-onesignal-rest-api-key',
          'provider': 'oneSignal',
        },
      },
      'deliveryConfigs': {
        'breakingOnly': {
          'enabled': true,
          'visibleTo': {
            'guestUser': {'subscriptionLimit': 1},
            'standardUser': {'subscriptionLimit': 3},
          },
        },
        'dailyDigest': {
          'enabled': false,
          'visibleTo': {
            'standardUser': {'subscriptionLimit': 3},
          },
        },
      },
    };

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      const anotherConfig = PushNotificationConfig(
        enabled: true,
        primaryProvider: PushNotificationProvider.firebase,
        providerConfigs: {
          PushNotificationProvider.firebase: firebaseProviderConfig,
          PushNotificationProvider.oneSignal: oneSignalProviderConfig,
        },
        deliveryConfigs: {
          PushNotificationSubscriptionDeliveryType.breakingOnly:
              breakingOnlyDeliveryConfig,
          PushNotificationSubscriptionDeliveryType.dailyDigest:
              dailyDigestDeliveryConfig,
        },
      );

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
          pushNotificationConfig.providerConfigs,
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
        copiedConfig.providerConfigs,
        equals(pushNotificationConfig.providerConfigs),
      );
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
