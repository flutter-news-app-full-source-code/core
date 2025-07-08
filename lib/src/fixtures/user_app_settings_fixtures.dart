import 'package:ht_shared/src/models/user_settings/app_accent_theme.dart';
import 'package:ht_shared/src/models/user_settings/app_base_theme.dart';
import 'package:ht_shared/src/models/user_settings/app_font_weight.dart';
import 'package:ht_shared/src/models/user_settings/app_text_scale_factor.dart';
import 'package:ht_shared/src/models/user_settings/display_settings.dart';
import 'package:ht_shared/src/models/user_settings/feed_display_preferences.dart';
import 'package:ht_shared/src/models/user_settings/user_app_settings.dart';

/// User App Settings Demo Data
final List<UserAppSettings> userAppSettingsFixturesData = [
  const UserAppSettings(
    id: 'admin-user-id',
    displaySettings: DisplaySettings(
      baseTheme: AppBaseTheme.system,
      accentTheme: AppAccentTheme.defaultBlue,
      fontFamily: 'SystemDefault',
      textScaleFactor: AppTextScaleFactor.medium,
      fontWeight: AppFontWeight.regular,
    ),
    language: 'en',
    feedPreferences: FeedDisplayPreferences(
      headlineDensity: HeadlineDensity.standard,
      headlineImageStyle: HeadlineImageStyle.smallThumbnail,
      showSourceInHeadlineFeed: true,
      showPublishDateInHeadlineFeed: true,
    ),
  ),
];
