import 'package:ht_shared/src/fixtures/fixture_ids.dart';
import 'package:ht_shared/src/models/user_preferences/user_content_preferences.dart';

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
