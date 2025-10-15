import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/fixtures/headlines.dart';
import 'package:core/src/fixtures/sources.dart';
import 'package:core/src/fixtures/topics.dart';
import 'package:core/src/models/user_preferences/user_content_preferences.dart';
import 'package:core/src/models/user_presets/saved_filter.dart';

/// User Content Preferences Demo Data
final List<UserContentPreferences> userContentPreferencesFixturesData = [
  UserContentPreferences(
    id: kAdminUserId,
    followedCountries: const [],
    followedSources: [
      sourcesFixturesData[0], // TechCrunch
      sourcesFixturesData[1], // BBC News
    ],
    followedTopics: [
      topicsFixturesData[0], // Technology
      topicsFixturesData[1], // Sports
      topicsFixturesData[6], // Business
      topicsFixturesData[7], // Travel
    ],
    savedHeadlines: [headlinesFixturesData[0], headlinesFixturesData[10]],
    savedFilters: [
      SavedFilter(
        id: kSavedFilterId1,
        name: 'Tech News',
        topics: [topicsFixturesData[0]], // Technology
        sources: [sourcesFixturesData[0]], // TechCrunch
        countries: const [],
      ),
      SavedFilter(
        id: kSavedFilterId2,
        name: 'World Biz',
        topics: [topicsFixturesData[6]], // Business
        sources: const [],
        countries: const [],
      ),
    ],
  ),
];
