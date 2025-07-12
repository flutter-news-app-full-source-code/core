import 'package:ht_shared/ht_shared.dart';
import 'package:ht_shared/src/fixtures/fixture_ids.dart';

/// A list of initial remote config data to be loaded into the in-memory
/// remote config repository.
final List<RemoteConfig> remoteConfigsFixturesData = [
  const RemoteConfig(
    id: kRemoteConfigId,
    appStatus: AppStatus(
      isUnderMaintenance: false,
      latestAppVersion: '1.1.0',
      isLatestVersionOnly: false,
      iosUpdateUrl: 'https://apps.apple.com/app/example/id1234567890',
      androidUpdateUrl:
          'https://play.google.com/store/apps/details?id=com.example.app',
    ),
    userPreferenceConfig: UserPreferenceConfig(
      guestFollowedItemsLimit: 5,
      guestSavedHeadlinesLimit: 10,
      authenticatedFollowedItemsLimit: 15,
      authenticatedSavedHeadlinesLimit: 30,
      premiumFollowedItemsLimit: 30,
      premiumSavedHeadlinesLimit: 100,
    ),
    adConfig: AdConfig(
      guestAdFrequency: 5,
      guestAdPlacementInterval: 3,
      authenticatedAdFrequency: 10,
      authenticatedAdPlacementInterval: 5,
      premiumAdFrequency: 0,
      premiumAdPlacementInterval: 0,
      guestArticlesToReadBeforeShowingInterstitialAds: 5,
      standardUserArticlesToReadBeforeShowingInterstitialAds: 10,
      premiumUserArticlesToReadBeforeShowingInterstitialAds: 50000,
    ),
    accountActionConfig: AccountActionConfig(
      guestDaysBetweenActions: {
        FeedActionType.linkAccount: 2,
        FeedActionType.rateApp: 14,
        FeedActionType.followTopics: 3,
        FeedActionType.followSources: 3,
      },
      standardUserDaysBetweenActions: {
        FeedActionType.upgrade: 7,
        FeedActionType.rateApp: 30,
        FeedActionType.enableNotifications: 10,
      },
    ),
  ),
];
