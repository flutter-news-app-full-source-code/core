import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SavedSourceFilter', () {
    final fullModel = savedSourceFiltersFixturesData[0];
    final fullJson = fullModel.toJson();

    test('should be instantiable', () {
      expect(fullModel, isA<SavedSourceFilter>());
    });

    test('should be equal to another instance with the same values', () {
      final otherModel = SavedSourceFilter(
        id: kSavedSourceFilterId1,
        userId: kAdminUserId,
        name: 'UK News Agencies',
        isPinned: true,
        criteria: fullModel.criteria,
      );
      expect(fullModel, equals(otherModel));
    });

    test('should have the correct props', () {
      expect(
        fullModel.props,
        equals([
          fullModel.id,
          fullModel.userId,
          fullModel.name,
          fullModel.criteria,
          fullModel.isPinned,
        ]),
      );
    });

    test('should correctly deserialize from json', () {
      expect(SavedSourceFilter.fromJson(fullJson), equals(fullModel));
    });

    test('should correctly serialize to json', () {
      expect(fullModel.toJson(), equals(fullJson));
    });

    test('copyWith should work correctly', () {
      final copied = fullModel.copyWith(name: 'New Name', isPinned: false);

      expect(copied.name, 'New Name');
      expect(copied.isPinned, false);
      expect(copied.id, fullModel.id);
      expect(copied.userId, fullModel.userId);
      expect(copied.criteria, fullModel.criteria);
    });

    test('copyWith with no arguments should return an identical instance', () {
      final copied = savedSourceFiltersFixturesData[0].copyWith();
      expect(copied, equals(fullModel));
    });

    test('should handle empty criteria', () {
      const emptyCriteria = SourceFilterCriteria(
        languages: [],
        countries: [],
        sourceTypes: [],
      );
      const model = SavedSourceFilter(
        id: 'filter2',
        userId: 'user2',
        name: 'Empty Filter',
        isPinned: false,
        criteria: emptyCriteria,
      );
      final json = model.toJson();
      final deserialized = SavedSourceFilter.fromJson(json);
      expect(deserialized, model);
      expect(deserialized.criteria, emptyCriteria);
    });
  });
}
