import 'package:core/src/utils/nullable_date_time_converter.dart';
import 'package:test/test.dart';

void main() {
  group('NullableDateTimeConverter', () {
    const converter = NullableDateTimeConverter();

    group('fromJson', () {
      test('should convert a valid ISO 8601 string to DateTime', () {
        final now = DateTime.now();
        final isoString = now.toIso8601String();
        final dateTime = converter.fromJson(isoString);

        expect(dateTime, isA<DateTime>());
        // Parsing and re-serializing might have microsecond differences
        expect(dateTime!.toIso8601String(), equals(isoString));
      });

      test('should convert null to null', () {
        final dateTime = converter.fromJson(null);
        expect(dateTime, isNull);
      });

      test('should throw FormatException for an invalid string', () {
        const invalidString = 'not-a-valid-date';
        expect(
          () => converter.fromJson(invalidString),
          throwsA(isA<FormatException>()),
        );
      });
    });

    group('toJson', () {
      test('should convert a DateTime object to an ISO 8601 string', () {
        final now = DateTime.now();
        final isoString = converter.toJson(now);

        expect(isoString, isA<String>());
        expect(isoString, equals(now.toIso8601String()));
      });

      test('should convert null to null', () {
        final isoString = converter.toJson(null);
        expect(isoString, isNull);
      });
    });
  });
}
