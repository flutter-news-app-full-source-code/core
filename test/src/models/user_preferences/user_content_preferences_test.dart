import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserContentPreferences', () {
    // Get fixtures to build a populated test subject
    final mockCountry = countriesFixturesData.first;
    final mockSource = sourcesFixturesData.first;
    final mockTopic = topicsFixturesData.first;
    final mockHeadline = headlinesFixturesData.first;
    final mockSavedFilter = savedFiltersFixturesData.first;

    // Use the base fixture and copyWith to create a populated version for tests
    final userContentPreferencesFixture = userContentPreferencesFixturesData
        .first
        .copyWith(
          followedCountries: [mockCountry],
          followedSources: [mockSource],
          followedTopics: [mockTopic],
          savedHeadlines: [],
          savedFilters: [mockSavedFilter],
        );

    group('constructor', () {
      test('returns correct instance', () {
        expect(userContentPreferencesFixture, isA<UserContentPreferences>());
      });

      test('returns correct instance with empty lists from fixture', () {
        // The base fixture should have empty lists
        final defaultPreferences = userContentPreferencesFixturesData.first;
        expect(defaultPreferences.followedCountries, isEmpty);
        expect(defaultPreferences.followedSources, isEmpty);
        expect(defaultPreferences.followedTopics, isEmpty);
        expect(defaultPreferences.savedHeadlines, isEmpty);
        expect(defaultPreferences.savedFilters, isEmpty);
      });
    });

    group('fromJson/toJson', () {
      test('round trip with all fields populated', () {
        final preferencesWithSaved = userContentPreferencesFixture.copyWith(
          savedHeadlines: [mockHeadline],
          savedFilters: [mockSavedFilter],
        );
        final json = preferencesWithSaved.toJson();
        final result = UserContentPreferences.fromJson(json);
        expect(result, equals(preferencesWithSaved));
      });

      test('round trip with empty lists', () {
        final emptyPreferences = userContentPreferencesFixturesData.first;
        final json = emptyPreferences.toJson();
        final result = UserContentPreferences.fromJson(
          // ignore: inference_failure_on_collection_literal
          json..['savedFilters'] = [],
        );
        expect(result, equals(emptyPreferences));
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        final newCountry = countriesFixturesData[1];
        final newHeadline = headlinesFixturesData[1];
        final newSavedFilter = savedFiltersFixturesData[1];

        final updatedPreferences = userContentPreferencesFixture.copyWith(
          followedCountries: [newCountry],
          savedFilters: [mockSavedFilter, newSavedFilter],
          savedHeadlines: [mockHeadline, newHeadline],
        );

        expect(updatedPreferences.id, userContentPreferencesFixture.id);
        expect(updatedPreferences.followedCountries, [newCountry]);
        expect(
          updatedPreferences.followedSources,
          userContentPreferencesFixture.followedSources,
        );
        expect(
          updatedPreferences.followedTopics,
          userContentPreferencesFixture.followedTopics,
        );
        expect(updatedPreferences.savedFilters, [
          mockSavedFilter,
          newSavedFilter,
        ]);
        expect(updatedPreferences.savedHeadlines, [mockHeadline, newHeadline]);
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
