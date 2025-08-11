import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('Language', () {
    final languageFixture = languagesFixturesData.first;
    final languageJson = languageFixture.toJson();

    test('supports value equality', () {
      final language1 = languageFixture.copyWith();
      final language2 = languageFixture.copyWith();
      expect(language1, equals(language2));
    });

    test('props list is correct', () {
      expect(
        languageFixture.props,
        equals([
          languageFixture.id,
          languageFixture.code,
          languageFixture.name,
          languageFixture.nativeName,
          languageFixture.createdAt,
          languageFixture.updatedAt,
          languageFixture.status,
        ]),
      );
    });

    group('Constructor', () {
      test('works correctly', () {
        expect(() => languageFixture, returnsNormally);
      });
    });

    group('fromJson', () {
      test('works correctly when json is valid', () {
        expect(Language.fromJson(languageJson), equals(languageFixture));
      });

      test('throws CheckedFromJsonException for missing fields', () {
        final requiredKeys = [
          'id',
          'code',
          'name',
          'nativeName',
          'createdAt',
          'updatedAt',
          'status',
        ];
        for (final key in requiredKeys) {
          final corruptedJson = Map<String, dynamic>.from(languageJson)
            ..remove(key);
          expect(
            () => Language.fromJson(corruptedJson),
            throwsA(isA<CheckedFromJsonException>()),
            reason: 'Should throw for missing key: $key',
          );
        }
      });
    });

    group('toJson', () {
      test('works correctly', () {
        expect(languageFixture.toJson(), equals(languageJson));
      });
    });

    group('copyWith', () {
      test('returns a new object with updated values', () {
        final updated = languageFixture.copyWith(
          name: 'Spanish',
          nativeName: 'Español',
          status: ContentStatus.archived,
        );

        expect(updated.name, 'Spanish');
        expect(updated.nativeName, 'Español');
        expect(updated.status, ContentStatus.archived);
        // Ensure other properties are unchanged
        expect(updated.id, languageFixture.id);
        expect(updated.code, languageFixture.code);
      });

      test('returns an identical copy if no values are provided', () {
        final copy = languageFixture.copyWith();
        expect(copy, equals(languageFixture));
      });
    });
  });
}
