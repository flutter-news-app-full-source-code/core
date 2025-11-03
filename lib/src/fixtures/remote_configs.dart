import 'package:core/core.dart';

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
      guestSavedFiltersLimit: 3,
      authenticatedSavedFiltersLimit: 10,
      premiumSavedFiltersLimit: 25,
    ),
    adConfig: const AdConfig(
      enabled: true,
      primaryAdPlatform: AdPlatformType.demo,
      platformAdIdentifiers: {
        AdPlatformType.admob: AdPlatformIdentifiers(
          feedNativeAdId: 'ca-app-pub-3940256099942544/2247696110',
          feedBannerAdId: 'ca-app-pub-3940256099942544/6300978111',
          feedToArticleInterstitialAdId:
              'ca-app-pub-3940256099942544/1033173712',
          inArticleNativeAdId: 'ca-app-pub-3940256099942544/3986624511',
          inArticleBannerAdId: 'ca-app-pub-3940256099942544/6300978111',
        ),
        AdPlatformType.demo: AdPlatformIdentifiers(
          feedNativeAdId: '_',
          feedBannerAdId: '_',
          feedToArticleInterstitialAdId: '_',
          inArticleNativeAdId: '_',
          inArticleBannerAdId: '_',
        ),
      },
      feedAdConfiguration: FeedAdConfiguration(
        enabled: true,
        adType: AdType.native,
        visibleTo: {
          AppUserRole.guestUser: FeedAdFrequencyConfig(
            adFrequency: 5,
            adPlacementInterval: 3,
          ),
          AppUserRole.standardUser: FeedAdFrequencyConfig(
            adFrequency: 10,
            adPlacementInterval: 5,
          ),
        },
      ),
      articleAdConfiguration: ArticleAdConfiguration(
        enabled: true,
        bannerAdShape: BannerAdShape.rectangle,
        visibleTo: {
          AppUserRole.guestUser: {
            InArticleAdSlotType.aboveArticleContinueReadingButton: true,
            InArticleAdSlotType.belowArticleContinueReadingButton: true,
          },
          AppUserRole.standardUser: {
            InArticleAdSlotType.aboveArticleContinueReadingButton: true,
            InArticleAdSlotType.belowArticleContinueReadingButton: true,
          },
        },
      ),
      interstitialAdConfiguration: InterstitialAdConfiguration(
        enabled: true,
        visibleTo: {
          AppUserRole.guestUser: InterstitialAdFrequencyConfig(
            transitionsBeforeShowingInterstitialAds: 5,
          ),
          AppUserRole.standardUser: InterstitialAdFrequencyConfig(
            transitionsBeforeShowingInterstitialAds: 10,
          ),
        },
      ),
    ),
    feedDecoratorConfig: const {
      FeedDecoratorType.rateApp: FeedDecoratorConfig(
        category: FeedDecoratorCategory.callToAction,
        enabled: true,
        visibleTo: {
          AppUserRole.guestUser: FeedDecoratorRoleConfig(daysBetweenViews: 14),
          AppUserRole.standardUser: FeedDecoratorRoleConfig(
            daysBetweenViews: 30,
          ),
          AppUserRole.premiumUser: FeedDecoratorRoleConfig(daysBetweenViews: 0),
        },
      ),
      FeedDecoratorType.suggestedTopics: FeedDecoratorConfig(
        category: FeedDecoratorCategory.contentCollection,
        enabled: true,
        itemsToDisplay: 5,
        visibleTo: {
          AppUserRole.guestUser: FeedDecoratorRoleConfig(daysBetweenViews: 7),
          AppUserRole.standardUser: FeedDecoratorRoleConfig(
            daysBetweenViews: 14,
          ),
        },
      ),
    },
  ),
];
