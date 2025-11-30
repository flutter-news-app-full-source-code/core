import 'package:core/core.dart';

/// Generates a list of predefined saved source filters for fixture data.
List<SavedSourceFilter> getSavedSourceFiltersFixturesData({
  String languageCode = 'en',
}) {
  final resolvedLanguageCode = ['en', 'ar'].contains(languageCode)
      ? languageCode
      : 'en';

  final namesByLang = {
    'en': ['UK News Agencies', 'German Tech Blogs'],
    'ar': ['وكالات الأنباء البريطانية', 'مدونات التكنولوجيا الألمانية'],
  };

  return <SavedSourceFilter>[
    SavedSourceFilter(
      id: kSavedSourceFilterId1,
      userId: kAdminUserId,
      name: namesByLang[resolvedLanguageCode]![0],
      isPinned: true,
      criteria: SourceFilterCriteria(
        sourceTypes: const [SourceType.newsAgency],
        languages: const [],
        countries: [countriesFixturesData[1]], // United Kingdom
      ),
    ),
    SavedSourceFilter(
      id: kSavedSourceFilterId2,
      userId: kUser1Id,
      name: namesByLang[resolvedLanguageCode]![1],
      isPinned: false,
      criteria: SourceFilterCriteria(
        sourceTypes: const [SourceType.blog, SourceType.specializedPublisher],
        languages: [languagesFixturesData.firstWhere((l) => l.code == 'de')],
        countries: [countriesFixturesData[4]], // Germany
      ),
    ),
  ];
}
