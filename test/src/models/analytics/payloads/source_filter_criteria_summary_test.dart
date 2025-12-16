import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SourceFilterCriteriaSummary', () {
    final criteria = getSavedSourceFiltersFixturesData().first.criteria;
    final summary = SourceFilterCriteriaSummary.fromCriteria(criteria);

    group('fromCriteria factory', () {
      test('should correctly create a summary from SourceFilterCriteria', () {
        expect(summary.sourceTypeCount, criteria.sourceTypes.length);
        expect(summary.languageCount, criteria.languages.length);
        expect(summary.countryCount, criteria.countries.length);
      });

      test('should handle empty criteria', () {
        const emptyCriteria = SourceFilterCriteria(
          sourceTypes: [],
          languages: [],
          countries: [],
        );
        final emptySummary = SourceFilterCriteriaSummary.fromCriteria(
          emptyCriteria,
        );
        expect(emptySummary.sourceTypeCount, 0);
        expect(emptySummary.languageCount, 0);
        expect(emptySummary.countryCount, 0);
      });
    });

    group('toJson', () {
      test('should correctly serialize to JSON', () {
        final json = summary.toJson();
        expect(json, {
          'sourceTypeCount': criteria.sourceTypes.length,
          'languageCount': criteria.languages.length,
          'countryCount': criteria.countries.length,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final instance1 = summary;
        final instance2 = SourceFilterCriteriaSummary(
          sourceTypeCount: criteria.sourceTypes.length,
          languageCount: criteria.languages.length,
          countryCount: criteria.countries.length,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        final instance1 = summary;
        const instance2 = SourceFilterCriteriaSummary(
          sourceTypeCount: 99,
          languageCount: 99,
          countryCount: 99,
        );
        expect(instance1, isNot(equals(instance2)));
      });
    });
  });
}
