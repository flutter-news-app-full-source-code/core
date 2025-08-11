import 'package:core/core.dart';
import 'package:core/src/enums/app_user_role.dart';
import 'package:core/src/enums/feed_decorator_type.dart';
import 'package:core/src/models/config/feed_decorator_settings.dart';
import 'package:core/src/models/config/role_specific_settings.dart';

/// A list of initial remote config data to be loaded into the in-memory
/// remote config repository.
final List<RemoteConfig> remoteConfigsFixturesData = [
  RemoteConfig(
    id: kRemoteConfigId,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    appStatus: const AppStatus(
      isUnderMaintenance: false,
      latestAppVersion: '1.1.0',
      isLatestVersionOnly: false,
      iosUpdateUrl: 'https://apps.apple.com/app/example/id1234567890',
      androidUpdateUrl:
          'https://play.google.com/store/apps/details?id=com.example.app',
    ),
    userPreferenceConfig: const UserPreferenceConfig(
      guestFollowedItemsLimit: 5,
      guestSavedHeadlinesLimit: 10,
      authenticatedFollowedItemsLimit: 15,
      authenticatedSavedHeadlinesLimit: 30,
      premiumFollowedItemsLimit: 30,
      premiumSavedHeadlinesLimit: 100,
    ),
    adConfig: const AdConfig(
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
    feedDecoratorConfig: const {
      FeedDecoratorType.rateApp: CallToActionSettings(
        enabled: true,
        defaultDaysBetweenViews: 30,
        roleOverrides: {
          AppUserRole.guestUser: RoleSpecificSettings(daysBetweenViews: 14),
        },
      ),
      FeedDecoratorType.suggestedTopics: ContentCollectionSettings(
        enabled: true,
        defaultDaysBetweenViews: 7,
        itemsToDisplay: 5,
        roleOverrides: {},
      ),
    },
  ),
];
