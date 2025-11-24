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
    feedSettings: const FeedDisplayPreferences(
      feedItemDensity: FeedItemDensity.standard,
      feedItemImageStyle: FeedItemImageStyle.smallThumbnail,
      feedItemClickBehavior: FeedItemClickBehavior.defaultBehavior,
    ),
  ),
  UserAppSettings(
    id: kUser1Id,
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
    feedSettings: const FeedDisplayPreferences(
      feedItemDensity: FeedItemDensity.standard,
      feedItemImageStyle: FeedItemImageStyle.smallThumbnail,
      feedItemClickBehavior: FeedItemClickBehavior.defaultBehavior,
    ),
  ),
  UserAppSettings(
    id: kUser2Id,
    displaySettings: const DisplaySettings(
      baseTheme: AppBaseTheme.dark,
      accentTheme: AppAccentTheme.newsRed,
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
    feedSettings: const FeedDisplayPreferences(
      feedItemDensity: FeedItemDensity.compact,
      feedItemImageStyle: FeedItemImageStyle.largeThumbnail,
      feedItemClickBehavior: FeedItemClickBehavior.defaultBehavior,
    ),
  ),
  // Add settings for users 3-10, copying the admin's settings for simplicity
  ...List.generate(
    8,
    (index) => UserAppSettings(
      id: [
        kUser3Id,
        kUser4Id,
        kUser5Id,
        kUser6Id,
        kUser7Id,
        kUser8Id,
        kUser9Id,
        kUser10Id,
      ][index],
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
      feedSettings: const FeedDisplayPreferences(
        feedItemDensity: FeedItemDensity.standard,
        feedItemImageStyle: FeedItemImageStyle.smallThumbnail,
        feedItemClickBehavior: FeedItemClickBehavior.defaultBehavior,
      ),
    ),
  ),
];
