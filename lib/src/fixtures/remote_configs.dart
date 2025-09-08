import 'package:core/core.dart';
import 'package:core/src/enums/banner_ad_shape.dart';

/// Ad identifiers for the [AdPlatformType.demo] platform.
///
/// These identifiers are placeholders and are not actively used for loading
/// ads. They exist to satisfy the data contract of [AdPlatformIdentifiers]
/// when [AdPlatformType.demo] is the primary ad platform.
const AdPlatformIdentifiers demoAdPlatformIdentifiers = AdPlatformIdentifiers(
  feedNativeAdId: 'will_not_be_used',
  feedBannerAdId: 'will_not_be_used',
  feedToArticleInterstitialAdId: 'will_not_be_used',
  inArticleNativeAdId: 'will_not_be_used',
  inArticleBannerAdId: 'will_not_be_used',
);

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
        AdPlatformType.local: AdPlatformIdentifiers(
          feedNativeAdId: '1563c000a4a4e6e1a8e7f0f1',
          feedBannerAdId: '2563c000a4a4e6e1a8e7f0f2',
          feedToArticleInterstitialAdId: '3563c000a4a4e6e1a8e7f0f3',
          inArticleNativeAdId: '1563c000a4a4e6e1a8e7f0f1',
          inArticleBannerAdId: '2563c000a4a4e6e1a8e7f0f2',
        ),
        AdPlatformType.demo: demoAdPlatformIdentifiers,
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
        bannerAdShape: BannerAdShape.rectangle,
        inArticleAdSlotConfigurations: [
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
      interstitialAdConfiguration: InterstitialAdConfiguration(
        enabled: true,
        feedInterstitialAdFrequencyConfig: InterstitialAdFrequencyConfig(
          guestTransitionsBeforeShowingInterstitialAds: 5,
          standardUserTransitionsBeforeShowingInterstitialAds: 10,
          premiumUserTransitionsBeforeShowingInterstitialAds: 50000,
        ),
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
