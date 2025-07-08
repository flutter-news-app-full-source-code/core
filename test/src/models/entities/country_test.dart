import 'package:ht_shared/ht_shared.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('Country', () {
    const uuid = Uuid();
    final testId = uuid.v4();
    const testIsoCode = 'US';
    const testName = 'United States';
    const testFlagUrl = 'https://example.com/us_flag.png';
    final testDateTime = DateTime.utc(2024, 4, 17, 13);
    final testDateTimeString = testDateTime.toIso8601String();

    // Helper to create a valid JSON map
    Map<String, dynamic> createValidJsonMap({String? idOverride}) => {
      'id': idOverride ?? testId,
      'isoCode': testIsoCode,
      'name': testName,
      'flagUrl': testFlagUrl,
      'createdAt': testDateTimeString,
      'updatedAt': testDateTimeString,
      'status': ContentStatus.active.name,
      'type': 'country',
    };

    // Helper to create a Country instance
    Country createSubject({
      required String id,
      required DateTime createdAt,
      required DateTime updatedAt,
      String isoCode = testIsoCode,
      String name = testName,
      String flagUrl = testFlagUrl,
      ContentStatus status = ContentStatus.active,
    }) {
      return Country(
        id: id,
        isoCode: isoCode,
        name: name,
        flagUrl: flagUrl,
        createdAt: createdAt,
        updatedAt: updatedAt,
        status: status,
      );
    }

    test('supports value equality', () {
      expect(
        createSubject(
          id: testId,
          createdAt: testDateTime,
          updatedAt: testDateTime,
        ),
        equals(
          createSubject(
            id: testId,
            createdAt: testDateTime,
            updatedAt: testDateTime,
            status: ContentStatus.active,
          ),
        ),
      );
      expect(
        createSubject(
          id: uuid.v4(),
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        ),
        isNot(
          equals(
            createSubject(
              id: uuid.v4(),
              createdAt: testDateTime,
              updatedAt: testDateTime,
              status: ContentStatus.active,
            ),
          ),
        ),
      );
    });

    // Explicitly testing props getter for coverage,
    // although Equatable test covers it implicitly.
    test('props getter returns correct list of properties', () {
      final country = createSubject(
        id: testId,
        createdAt: testDateTime,
        updatedAt: testDateTime,
        status: ContentStatus.active,
      );
      // Directly access props
      final props = country.props;
      expect(props, isList);
      expect(
        props,
        hasLength(8),
      ); // id, isoCode, name, flagUrl, createdAt, updatedAt, status, type
      expect(
        props,
        equals([
          testId,
          testIsoCode,
          testName,
          testFlagUrl,
          testDateTime, // createdAt
          testDateTime, // updatedAt
          ContentStatus.active,
          country.type,
        ]),
      );
    });

    test('props list is correct', () {
      final country = createSubject(
        id: testId,
        createdAt: testDateTime,
        updatedAt: testDateTime,
        status: ContentStatus.active,
      );
      expect(
        country.props,
        equals([
          testId,
          testIsoCode,
          testName,
          testFlagUrl,
          testDateTime, // createdAt
          testDateTime, // updatedAt
          ContentStatus.active,
          country.type,
        ]),
      );
    });

    group('Constructor', () {
      test('works correctly', () {
        expect(
          () => createSubject(
            id: testId,
            createdAt: testDateTime,
            updatedAt: testDateTime,
            status: ContentStatus.active,
          ),
          returnsNormally,
        );
      });

      test('creates instance with provided id', () {
        final specificId = uuid.v4();
        final country = createSubject(
          id: specificId,
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        );
        expect(country.id, specificId);
        expect(country.isoCode, testIsoCode);
        expect(country.name, testName);
        expect(country.flagUrl, testFlagUrl);
        expect(country.status, ContentStatus.active);
      });
    });

    group('fromJson', () {
      test('works correctly when json is valid', () {
        expect(
          Country.fromJson(createValidJsonMap()),
          equals(
            createSubject(
              id: testId,
              createdAt: testDateTime,
              updatedAt: testDateTime,
              status: ContentStatus.active,
            ),
          ),
        );
      });

      test('throws CheckedFromJsonException for missing id', () {
        final json = createValidJsonMap()..remove('id');
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      // Updated to expect TypeError based on terminal output
      test('throws CheckedFromJsonException for missing isoCode', () {
        final json = createValidJsonMap()..remove('isoCode');
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for missing name', () {
        final json = createValidJsonMap()..remove('name');
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for missing flagUrl', () {
        final json = createValidJsonMap()..remove('flagUrl');
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for wrong type (id)', () {
        final json = createValidJsonMap()..['id'] = 123; // Invalid type
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for wrong type (isoCode)', () {
        final json = createValidJsonMap()..['isoCode'] = 123; // Invalid type
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for wrong type (name)', () {
        final json = createValidJsonMap()..['name'] = false; // Invalid type
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for wrong type (flagUrl)', () {
        final json = createValidJsonMap()..['flagUrl'] = null; // Invalid type (non-nullable)
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for missing status', () {
        final json = createValidJsonMap()..remove('status');
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for wrong type (status)', () {
        final json = createValidJsonMap()..['status'] = 123; // Invalid type
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for missing createdAt', () {
        final json = createValidJsonMap()..remove('createdAt');
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for missing updatedAt', () {
        final json = createValidJsonMap()..remove('updatedAt');
        expect(
          () => Country.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });

    group('toJson', () {
      test('works correctly', () {
        expect(
          createSubject(
            id: testId,
            createdAt: testDateTime,
            updatedAt: testDateTime,
            status: ContentStatus.active,
          ).toJson(),
          equals(createValidJsonMap()),
        );
      });
    });
  });
}
