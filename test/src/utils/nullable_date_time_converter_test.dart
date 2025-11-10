import 'package:core/src/utils/nullable_date_time_converter.dart';
import 'package:test/test.dart';

void main() {
  group('NullableDateTimeConverter', () {
    const converter = NullableDateTimeConverter();

    test('fromJson converts a valid ISO 8601 string to DateTime', () {
      // Arrange
      final now = DateTime.now();
      final isoString = now.toIso8601String();

      // Act
      final dateTime = converter.fromJson(isoString);

      // Assert
      expect(dateTime, isA<DateTime>());
      expect(dateTime!.toIso8601String(), equals(isoString));
    });

    test('fromJson converts null to null', () {
      // Act
      final dateTime = converter.fromJson(null);

      // Assert
      expect(dateTime, isNull);
    });

    test('fromJson throws FormatException for invalid string', () {
      // Arrange
      const invalidString = 'not-a-valid-date';

      // Act & Assert
      expect(() => converter.fromJson(invalidString), throwsFormatException);
    });

    test('toJson converts a DateTime object to an ISO 8601 string', () {
      // Arrange
      final now = DateTime.now();

      // Act
      final isoString = converter.toJson(now);

      // Assert
      expect(isoString, isA<String>());
      expect(isoString, equals(now.toIso8601String()));
    });

    test('toJson converts null to null', () {
      // Act
      final isoString = converter.toJson(null);

      // Assert
      expect(isoString, isNull);
    });
  });
}
