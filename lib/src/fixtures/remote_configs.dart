import 'package:core/core.dart';

final remoteConfigsFixturesData = <RemoteConfig>[
  RemoteConfig(
    id: kRemoteConfigId,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    app: const AppConfig(
      maintenance: MaintenanceConfig(isUnderMaintenance: false),
      update: UpdateConfig(
        latestAppVersion: '1.1.0',
        isLatestVersionOnly: false,
        iosUpdateUrl: 'https://apps.apple.com/app/example/id1234567890',
        androidUpdateUrl:
            'https://play.google.com/store/apps/details?id=com.example.app',
      ),
      general: GeneralAppConfig(
        termsOfServiceUrl: 'https://example.com/terms',
        privacyPolicyUrl: 'https://example.com/privacy',
      ),
    ),
    user: const UserConfig(
      limits: UserLimitsConfig(
        followedItems: {
          AppUserRole.guestUser: 5,
          AppUserRole.standardUser: 15,
          AppUserRole.premiumUser: 30,
        },
        savedHeadlines: {
          AppUserRole.guestUser: 10,
          AppUserRole.standardUser: 30,
          AppUserRole.premiumUser: 100,
        },
        savedHeadlineFilters: {
          AppUserRole.guestUser: SavedFilterLimits(
            total: 3,
            pinned: 3,
            notificationSubscriptions: {
              PushNotificationSubscriptionDeliveryType.breakingOnly: 1,
              PushNotificationSubscriptionDeliveryType.dailyDigest: 0,
              PushNotificationSubscriptionDeliveryType.weeklyRoundup: 0,
            },
          ),
          AppUserRole.standardUser: SavedFilterLimits(
            total: 10,
            pinned: 5,
            notificationSubscriptions: {
              PushNotificationSubscriptionDeliveryType.breakingOnly: 3,
              PushNotificationSubscriptionDeliveryType.dailyDigest: 2,
              PushNotificationSubscriptionDeliveryType.weeklyRoundup: 2,
            },
          ),
          AppUserRole.premiumUser: SavedFilterLimits(
            total: 25,
            pinned: 10,
            notificationSubscriptions: {
              PushNotificationSubscriptionDeliveryType.breakingOnly: 10,
              PushNotificationSubscriptionDeliveryType.dailyDigest: 10,
              PushNotificationSubscriptionDeliveryType.weeklyRoundup: 10,
            },
          ),
        },
        savedSourceFilters: {
          AppUserRole.guestUser: SavedFilterLimits(total: 3, pinned: 3),
          AppUserRole.standardUser: SavedFilterLimits(total: 10, pinned: 5),
          AppUserRole.premiumUser: SavedFilterLimits(total: 25, pinned: 10),
        },
        reactionsPerDay: {
          AppUserRole.guestUser: 20,
          AppUserRole.standardUser: 100,
          AppUserRole.premiumUser: 500,
        },
        commentsPerDay: {
          AppUserRole.guestUser: 0,
          AppUserRole.standardUser: 10,
          AppUserRole.premiumUser: 50,
        },
        reportsPerDay: {
          AppUserRole.guestUser: 1,
          AppUserRole.standardUser: 5,
          AppUserRole.premiumUser: 20,
        },
      ),
    ),
    features: const FeaturesConfig(
      ads: AdConfig(
        enabled: true,
        primaryAdPlatform: AdPlatformType.admob,
        platformAdIdentifiers: {
          AdPlatformType.admob: AdPlatformIdentifiers(
            nativeAdId: 'ca-app-pub-3940256099942544/2247696110',
            bannerAdId: 'ca-app-pub-3940256099942544/6300978111',
            interstitialAdId: 'ca-app-pub-3940256099942544/1033173712',
          ),
          AdPlatformType.demo: AdPlatformIdentifiers(
            nativeAdId: '_',
            bannerAdId: '_',
            interstitialAdId: '_',
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
        navigationAdConfiguration: NavigationAdConfiguration(
          enabled: true,
          visibleTo: {
            AppUserRole.guestUser: NavigationAdFrequencyConfig(
              internalNavigationsBeforeShowingInterstitialAd: 5,
              externalNavigationsBeforeShowingInterstitialAd: 5,
            ),
            AppUserRole.standardUser: NavigationAdFrequencyConfig(
              internalNavigationsBeforeShowingInterstitialAd: 8,
              externalNavigationsBeforeShowingInterstitialAd: 8,
            ),
          },
        ),
      ),
      feed: FeedConfig(
        itemClickBehavior: FeedItemClickBehavior.internalNavigation,
        decorators: {
          FeedDecoratorType.linkAccount: FeedDecoratorConfig(
            category: FeedDecoratorCategory.callToAction,
            enabled: true,
            visibleTo: {
              AppUserRole.guestUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 3,
              ),
            },
          ),
          FeedDecoratorType.upgrade: FeedDecoratorConfig(
            category: FeedDecoratorCategory.callToAction,
            enabled: true,
            visibleTo: {
              AppUserRole.standardUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 7,
              ),
            },
          ),
          FeedDecoratorType.rateApp: FeedDecoratorConfig(
            category: FeedDecoratorCategory.callToAction,
            enabled: true,
            visibleTo: {
              AppUserRole.guestUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 14,
              ),
              AppUserRole.standardUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 30,
              ),
              AppUserRole.premiumUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 90,
              ),
            },
          ),
          FeedDecoratorType.enableNotifications: FeedDecoratorConfig(
            category: FeedDecoratorCategory.callToAction,
            enabled: true,
            visibleTo: {
              AppUserRole.guestUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 5,
              ),
              AppUserRole.standardUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 10,
              ),
              AppUserRole.premiumUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 20,
              ),
            },
          ),
          FeedDecoratorType.suggestedTopics: FeedDecoratorConfig(
            category: FeedDecoratorCategory.contentCollection,
            enabled: true,
            itemsToDisplay: 5,
            visibleTo: {
              AppUserRole.guestUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 7,
              ),
              AppUserRole.standardUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 14,
              ),
            },
          ),
          FeedDecoratorType.suggestedSources: FeedDecoratorConfig(
            category: FeedDecoratorCategory.contentCollection,
            enabled: true,
            itemsToDisplay: 5,
            visibleTo: {
              AppUserRole.guestUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 7,
              ),
              AppUserRole.standardUser: FeedDecoratorRoleConfig(
                daysBetweenViews: 14,
              ),
            },
          ),
        },
      ),
      pushNotifications: PushNotificationConfig(
        enabled: true,
        primaryProvider: PushNotificationProvider.firebase,
        deliveryConfigs: {
          PushNotificationSubscriptionDeliveryType.breakingOnly: true,
          PushNotificationSubscriptionDeliveryType.dailyDigest: true,
          PushNotificationSubscriptionDeliveryType.weeklyRoundup: true,
        },
      ),
      community: CommunityConfig(
        engagement: EngagementConfig(
          enabled: true,
          engagementMode: EngagementMode.reactionsAndComments,
        ),
        reporting: ReportingConfig(
          headlineReportingEnabled: true,
          sourceReportingEnabled: true,
          commentReportingEnabled: true,
        ),
        appReview: AppReviewConfig(
          enabled: true,
          // User must perform 5 positive actions (e.g., save headline)
          // to become eligible for the review prompt.
          positiveInteractionThreshold: 5,
          initialPromptCooldownDays: 14,
          isNegativeFeedbackFollowUpEnabled: true,
        ),
      ),
    ),
  ),
];
