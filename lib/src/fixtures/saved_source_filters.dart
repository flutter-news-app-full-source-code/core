import 'package:core/core.dart';

/// A list of predefined saved source filters for fixture data.
final savedSourceFiltersFixturesData = <SavedSourceFilter>[
  SavedSourceFilter(
    id: kSavedSourceFilterId1,
    userId: kAdminUserId,
    name: 'UK News Agencies',
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
    name: 'German Tech Blogs',
    isPinned: false,
    criteria: SourceFilterCriteria(
      sourceTypes: const [SourceType.blog, SourceType.specializedPublisher],
      languages: [languagesFixturesData.firstWhere((l) => l.code == 'de')],
      countries: [countriesFixturesData[4]], // Germany
    ),
  ),
];
