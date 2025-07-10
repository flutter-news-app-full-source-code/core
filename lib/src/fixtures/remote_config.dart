/// Remote config Demo Data
const Map<String, dynamic> remoteConfigFixtureData = {
  'id': 'remote_config',
  'appStatus': {
    'isUnderMaintenance': false,
    'latestAppVersion': '1.1.0',
    'isLatestVersionOnly': false,
    'iosUpdateUrl': 'https://apps.apple.com/app/example/id1234567890',
    'androidUpdateUrl':
        'https://play.google.com/store/apps/details?id=com.example.app',
  },
  'userPreferenceConfig': {
    'guestFollowedItemsLimit': 5,
    'guestSavedHeadlinesLimit': 10,
    'authenticatedFollowedItemsLimit': 15,
    'authenticatedSavedHeadlinesLimit': 30,
    'premiumFollowedItemsLimit': 30,
    'premiumSavedHeadlinesLimit': 100,
  },
  'adConfig': {
    'guestAdFrequency': 5,
    'guestAdPlacementInterval': 3,
    'authenticatedAdFrequency': 10,
    'authenticatedAdPlacementInterval': 5,
    'premiumAdFrequency': 0,
    'premiumAdPlacementInterval': 0,
    'guestArticlesToReadBeforeShowingInterstitialAds': 5,
    'standardUserArticlesToReadBeforeShowingInterstitialAds': 10,
    'premiumUserArticlesToReadBeforeShowingInterstitialAds': 50000,
  },
  'accountActionConfig': {
    'guestDaysBetweenActions': {
      'linkAccount': 2,
      'rateApp': 14,
      'followTopics': 3,
      'followSources': 3,
    },
    'standardUserDaysBetweenActions': {
      'upgrade': 7,
      'rateApp': 30,
      'enableNotifications': 10,
    },
  },
};
