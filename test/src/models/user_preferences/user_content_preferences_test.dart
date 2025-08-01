// ignore_for_file: inference_failure_on_collection_literal, strict_raw_type, avoid_dynamic_calls

import 'package:core/core.dart'; // Import the barrel file
import 'package:test/test.dart';

void main() {
  group('UserContentPreferences', () {
    final mockCountry = Country(
      id: 'country-1',
      isoCode: 'US',
      name: 'United States',
      flagUrl: 'http://example.com/us.png',
      createdAt: DateTime.utc(2023),
      updatedAt: DateTime.utc(2023),
      status: ContentStatus.active,
    );
    final mockLanguage = Language(
      id: 'lang-en',
      name: 'English',
      code: 'en',
      nativeName: 'English',
      createdAt: DateTime.utc(2023),
      updatedAt: DateTime.utc(2023),
      status: ContentStatus.active,
    );
    final mockSource = Source(
      id: 'source-1',
      name: 'Example News',
      description: 'A news source for examples',
      url: 'http://example.com',
      sourceType: SourceType.newsAgency,
      language: mockLanguage,
      headquarters: mockCountry,
      createdAt: DateTime.utc(2023),
      updatedAt: DateTime.utc(2023),
      status: ContentStatus.active,
    );
    final mockTopic = Topic(
      id: 'topic-1',
      name: 'Technology',
      description: 'Technology news',
      iconUrl: 'http://example.com/tech_icon.png',
      createdAt: DateTime.utc(2023),
      updatedAt: DateTime.utc(2023),
      status: ContentStatus.active,
    );
    final mockHeadline = Headline(
      id: 'headline-1',
      title: 'Example Headline',
      excerpt: 'This is an example headline excerpt.',
      url: 'http://example.com/headline',
      imageUrl: 'http://example.com/headline_image.png',
      source: mockSource,
      eventCountry: mockCountry,
      topic: mockTopic,
      createdAt: DateTime.utc(2023),
      updatedAt: DateTime.utc(2023),
      status: ContentStatus.active,
    );

    final userContentPreferences = UserContentPreferences(
      id: 'user-1',
      followedCountries: [mockCountry],
      followedSources: [mockSource],
      followedTopics: [mockTopic],
      savedHeadlines: const [],
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(userContentPreferences, isA<UserContentPreferences>());
      });

      test('returns correct instance with empty lists when provided', () {
        const defaultPreferences = UserContentPreferences(
          id: 'user-2',
          followedCountries: [],
          followedSources: [],
          followedTopics: [],
          savedHeadlines: [],
        );
        expect(defaultPreferences.followedCountries, isEmpty);
        expect(defaultPreferences.followedSources, isEmpty);
        expect(defaultPreferences.followedTopics, isEmpty);
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
              'isoCode': 'US',
              'name': 'United States',
              'flagUrl': 'http://example.com/us.png',
              'createdAt': '2023-01-01T00:00:00.000Z',
              'updatedAt': '2023-01-01T00:00:00.000Z',
              'status': ContentStatus.active.name,
              'type': 'country',
            },
          ],
          'followedSources': [
            {
              'id': 'source-1',
              'name': 'Example News',
              'description': 'A news source for examples',
              'url': 'http://example.com',
              'sourceType': 'newsAgency',
              'language': {
                'id': 'lang-en',
                'name': 'English',
                'code': 'en',
                'nativeName': 'English',
                'createdAt': '2023-01-01T00:00:00.000Z',
                'updatedAt': '2023-01-01T00:00:00.000Z',
                'status': 'active'
              },
              'headquarters': {
                'id': 'country-1',
                'isoCode': 'US',
                'name': 'United States',
                'flagUrl': 'http://example.com/us.png',
                'createdAt': '2023-01-01T00:00:00.000Z',
                'updatedAt': '2023-01-01T00:00:00.000Z',
                'status': ContentStatus.active.name,
                'type': 'country',
              },
              'createdAt': '2023-01-01T00:00:00.000Z',
              'updatedAt': '2023-01-01T00:00:00.000Z',
              'status': ContentStatus.active.name,
              'type': 'source',
            },
          ],
          'followedTopics': [
            {
              'id': 'topic-1',
              'name': 'Technology',
              'description': 'Technology news',
              'iconUrl': 'http://example.com/tech_icon.png',
              'createdAt': '2023-01-01T00:00:00.000Z',
              'updatedAt': '2023-01-01T00:00:00.000Z',
              'status': ContentStatus.active.name,
              'type': 'topic',
            },
          ],
          'savedHeadlines': [
            {
              'id': 'headline-1',
              'title': 'Example Headline',
              'excerpt': 'This is an example headline excerpt.',
              'url': 'http://example.com/headline',
              'imageUrl': 'http://example.com/headline_image.png',
              'source': {
                'id': 'source-1',
                'name': 'Example News',
                'description': 'A news source for examples',
                'url': 'http://example.com',
                'sourceType': 'newsAgency',
                'language': {
                  'id': 'lang-en',
                  'name': 'English',
                  'code': 'en',
                  'nativeName': 'English',
                  'createdAt': '2023-01-01T00:00:00.000Z',
                  'updatedAt': '2023-01-01T00:00:00.000Z',
                  'status': 'active'
                },
                'headquarters': {
                  'id': 'country-1',
                  'isoCode': 'US',
                  'name': 'United States',
                  'flagUrl': 'http://example.com/us.png',
                  'createdAt': '2023-01-01T00:00:00.000Z',
                  'updatedAt': '2023-01-01T00:00:00.000Z',
                  'status': ContentStatus.active.name,
                  'type': 'country',
                },
                'createdAt': '2023-01-01T00:00:00.000Z',
                'updatedAt': '2023-01-01T00:00:00.000Z',
                'status': ContentStatus.active.name,
                'type': 'source',
              },
              'eventCountry': mockCountry.toJson(),
              'topic': {
                'id': 'topic-1',
                'name': 'Technology',
                'description': 'Technology news',
                'iconUrl': 'http://example.com/tech_icon.png',
                'createdAt': '2023-01-01T00:00:00.000Z',
                'updatedAt': '2023-01-01T00:00:00.000Z',
                'status': ContentStatus.active.name,
                'type': 'topic',
              },
              'createdAt': '2023-01-01T00:00:00.000Z',
              'updatedAt': '2023-01-01T00:00:00.000Z',
              'status': ContentStatus.active.name,
              'type': 'headline',
            },
          ],
        };

        final result = UserContentPreferences.fromJson(json);

        expect(result.id, 'user-1');
        expect(result.followedCountries.length, 1);
        expect(result.followedCountries.first, mockCountry);
        expect(result.followedSources.length, 1);
        expect(result.followedSources.first, mockSource);
        expect(result.followedTopics.length, 1);
        expect(result.followedTopics.first, mockTopic);
        expect(result.savedHeadlines.length, 1);
        expect(result.savedHeadlines.first, mockHeadline);
      });

      test('returns correct instance from JSON with empty lists', () {
        final json = {
          'id': 'user-3',
          'followedCountries': [],
          'followedSources': [],
          'followedTopics': [],
          'savedHeadlines': [],
        };

        final result = UserContentPreferences.fromJson(json);

        expect(result.id, 'user-3');
        expect(result.followedCountries, isEmpty);
        expect(result.followedSources, isEmpty);
        expect(result.followedTopics, isEmpty);
        expect(result.savedHeadlines, isEmpty);
      });

      test(
        'returns correct instance from JSON with empty lists when fields are missing',
        () {
          final json = {
            'id': 'user-4',
            'followedCountries': [],
            'followedSources': [],
            'followedTopics': [],
            'savedHeadlines': [],
          };

          final result = UserContentPreferences.fromJson(json);

          expect(result.id, 'user-4');
          expect(result.followedCountries, isEmpty);
          expect(result.followedSources, isEmpty);
          expect(result.followedTopics, isEmpty);
          expect(result.savedHeadlines, isEmpty);
        },
      );
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
        expect(json['followedTopics'], isA<List>());
        expect((json['followedTopics'] as List).length, 1);
        expect((json['followedTopics'] as List).first['id'], 'topic-1');
        expect(json['savedHeadlines'], isA<List>());
        expect((json['savedHeadlines'] as List).length, 1);
        expect((json['savedHeadlines'] as List).first['id'], 'headline-1');
      });

      test('returns correct JSON map with empty lists', () {
        const emptyPreferences = UserContentPreferences(
          id: 'user-5',
          followedCountries: [],
          followedSources: [],
          followedTopics: [],
          savedHeadlines: [],
        );
        final json = emptyPreferences.toJson();

        expect(json['id'], 'user-5');
        expect(json['followedCountries'], isEmpty);
        expect(json['followedSources'], isEmpty);
        expect(json['followedTopics'], isEmpty);
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
          createdAt: DateTime.utc(2023),
          updatedAt: DateTime.utc(2023),
          status: ContentStatus.active,
        );
        final newHeadline = Headline(
          id: 'headline-2',
          title: 'Another Headline',
          excerpt: 'Another headline excerpt.',
          url: 'http://example.com/another_headline',
          imageUrl: 'http://example.com/another_headline_image.png',
          source: mockSource,
          eventCountry: mockCountry,
          topic: mockTopic,
          createdAt: DateTime.utc(2023),
          updatedAt: DateTime.utc(2023),
          status: ContentStatus.active,
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
          updatedPreferences.followedTopics,
          userContentPreferences.followedTopics,
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
        const preferences1 = UserContentPreferences(
          id: 'user-6',
          followedCountries: [],
          followedSources: [],
          followedTopics: [],
          savedHeadlines: [],
        );
        const preferences2 = UserContentPreferences(
          id: 'user-6',
          followedCountries: [],
          followedSources: [],
          followedTopics: [],
          savedHeadlines: [],
        );
        expect(preferences1, preferences2);
      });

      test('instances with different properties are not equal', () {
        const preferences1 = UserContentPreferences(
          id: 'user-7',
          followedCountries: [],
          followedSources: [],
          followedTopics: [],
          savedHeadlines: [],
        );
        const preferences2 = UserContentPreferences(
          id: 'user-8',
          followedCountries: [],
          followedSources: [],
          followedTopics: [],
          savedHeadlines: [],
        );
        expect(preferences1, isNot(equals(preferences2)));
      });
    });
  });
}
