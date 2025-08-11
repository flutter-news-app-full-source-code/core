import 'package:core/core.dart';

/// User App Settings Demo Data
final List<UserAppSettings> userAppSettingsFixturesData = [
  UserAppSettings(
    id: kAdminUserId,
    displaySettings: const DisplaySettings(
      baseTheme: AppBaseTheme.system,
      accentTheme: AppAccentTheme.defaultBlue,
      fontFamily: 'SystemDefault',
      textScaleFactor: AppTextScaleFactor.medium,
      fontWeight: AppFontWeight.regular,
    ),
    language: Language(
      id: 'lang-en',
      code: 'en',
      name: 'English',
      nativeName: 'English',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      status: ContentStatus.active,
    ),
    feedPreferences: const FeedDisplayPreferences(
      headlineDensity: HeadlineDensity.standard,
      headlineImageStyle: HeadlineImageStyle.smallThumbnail,
      showSourceInHeadlineFeed: true,
      showPublishDateInHeadlineFeed: true,
    ),
  ),
];
