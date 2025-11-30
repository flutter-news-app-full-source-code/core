import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SourceFilterCriteria', () {
    final fullModel = getSavedSourceFiltersFixturesData()[0].criteria;
    final fullJson = fullModel.toJson();

    const emptyModel = SourceFilterCriteria(
      languages: [],
      countries: [],
      sourceTypes: [],
    );

    final emptyJson = emptyModel.toJson();

    test('should be instantiable', () {
      expect(fullModel, isA<SourceFilterCriteria>());
      expect(emptyModel, isA<SourceFilterCriteria>());
    });

    test('should be equal to another instance with the same values', () {
      final otherModel = SourceFilterCriteria(
        languages: const [],
        countries: [countriesFixturesData[1]],
        sourceTypes: const [SourceType.newsAgency],
      );
      expect(fullModel, equals(otherModel));
    });

    test('should have the correct props', () {
      expect(
        fullModel.props,
        equals([
          fullModel.languages,
          fullModel.countries,
          fullModel.sourceTypes,
        ]),
      );
    });

    test('should correctly deserialize from json', () {
      expect(SourceFilterCriteria.fromJson(fullJson), equals(fullModel));
      expect(SourceFilterCriteria.fromJson(emptyJson), equals(emptyModel));
    });

    test('should correctly serialize to json', () {
      expect(fullModel.toJson(), equals(fullJson));
      expect(emptyModel.toJson(), equals(emptyJson));
    });

    test('copyWith should work correctly', () {
      final language2 = languagesFixturesData[1];
      final copied = fullModel.copyWith(languages: [language2], countries: []);

      expect(copied.languages, equals([language2]));
      expect(copied.countries, isEmpty);
      expect(copied.sourceTypes, equals(fullModel.sourceTypes));
    });

    test('copyWith with no arguments should return an identical instance', () {
      final copied = fullModel.copyWith();
      expect(copied, equals(fullModel));
    });
  });
}
