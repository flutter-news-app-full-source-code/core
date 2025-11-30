import 'package:core/src/enums/engageable_type.dart';
import 'package:test/test.dart';

void main() {
  group('EngageableType', () {
    test('has correct values', () {
      expect(EngageableType.values, containsAll([EngageableType.headline]));
    });

    group('serialization', () {
      test('uses correct string values for json serialization', () {
        // This test verifies that the enum's string representation,
        // which is used by json_serializable, matches the expected value.
        expect(EngageableType.headline.name, 'headline');
      });

      test('can be created from string value for json deserialization', () {
        // This test verifies that the enum can be created from its
        // string representation, mimicking json_serializable's behavior.
        expect(
          EngageableType.values.byName('headline'),
          EngageableType.headline,
        );
      });

      test('throws ArgumentError for invalid string value', () {
        // Verifies that an unknown string cannot be converted to an enum value.
        expect(
          () => EngageableType.values.byName('invalid_type'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    test('has correct toString representation', () {
      expect(EngageableType.headline.toString(), 'EngageableType.headline');
    });
  });
}
