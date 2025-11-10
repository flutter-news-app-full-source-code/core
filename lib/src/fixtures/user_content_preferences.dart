import 'package:core/core.dart';
import 'package:core/src/fixtures/interests.dart';

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
    interests: [
      interestsFixturesData[0],
      interestsFixturesData[1],
      interestsFixturesData[2],
      interestsFixturesData[3],
      interestsFixturesData[4],
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
    interests: [interestsFixturesData[5]],
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
    interests: const [],
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
      interests: const [],
    );
  }),
];
