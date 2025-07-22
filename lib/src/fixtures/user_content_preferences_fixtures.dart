import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/models/user_preferences/user_content_preferences.dart';

/// User Content Preferences Demo Data
final List<UserContentPreferences> userContentPreferencesFixturesData = [
  const UserContentPreferences(
    id: kAdminUserId,
    followedCountries: [],
    followedSources: [],
    followedTopics: [],
    savedHeadlines: [],
  ),
];
