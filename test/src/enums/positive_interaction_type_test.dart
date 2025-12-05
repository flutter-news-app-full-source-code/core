import 'package:core/src/enums/positive_interaction_type.dart';
import 'package:test/test.dart';

void main() {
  group('PositiveInteractionType', () {
    test('has correct number of values', () {
      expect(PositiveInteractionType.values.length, 4);
    });

    group('serialization', () {
      test('uses correct string values for json serialization', () {
        // This test verifies that the enum's string representation,
        // which is used by json_serializable, matches the expected value.
        expect(PositiveInteractionType.saveItem.name, 'saveItem');
        expect(PositiveInteractionType.followItem.name, 'followItem');
        expect(PositiveInteractionType.shareContent.name, 'shareContent');
        expect(PositiveInteractionType.saveFilter.name, 'saveFilter');
      });

      test('can be created from string value for json deserialization', () {
        // This test verifies that the enum can be created from its
        // string representation, mimicking json_serializable's behavior.
        expect(
          PositiveInteractionType.values.byName('saveItem'),
          PositiveInteractionType.saveItem,
        );
        expect(
          PositiveInteractionType.values.byName('followItem'),
          PositiveInteractionType.followItem,
        );
        expect(
          PositiveInteractionType.values.byName('shareContent'),
          PositiveInteractionType.shareContent,
        );
        expect(
          PositiveInteractionType.values.byName('saveFilter'),
          PositiveInteractionType.saveFilter,
        );
      });

      test('throws ArgumentError for invalid string value', () {
        expect(
          () => PositiveInteractionType.values.byName('invalid_interaction'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
