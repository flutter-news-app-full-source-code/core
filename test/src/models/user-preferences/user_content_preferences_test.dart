// ignore_for_file: inference_failure_on_collection_literal, strict_raw_type, avoid_dynamic_calls

import 'package:ht_shared/ht_shared.dart'; // Import the barrel file
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:test/test.dart';

void main() {
  group('UserContentPreferences', () {
    const defaultAction = OpenExternalUrl(url: 'http://default.com');

    final mockCountry = Country(
      id: 'country-1',
      isoCode: 'US',
      name: 'United States',
      flagUrl: 'http://example.com/us.png',
      action: defaultAction,
    );
    final mockSource = Source(
      id: 'source-1',
      name: 'Example News',
      url: 'http://example.com',
      sourceType: SourceType.newsAgency,
      action: defaultAction,
    );
    final mockCategory = Category(
      id: 'category-1',
      name: 'Technology',
      action: defaultAction,
    );
    final mockHeadline = Headline(
      id: 'headline-1',
      title: 'Example Headline',
      url: 'http://example.com/headline',
      publishedAt: DateTime.utc(2023),
      action: defaultAction,
    );

    final userContentPreferences = UserContentPreferences(
      id: 'user-1',
      followedCountries: [mockCountry],
      followedSources: [mockSource],
      followedCategories: [mockCategory],
      savedHeadlines: const [], // Start with empty saved headlines
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(userContentPreferences, isA<UserContentPreferences>());
      });

      test('defaults lists to empty when not provided', () {
        const defaultPreferences = UserContentPreferences(id: 'user-2');
        expect(defaultPreferences.followedCountries, isEmpty);
        expect(defaultPreferences.followedSources, isEmpty);
        expect(defaultPreferences.followedCategories, isEmpty);
        expect(defaultPreferences.savedHeadlines, isEmpty);
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON with all fields', () {
        final json = {
          'id': 'user-1',
          'followedCountries': [
            {
              'id': 'country-1',
              'iso_code': 'US',
              'name': 'United States',
              'flag_url': 'http://example.com/us.png',
              'type': 'country',
              'action': defaultAction.toJson(),
            },
          ],
          'followedSources': [
            {
              'id': 'source-1',
              'name': 'Example News',
              'url': 'http://example.com',
              'type': 'source',
              'sourceType': 'news-agency',
              'action': defaultAction.toJson(),
            },
          ],
          'followedCategories': [
            {
              'id': 'category-1',
              'name': 'Technology',
              'type': 'category',
              'action': defaultAction.toJson(),
            },
          ],
          'savedHeadlines': [
            {
              'id': 'headline-1',
              'title': 'Example Headline',
              'url': 'http://example.com/headline',
              'publishedAt': '2023-01-01T00:00:00.000Z',
              'type': 'headline',
              'action': defaultAction.toJson(),
            },
          ],
        };

        final result = UserContentPreferences.fromJson(json);

        expect(result.id, 'user-1');
        expect(result.followedCountries.length, 1);
        expect(result.followedCountries.first, mockCountry);
        expect(result.followedSources.length, 1);
        expect(result.followedSources.first, mockSource);
        expect(result.followedCategories.length, 1);
        expect(result.followedCategories.first, mockCategory);
        expect(result.savedHeadlines.length, 1);
        expect(result.savedHeadlines.first, mockHeadline);
      });

      test('returns correct instance from JSON with empty lists', () {
        final json = {
          'id': 'user-3',
          'followedCountries': [],
          'followedSources': [],
          'followedCategories': [],
          'savedHeadlines': [],
        };

        final result = UserContentPreferences.fromJson(json);

        expect(result.id, 'user-3');
        expect(result.followedCountries, isEmpty);
        expect(result.followedSources, isEmpty);
        expect(result.followedCategories, isEmpty);
        expect(result.savedHeadlines, isEmpty);
      });

      test('returns correct instance from JSON with missing optional lists',
          () {
        final json = {
          'id': 'user-4',
          // Missing followedCountries, followedSources, followedCategories, savedHeadlines
        };

        final result = UserContentPreferences.fromJson(json);

        expect(result.id, 'user-4');
        expect(result.followedCountries, isEmpty);
        expect(result.followedSources, isEmpty);
        expect(result.followedCategories, isEmpty);
        expect(result.savedHeadlines, isEmpty);
      });
    });

    group('toJson', () {
      test('returns correct JSON map with all fields', () {
        final preferencesWithSaved = userContentPreferences.copyWith(
          savedHeadlines: [mockHeadline],
        );

        final json = preferencesWithSaved.toJson();

        expect(json['id'], 'user-1');
        expect(json['followedCountries'], isA<List>());
        expect((json['followedCountries'] as List).length, 1);
        expect((json['followedCountries'] as List).first['id'], 'country-1');
        expect(json['followedSources'], isA<List>());
        expect((json['followedSources'] as List).length, 1);
        expect((json['followedSources'] as List).first['id'], 'source-1');
        expect(json['followedCategories'], isA<List>());
        expect((json['followedCategories'] as List).length, 1);
        expect((json['followedCategories'] as List).first['id'], 'category-1');
        expect(json['savedHeadlines'], isA<List>());
        expect((json['savedHeadlines'] as List).length, 1);
        expect((json['savedHeadlines'] as List).first['id'], 'headline-1');
      });

      test('returns correct JSON map with empty lists', () {
        const emptyPreferences = UserContentPreferences(id: 'user-5');
        final json = emptyPreferences.toJson();

        expect(json['id'], 'user-5');
        expect(json['followedCountries'], isEmpty);
        expect(json['followedSources'], isEmpty);
        expect(json['followedCategories'], isEmpty);
        expect(json['savedHeadlines'], isEmpty);
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newId = 'user-updated';
        final newCountry = Country(
          id: 'country-2',
          isoCode: 'CA',
          name: 'Canada',
          flagUrl: 'http://example.com/ca.png',
          action: defaultAction,
        );
        final newHeadline = Headline(
          id: 'headline-2',
          title: 'Another Headline',
          action: defaultAction,
        );

        final updatedPreferences = userContentPreferences.copyWith(
          id: newId,
          followedCountries: [newCountry],
          savedHeadlines: [mockHeadline, newHeadline],
        );

        expect(updatedPreferences.id, newId);
        expect(updatedPreferences.followedCountries, [newCountry]);
        expect(
          updatedPreferences.followedSources,
          userContentPreferences.followedSources,
        ); // Unchanged
        expect(
          updatedPreferences.followedCategories,
          userContentPreferences.followedCategories,
        ); // Unchanged
        expect(updatedPreferences.savedHeadlines, [mockHeadline, newHeadline]);
      });

      test(
        'returns a new instance with the same fields if no updates provided',
        () {
          final copiedPreferences = userContentPreferences.copyWith();
          expect(copiedPreferences, userContentPreferences);
        },
      );
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        const preferences1 = UserContentPreferences(id: 'user-6');
        const preferences2 = UserContentPreferences(id: 'user-6');
        expect(preferences1, preferences2);
      });

      test('instances with different properties are not equal', () {
        const preferences1 = UserContentPreferences(id: 'user-7');
        const preferences2 = UserContentPreferences(id: 'user-8');
        expect(preferences1, isNot(equals(preferences2)));
      });
    });
  });
}
