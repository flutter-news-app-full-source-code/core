import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('Language', () {
    const uuid = Uuid();
    final testId = uuid.v4();
    const testCode = 'en';
    const testName = 'English';
    const testNativeName = 'English';
    final testDateTime = DateTime.utc(2024, 5, 20, 10);
    final testDateTimeString = testDateTime.toIso8601String();

    // Helper to create a valid JSON map
    Map<String, dynamic> createValidJsonMap() => {
          'id': testId,
          'code': testCode,
          'name': testName,
          'nativeName': testNativeName,
          'createdAt': testDateTimeString,
          'updatedAt': testDateTimeString,
          'status': ContentStatus.active.name,
        };

    // Helper to create a Language instance
    Language createSubject({
      String id = testId,
      String code = testCode,
      String name = testName,
      String nativeName = testNativeName,
      DateTime? createdAt,
      DateTime? updatedAt,
      ContentStatus status = ContentStatus.active,
    }) {
      return Language(
        id: id,
        code: code,
        name: name,
        nativeName: nativeName,
        createdAt: createdAt ?? testDateTime,
        updatedAt: updatedAt ?? testDateTime,
        status: status,
      );
    }

    test('supports value equality', () {
      expect(
        createSubject(),
        equals(createSubject()),
      );
      expect(
        createSubject(id: uuid.v4()),
        isNot(equals(createSubject(id: uuid.v4()))),
      );
    });

    test('props list is correct', () {
      final language = createSubject();
      expect(
        language.props,
        equals([
          testId,
          testCode,
          testName,
          testNativeName,
          testDateTime,
          testDateTime,
          ContentStatus.active,
        ]),
      );
    });

    group('Constructor', () {
      test('works correctly', () {
        expect(createSubject, returnsNormally);
      });
    });

    group('fromJson', () {
      test('works correctly when json is valid', () {
        expect(
          Language.fromJson(createValidJsonMap()),
          equals(createSubject()),
        );
      });

      test('throws CheckedFromJsonException for missing fields', () {
        final json = createValidJsonMap();
        final requiredKeys = [
          'id',
          'code',
          'name',
          'nativeName',
          'createdAt',
          'updatedAt',
          'status'
        ];
        for (final key in requiredKeys) {
          final corruptedJson = Map<String, dynamic>.from(json)..remove(key);
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
        expect(
          createSubject().toJson(),
          equals(createValidJsonMap()),
        );
      });
    });

    group('copyWith', () {
      test('returns a new object with updated values', () {
        final original = createSubject();
        final updated = original.copyWith(
          name: 'Spanish',
          nativeName: 'Español',
          status: ContentStatus.archived,
        );

        expect(updated.name, 'Spanish');
        expect(updated.nativeName, 'Español');
        expect(updated.status, ContentStatus.archived);
        // Ensure other properties are unchanged
        expect(updated.id, original.id);
        expect(updated.code, original.code);
      });

      test('returns an identical copy if no values are provided', () {
        final copy = createSubject().copyWith();
        expect(copy, equals(createSubject()));
      });
    });
  });
}
