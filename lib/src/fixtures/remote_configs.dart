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
    ),
    adConfig: const AdConfig(
      primaryAdPlatform: AdPlatformType.admob,
      platformAdIdentifiers: {
        AdPlatformType.admob: AdPlatformIdentifiers(
          feedNativeAdId: 'ca-app-pub-3940256099942544/2247696110',
          feedBannerAdId: 'ca-app-pub-3940256099942544/6300978111',
          articleInterstitialAdId: 'ca-app-pub-3940256099942544/1033173712',
          inArticleNativeAdId: 'ca-app-pub-3940256099942544/3986624511',
          inArticleBannerAdId: 'ca-app-pub-3940256099942544/6300978111',
        ),
        AdPlatformType.local: AdPlatformIdentifiers(
          feedNativeAdId: 'local_feed_native_ad_id',
          feedBannerAdId: 'local_feed_banner_ad_id',
          articleInterstitialAdId: 'local_article_interstitial_ad_id',
          inArticleNativeAdId: 'local_in_article_native_ad_id',
          inArticleBannerAdId: 'local_in_article_banner_ad_id',
        ),
      },
      feedAdConfiguration: FeedAdConfiguration(
        enabled: true,
        adType: AdType.native,
        frequencyConfig: FeedAdFrequencyConfig(
          guestAdFrequency: 5,
          guestAdPlacementInterval: 3,
          authenticatedAdFrequency: 10,
          authenticatedAdPlacementInterval: 5,
          premiumAdFrequency: 0,
          premiumAdPlacementInterval: 0,
        ),
      ),
      articleAdConfiguration: ArticleAdConfiguration(
        enabled: true,
        defaultInArticleAdType: AdType.native,
        interstitialAdConfiguration: ArticleInterstitialAdConfiguration(
          enabled: true,
          adType: AdType.interstitial,
          frequencyConfig: ArticleInterstitialAdFrequencyConfig(
            guestArticlesToReadBeforeShowingInterstitialAds: 5,
            standardUserArticlesToReadBeforeShowingInterstitialAds: 10,
            premiumUserArticlesToReadBeforeShowingInterstitialAds: 50000,
          ),
        ),
        inArticleAdSlotConfigurations: [
          InArticleAdSlotConfiguration(
            slotType: InArticleAdSlotType.belowMainArticleImage,
            enabled: true,
          ),
          InArticleAdSlotConfiguration(
            slotType: InArticleAdSlotType.aboveArticleContinueReadingButton,
            enabled: true,
          ),
          InArticleAdSlotConfiguration(
            slotType: InArticleAdSlotType.belowArticleContinueReadingButton,
            enabled: true,
          ),
        ],
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
          AppUserRole.premiumUser: FeedDecoratorRoleConfig(
            daysBetweenViews: 60,
          ),
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
