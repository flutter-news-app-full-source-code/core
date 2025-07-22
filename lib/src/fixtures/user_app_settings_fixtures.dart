import 'package:core/src/enums/app_accent_theme.dart';
import 'package:core/src/enums/app_base_theme.dart';
import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/enums/app_font_weight.dart';
import 'package:core/src/enums/app_text_scale_factor.dart';
import 'package:core/src/enums/headline_density.dart';
import 'package:core/src/enums/headline_image_style.dart';
import 'package:core/src/models/user_settings/display_settings.dart';
import 'package:core/src/models/user_settings/feed_display_preferences.dart';
import 'package:core/src/models/user_settings/user_app_settings.dart';

/// User App Settings Demo Data
final List<UserAppSettings> userAppSettingsFixturesData = [
  const UserAppSettings(
    id: kAdminUserId,
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
