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
      sourcesFixturesData[10], // San Francisco Chronicle
      sourcesFixturesData[40], // ESPN
    ],
    followedTopics: [
      topicsFixturesData[0], // Technology
      topicsFixturesData[1], // Sports
      topicsFixturesData[6], // Business
      topicsFixturesData[7], // Travel
    ],
    savedHeadlines: [headlinesFixturesData[0], headlinesFixturesData[10]],
    notificationSubscriptions: const {},
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
      SavedFilter(
        id: kSavedFilterId3,
        name: 'Global Sports',
        topics: [topicsFixturesData[1]], // Sports
        sources: [sourcesFixturesData[40]], // ESPN
        countries: const [],
      ),
      SavedFilter(
        id: kSavedFilterId4,
        name: 'Science News',
        topics: [topicsFixturesData[3]], // Science
        sources: [sourcesFixturesData[41]], // Nature
        countries: const [],
      ),
      SavedFilter(
        id: kSavedFilterId5,
        name: 'Political News',
        topics: [topicsFixturesData[2]], // Politics
        sources: [
          sourcesFixturesData[1], // BBC News
          sourcesFixturesData[2], // The New York Times
        ],
        countries: const [],
      ),
    ],
  ),
  UserContentPreferences(
    id: kUser1Id, // Publisher (Premium)
    followedCountries: const [],
    followedSources: [
      sourcesFixturesData[0], // TechCrunch
      sourcesFixturesData[1], // BBC News
    ],
    followedTopics: [
      topicsFixturesData[0], // Technology
      topicsFixturesData[6], // Business
    ],
    savedHeadlines: [headlinesFixturesData[2], headlinesFixturesData[3]],
    notificationSubscriptions: const {},
    savedFilters: [
      SavedFilter(
        id: 'pub_saved_1',
        name: 'My Tech Feed',
        topics: [topicsFixturesData[0]],
        sources: [sourcesFixturesData[0]],
        countries: const [],
      ),
    ],
  ),
  UserContentPreferences(
    id: kUser2Id, // Publisher (Standard)
    followedCountries: const [],
    followedSources: [
      sourcesFixturesData[3], // The Guardian
      sourcesFixturesData[4], // CNN
    ],
    followedTopics: [
      topicsFixturesData[2], // Politics
      topicsFixturesData[4], // Health
    ],
    savedHeadlines: [headlinesFixturesData[4], headlinesFixturesData[5]],
    notificationSubscriptions: const {},
    savedFilters: const [],
  ),
  // Add preferences for users 3-10
  ...List.generate(8, (index) {
    final userId = [
      kUser3Id,
      kUser4Id,
      kUser5Id,
      kUser6Id,
      kUser7Id,
      kUser8Id,
      kUser9Id,
      kUser10Id,
    ][index];
    return UserContentPreferences(
      id: userId,
      followedCountries: const [],
      followedSources: [
        sourcesFixturesData[index % 10],
        sourcesFixturesData[(index + 1) % 10],
      ],
      followedTopics: [
        topicsFixturesData[index % 5],
        topicsFixturesData[(index + 1) % 5],
      ],
      savedHeadlines: [
        headlinesFixturesData[index * 2],
        headlinesFixturesData[index * 2 + 1],
      ],
      notificationSubscriptions: const {},
      savedFilters: [
        SavedFilter(
          id: 'user_${index + 3}_saved_1',
          name: 'Filter for User ${index + 3}',
          topics: [topicsFixturesData[index % 5]],
          sources: [sourcesFixturesData[index % 10]],
          countries: const [],
        ),
      ],
    );
  }),
];
