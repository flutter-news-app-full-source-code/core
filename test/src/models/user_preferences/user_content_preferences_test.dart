import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserContentPreferences', () {
    // Use the first item from the fixtures as the test subject.
    // This ensures tests are based on the canonical fixture data.
    final userContentPreferencesFixture =
        userContentPreferencesFixturesData.first;

    group('constructor', () {
      test('returns correct instance', () {
        expect(userContentPreferencesFixture, isA<UserContentPreferences>());
      });

      test('returns correct instance with populated lists from fixture', () {
        // The base fixture should now have populated lists
        final preferences = userContentPreferencesFixturesData.first;
        expect(preferences.followedCountries, isEmpty); // This list is empty
        expect(preferences.followedSources, isNotEmpty);
        expect(preferences.followedTopics, isNotEmpty);
        expect(preferences.savedHeadlines, isNotEmpty);
        expect(preferences.savedFilters, isNotEmpty);
      });
    });

    group('fromJson/toJson', () {
      test('round trip with all fields populated', () {
        final json = userContentPreferencesFixture.toJson();
        final result = UserContentPreferences.fromJson(json);
        expect(result, equals(userContentPreferencesFixture));
      });

      test('round trip with empty lists', () {
        final emptyPreferences = userContentPreferencesFixturesData.first;
        final json = emptyPreferences.toJson();
        final result = UserContentPreferences.fromJson(json);
        expect(result, equals(emptyPreferences));
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        final newCountry = countriesFixturesData[1];

        final updatedPreferences = userContentPreferencesFixture.copyWith(
          followedCountries: [newCountry],
        );

        expect(updatedPreferences.id, userContentPreferencesFixture.id);
        expect(updatedPreferences.followedCountries, [newCountry]);
        // Verify other fields remain unchanged
        expect(
          updatedPreferences.followedSources,
          userContentPreferencesFixture.followedSources,
        );
        expect(
          updatedPreferences.savedFilters,
          userContentPreferencesFixture.savedFilters,
        );
      });

      test(
        'returns a new instance with the same fields if no updates provided',
        () {
          final copiedPreferences = userContentPreferencesFixture.copyWith();
          expect(copiedPreferences, userContentPreferencesFixture);
        },
      );
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final preferences1 = userContentPreferencesFixture.copyWith();
        final preferences2 = userContentPreferencesFixture.copyWith();
        expect(preferences1, preferences2);
      });

      test('instances with different properties are not equal', () {
        final preferences1 = userContentPreferencesFixture.copyWith();
        final preferences2 = userContentPreferencesFixture.copyWith(
          id: 'user-8',
        );
        expect(preferences1, isNot(equals(preferences2)));
      });
    });
  });
}
