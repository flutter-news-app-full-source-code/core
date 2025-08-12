import 'package:core/src/utils/json_helpers.dart';
import 'package:test/test.dart';

void main() {
  group('dateTimeFromJson', () {
    test('throws ArgumentError when json is null', () {
      expect(() => dateTimeFromJson(null), throwsA(isA<ArgumentError>()));
    });

    test('throws FormatException when json is not a valid date string', () {
      expect(() => dateTimeFromJson('not a date'), throwsA(isA<FormatException>()));
    });

    test('returns DateTime when json is a valid date string', () {
      final date = DateTime.now();
      final dateString = date.toIso8601String();
      final parsedDate = dateTimeFromJson(dateString);
      expect(parsedDate, isA<DateTime>());
      // Parsing and re-serializing might have slight precision differences
      expect(parsedDate.toIso8601String(), equals(dateString));
    });
  });

  group('dateTimeToJson', () {
    test('returns ISO 8601 string when date is not null', () {
      final date = DateTime.now();
      expect(dateTimeToJson(date), equals(date.toIso8601String()));
    });
  });
}
