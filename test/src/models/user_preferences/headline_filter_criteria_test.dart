import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('HeadlineFilterCriteria', () {
    final fullModel = savedHeadlineFiltersFixturesData[0].criteria;
    final fullJson = fullModel.toJson();

    const emptyModel = HeadlineFilterCriteria(
      topics: [],
      sources: [],
      countries: [],
    );

    final emptyJson = emptyModel.toJson();

    test('should be instantiable', () {
      expect(fullModel, isA<HeadlineFilterCriteria>());
      expect(emptyModel, isA<HeadlineFilterCriteria>());
    });

    test('should be equal to another instance with the same values', () {
      final otherModel = HeadlineFilterCriteria(
        topics: fullModel.topics,
        sources: fullModel.sources,
        countries: fullModel.countries,
      );
      expect(fullModel, equals(otherModel));
    });

    test('should have the correct props', () {
      expect(
        fullModel.props,
        equals([fullModel.topics, fullModel.sources, fullModel.countries]),
      );
    });

    test('should correctly deserialize from json', () {
      expect(HeadlineFilterCriteria.fromJson(fullJson), equals(fullModel));
      expect(HeadlineFilterCriteria.fromJson(emptyJson), equals(emptyModel));
    });

    test('should correctly serialize to json', () {
      expect(fullModel.toJson(), equals(fullJson));
      expect(emptyModel.toJson(), equals(emptyJson));
    });

    test('copyWith should work correctly', () {
      final topic2 = topicsFixturesData[1];
      final copied = fullModel.copyWith(topics: [topic2]);

      expect(copied.topics, equals([topic2]));
      expect(copied.sources, equals(fullModel.sources));
      expect(copied.countries, equals(fullModel.countries));
    });

    test('copyWith with no arguments should return an identical instance', () {
      final copied = fullModel.copyWith();
      expect(copied, equals(fullModel));
    });
  });
}
