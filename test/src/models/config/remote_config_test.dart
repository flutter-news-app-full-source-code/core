import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('RemoteConfig', () {
    // Mock instances for dependencies
    const mockUserPreferenceConfig = UserPreferenceConfig(
      guestFollowedItemsLimit: 5,
      guestSavedHeadlinesLimit: 10,
      authenticatedFollowedItemsLimit: 15,
      authenticatedSavedHeadlinesLimit: 30,
      premiumFollowedItemsLimit: 30,
      premiumSavedHeadlinesLimit: 100,
    );

    const mockAdConfig = AdConfig(
      guestAdFrequency: 5,
      guestAdPlacementInterval: 3,
      authenticatedAdFrequency: 10,
      authenticatedAdPlacementInterval: 5,
      premiumAdFrequency: 0,
      premiumAdPlacementInterval: 0,
      guestArticlesToReadBeforeShowingInterstitialAds: 2,
      standardUserArticlesToReadBeforeShowingInterstitialAds: 5,
      premiumUserArticlesToReadBeforeShowingInterstitialAds: 0,
    );

    const mockAccountActionConfig = AccountActionConfig(
      guestDaysBetweenActions: {FeedActionType.linkAccount: 7},
      standardUserDaysBetweenActions: {FeedActionType.linkAccount: 14},
    );

    const mockAppStatus = AppStatus(
      isUnderMaintenance: false,
      latestAppVersion: '1.0.0',
      isLatestVersionOnly: false,
      iosUpdateUrl: 'http://example.com/ios',
      androidUpdateUrl: 'http://example.com/android',
    );

    final remoteConfig = RemoteConfig(
      id: 'app_config',
      userPreferenceConfig: mockUserPreferenceConfig,
      adConfig: mockAdConfig,
      accountActionConfig: mockAccountActionConfig,
      appStatus: mockAppStatus,
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(remoteConfig, isA<RemoteConfig>());
        expect(remoteConfig.id, 'app_config');
        expect(remoteConfig.userPreferenceConfig, mockUserPreferenceConfig);
        expect(remoteConfig.adConfig, mockAdConfig);
        expect(remoteConfig.accountActionConfig, mockAccountActionConfig);
        expect(remoteConfig.appStatus, mockAppStatus);
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = {
          'id': 'app_config',
          'userPreferenceLimits': mockUserPreferenceConfig.toJson(),
          'adConfig': mockAdConfig.toJson(),
          'accountActionConfig': mockAccountActionConfig.toJson(),
          'appStatus': mockAppStatus.toJson(),
        };

        final result = RemoteConfig.fromJson(json);

        expect(result, remoteConfig);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = remoteConfig.toJson();

        expect(json['id'], 'app_config');
        expect(json['userPreferenceLimits'], mockUserPreferenceConfig.toJson());
        expect(json['adConfig'], mockAdConfig.toJson());
        expect(json['accountActionConfig'], mockAccountActionConfig.toJson());
        expect(json['appStatus'], mockAppStatus.toJson());
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final updatedConfig = remoteConfig.copyWith(
          id: 'new_app_config',
          appStatus: mockAppStatus.copyWith(isUnderMaintenance: true),
        );

        expect(updatedConfig.id, 'new_app_config');
        expect(
          updatedConfig.userPreferenceConfig,
          mockUserPreferenceConfig,
        ); // Unchanged
        expect(updatedConfig.appStatus.isUnderMaintenance, true);
        expect(updatedConfig, isNot(equals(remoteConfig)));
      });

      test('returns the same instance if no changes are made', () {
        final updatedConfig = remoteConfig.copyWith();
        expect(updatedConfig, equals(remoteConfig));
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final config1 = RemoteConfig(
          id: 'app_config',
          userPreferenceConfig: mockUserPreferenceConfig,
          adConfig: mockAdConfig,
          accountActionConfig: mockAccountActionConfig,
          appStatus: mockAppStatus,
        );
        final config2 = RemoteConfig(
          id: 'app_config',
          userPreferenceConfig: mockUserPreferenceConfig,
          adConfig: mockAdConfig,
          accountActionConfig: mockAccountActionConfig,
          appStatus: mockAppStatus,
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        final config1 = RemoteConfig(
          id: 'app_config',
          userPreferenceConfig: mockUserPreferenceConfig,
          adConfig: mockAdConfig,
          accountActionConfig: mockAccountActionConfig,
          appStatus: mockAppStatus,
        );
        final config2 = remoteConfig.copyWith(id: 'different_id');
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
