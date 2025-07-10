/// Remote config Demo Data
const Map<String, dynamic> remoteConfigFixtureData = {
  'id': 'remote_config',
  // Kill Switch
  'kill_switch_enabled': false,
  'app_operational_status': 'active',
  'maintenance_message':
      'The app is currently under maintenance. Please check back later.',
  'disabled_message':
      'This version of the app is no longer supported. Please update to the latest version.',
  // Force Update
  'min_allowed_app_version': '1.0.0',
  'latest_app_version': '1.1.0',
  'update_required_message':
      'A critical update is required to continue using the app. Please update now.',
  'update_optional_message':
      'A new version with exciting features is available. Update now for the best experience.',
  'ios_store_url': 'https://apps.apple.com/app/example/id1234567890',
  'android_store_url':
      'https://play.google.com/store/apps/details?id=com.example.app',
  'user_preference_limits': {
    'guest_followed_items_limit': 5,
    'guest_saved_headlines_limit': 10,
    'authenticated_followed_items_limit': 15,
    'authenticated_saved_headlines_limit': 30,
    'premium_followed_items_limit': 30,
    'premium_saved_headlines_limit': 100,
  },
  'ad_config': {
    'guest_ad_frequency': 5,
    'guest_ad_placement_interval': 3,
    'authenticated_ad_frequency': 10,
    'authenticated_ad_placement_interval': 5,
    'premium_ad_frequency': 0,
    'premium_ad_placement_interval': 0,
    'guest_articles_to_read_before_showing_interstitial_ads': 5,
    'standard_user_articles_to_read_before_showing_interstitial_ads': 10,
    'premium_user_articles_to_read_before_showing_interstitial_ads': 50000,
  },
  'account_action_config': {
    'guest_days_between_actions': {
      'linkAccount': 2,
      'rateApp': 14,
      'followTopics': 3,
      'followSources': 3,
    },
    'standard_user_days_between_actions': {
      'upgrade': 7,
      'rateApp': 30,
      'enableNotifications': 10,
    },
  },
};
