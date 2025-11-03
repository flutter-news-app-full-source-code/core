import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SavedFilter', () {
    final mockSavedFilter =
        userContentPreferencesFixturesData.first.savedFilters.first;

    group('constructor', () {
      test('returns correct instance', () {
        expect(mockSavedFilter, isA<SavedFilter>());
      });
    });

    group('fromJson/toJson', () {
      test('round trip with all fields populated', () {
        final json = mockSavedFilter.toJson();
        final result = SavedFilter.fromJson(json);
        expect(result, equals(mockSavedFilter));
      });

      test('round trip with empty lists', () {
        const emptyFilter = SavedFilter(
          id: 'filter-empty',
          name: 'Empty',
          topics: [],
          sources: [],
          countries: [],
        );
        final json = emptyFilter.toJson();
        final result = SavedFilter.fromJson(json);
        expect(result, equals(emptyFilter));
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        final newTopic = topicsFixturesData[2];
        final updatedFilter = mockSavedFilter.copyWith(
          name: 'New Name',
          topics: [newTopic],
        );

        expect(updatedFilter.id, mockSavedFilter.id);
        expect(updatedFilter.name, 'New Name');
        expect(updatedFilter.topics, [newTopic]);
        expect(updatedFilter.sources, mockSavedFilter.sources);
        expect(updatedFilter.countries, mockSavedFilter.countries);
      });

      test(
        'returns a new instance with the same fields if no updates provided',
        () {
          final copiedFilter = mockSavedFilter.copyWith();
          expect(copiedFilter, mockSavedFilter);
        },
      );
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final filter1 = mockSavedFilter.copyWith();
        final filter2 = mockSavedFilter.copyWith();
        expect(filter1, filter2);
      });

      test('instances with different properties are not equal', () {
        final filter1 = mockSavedFilter.copyWith();
        final filter2 = mockSavedFilter.copyWith(id: 'filter-x');
        expect(filter1, isNot(equals(filter2)));
      });

      test('instances with different list contents are not equal', () {
        final filter1 = mockSavedFilter.copyWith();
        final filter2 = mockSavedFilter.copyWith(
          topics: [topicsFixturesData.last],
        );
        expect(filter1, isNot(equals(filter2)));
      });
    });
  });
}
