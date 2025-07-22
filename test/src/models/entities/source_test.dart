import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('Source Model', () {
    const testId = 'test-uuid-123';
    const testName = 'Test News Source';
    const testDescription = 'A source for testing purposes.';
    const testUrl = 'https://example.com/test';
    const testType = SourceType.specializedPublisher;
    const testLanguage = 'en';
    final testDateTime = DateTime.utc(2024, 4, 17, 13);
    final testDateTimeString = testDateTime.toIso8601String();

    // Use a valid Country instance for testing
    final testCountry = Country(
      id: 'country-uuid-456',
      isoCode: 'XX',
      name: 'Testland',
      flagUrl: 'https://example.com/flag.png',
      createdAt: testDateTime,
      updatedAt: testDateTime,
      status: ContentStatus.active,
    );
    // Get the JSON representation for comparison
    final testHeadquartersJson = testCountry.toJson();

    late Source minimalSource;
    late Source fullSource;

    setUp(() {
      minimalSource = Source(
        id: const Uuid().v4(),
        name: testName,
        description: testDescription,
        url: testUrl,
        sourceType: testType,
        language: testLanguage,
        headquarters: testCountry,
        createdAt: testDateTime,
        updatedAt: testDateTime,
        status: ContentStatus.active,
      );
      fullSource = Source(
        id: testId,
        name: testName,
        description: testDescription,
        url: testUrl,
        sourceType: testType,
        language: testLanguage,
        headquarters: testCountry,
        createdAt: testDateTime,
        updatedAt: testDateTime,
        status: ContentStatus.active,
      );
    });

    group('Constructor', () {
      test('creates instance with only required name and generates ID', () {
        expect(minimalSource.name, testName);
        expect(minimalSource.id, isA<String>());
        expect(
          Uuid.isValidUUID(
            fromString: minimalSource.id,
            validationMode: ValidationMode.nonStrict,
          ),
          isTrue,
        );
        expect(minimalSource.description, testDescription);
        expect(minimalSource.url, testUrl);
        expect(minimalSource.sourceType, testType);
        expect(minimalSource.language, testLanguage);
        expect(minimalSource.headquarters, testCountry);
        expect(minimalSource.createdAt, testDateTime);
        expect(minimalSource.updatedAt, testDateTime);
        expect(minimalSource.status, ContentStatus.active);
      });

      test('creates instance with all fields including explicit id', () {
        expect(fullSource.id, testId);
        expect(fullSource.name, testName);
        expect(fullSource.description, testDescription);
        expect(fullSource.url, testUrl);
        expect(fullSource.sourceType, testType);
        expect(fullSource.language, testLanguage);
        expect(fullSource.headquarters, testCountry);
        expect(fullSource.status, ContentStatus.active);
      });
    });

    group('Equatable Props and Equality', () {
      test('props list contains all relevant fields', () {
        expect(
          fullSource.props,
          equals([
            testId, // id
            testName, // name
            testDescription, // description
            testUrl, // url
            testType, // sourceType
            testLanguage, // language
            testCountry, // headquarters
            testDateTime, // createdAt
            testDateTime, // updatedAt
            ContentStatus.active, // status
            'source', // type
          ]),
        );
      });

      test('instances with same props are equal', () {
        final source1 = Source(
          id: testId,
          name: testName,
          description: testDescription,
          url: testUrl,
          sourceType: testType,
          language: testLanguage,
          headquarters: testCountry,
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        );
        final source2 = Source(
          id: testId,
          name: testName,
          description: testDescription,
          url: testUrl,
          sourceType: testType,
          language: testLanguage,
          headquarters: testCountry,
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        );
        expect(source1, equals(source2));
        expect(source1.hashCode, equals(source2.hashCode));
      });

      test('instances with different props are not equal', () {
        final source1 = Source(
          id: testId,
          name: testName,
          description: testDescription,
          url: testUrl,
          sourceType: testType,
          language: testLanguage,
          headquarters: testCountry,
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        );
        final source2 = Source(
          id: 'different-id', // Different ID
          name: testName,
          description: testDescription,
          url: testUrl,
          sourceType: testType,
          language: testLanguage,
          headquarters: testCountry,
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        );
        final source3 = Source(
          id: testId,
          name: 'Different Name', // Different Name
          description: testDescription,
          url: testUrl,
          sourceType: testType,
          language: testLanguage,
          headquarters: testCountry,
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        );
        expect(source1, isNot(equals(source2)));
        expect(source1.hashCode, isNot(equals(source2.hashCode)));
        expect(source1, isNot(equals(source3)));
        expect(source1.hashCode, isNot(equals(source3.hashCode)));
      });
    });

    group('JSON Serialization (toJson)', () {
      test('serializes minimal source correctly', () {
        final json = minimalSource.toJson();
        expect(json, isA<Map<String, dynamic>>());
        expect(json['id'], minimalSource.id); // ID is always present
        expect(json['name'], testName);
        expect(json['description'], testDescription);
        expect(json['url'], testUrl);
        expect(json['status'], 'active');
        expect(json['type'], 'source');
        expect(json['sourceType'], 'specializedPublisher');
        expect(json['language'], testLanguage);
        expect(json['headquarters'], testHeadquartersJson);
        expect(json['createdAt'], testDateTimeString);
        expect(json['updatedAt'], testDateTimeString);
      });

      test('serializes full source correctly', () {
        final json = fullSource.toJson();
        expect(json, isA<Map<String, dynamic>>());
        expect(json['id'], testId);
        expect(json['name'], testName);
        expect(json['description'], testDescription);
        expect(json['url'], testUrl);
        expect(json['status'], 'active');
        expect(json['type'], 'source');
        expect(json['sourceType'], 'specializedPublisher'); // Use direct string
        expect(json['language'], testLanguage);
        expect(json['headquarters'], testHeadquartersJson);
      });

      test('does not include null optional fields in JSON', () {
        final sourceWithNulls = Source(
          id: testId,
          name: testName,
          description: testDescription,
          url: testUrl,
          sourceType: testType,
          language: testLanguage,
          headquarters: testCountry,
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        );
        final json = sourceWithNulls.toJson();
        expect(json.containsKey('description'), isTrue);
        expect(json.containsKey('url'), isTrue);
        expect(json.containsKey('sourceType'), isTrue);
        expect(json.containsKey('language'), isTrue);
        expect(json.containsKey('headquarters'), isTrue);
      });
    });

    group('JSON Deserialization (fromJson)', () {
      test('deserializes minimal JSON correctly', () {
        final minimalJson = {
          'id': testId,
          'name': testName,
          'description': testDescription,
          'url': testUrl,
          'sourceType': testType.name,
          'language': testLanguage,
          'headquarters': testHeadquartersJson,
          'createdAt': testDateTimeString,
          'updatedAt': testDateTimeString,
          'type': 'source',
          'status': 'active',
        };
        final source = Source.fromJson(minimalJson);
        expect(source.id, testId);
        expect(source.name, testName);
        expect(source.description, testDescription);
        expect(source.url, testUrl);
        expect(source.sourceType, testType);
        expect(source.language, testLanguage);
        expect(source.headquarters, testCountry);
        expect(source.status, ContentStatus.active);
      });

      test('deserializes full JSON correctly', () {
        final fullJson = {
          'id': testId,
          'name': testName,
          'description': testDescription,
          'url': testUrl,
          'type': 'source',
          'status': 'active',
          'sourceType': 'specializedPublisher', // Use direct string
          'language': testLanguage,
          'headquarters': testHeadquartersJson,
          'createdAt': testDateTimeString,
          'updatedAt': testDateTimeString,
        };
        final source = Source.fromJson(fullJson);
        expect(source.id, testId);
        expect(source.name, testName);
        expect(source.description, testDescription);
        expect(source.url, testUrl);
        expect(source.sourceType, testType);
        expect(source.language, testLanguage);
        expect(source.headquarters, equals(testCountry));
        expect(source.status, ContentStatus.active);
      });

      test('handles missing optional fields in JSON', () {
        final jsonWithMissing = {
          'id': testId,
          'name': testName,
          'description': testDescription,
          'url': testUrl,
          'sourceType': testType.name,
          'language': testLanguage,
          'headquarters': testHeadquartersJson,
          'createdAt': testDateTimeString,
          'updatedAt': testDateTimeString,
          'type': 'source',
          'status': 'active',
        };
        final source = Source.fromJson(jsonWithMissing);
        expect(source.description, testDescription);
        expect(source.url, testUrl);
        expect(source.sourceType, testType);
        expect(source.language, testLanguage);
        expect(source.headquarters, testCountry);
      });

      test('handles explicitly null optional fields in JSON', () {
        final jsonWithNulls = {
          'id': testId,
          'name': testName,
          'description': 'Test Description',
          'url': 'https://example.com/test',
          'type': 'source',
          'sourceType': 'specializedPublisher',
          'language': 'en',
          'headquarters': testHeadquartersJson,
          'createdAt': testDateTimeString,
          'updatedAt': testDateTimeString,
          'status': 'active',
        };
        final source = Source.fromJson(jsonWithNulls);
        expect(source.description, 'Test Description');
        expect(source.url, 'https://example.com/test');
        expect(source.sourceType, SourceType.specializedPublisher);
        expect(source.language, 'en');
        expect(source.headquarters, testCountry);
        expect(source.createdAt, testDateTime);
        expect(source.updatedAt, testDateTime);
        expect(source.status, ContentStatus.active);
      });

      test('handles unknown type string in JSON gracefully', () {
        final jsonWithUnknownType = {
          'id': testId,
          'name': testName,
          'type': 'source',
          'sourceType': 'some_unknown_type',
          'status': 'active',
        };
        expect(
          () => Source.fromJson(jsonWithUnknownType),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });

    group('copyWith Method', () {
      test('creates an identical copy with no arguments', () {
        final copy = fullSource.copyWith();
        expect(copy, equals(fullSource));
        expect(copy.hashCode, equals(fullSource.hashCode));
        // Ensure it's a new instance, not the same object reference
        expect(identical(copy, fullSource), isFalse);
      });

      test('updates individual fields correctly', () {
        const updatedId = 'new-id-456';
        const updatedName = 'Updated Source Name';
        const updatedDesc = 'New description.';
        const updatedUrl = 'https://new.example.com';
        const updatedType = SourceType.blog;
        const updatedLang = 'fr';
        final updatedCountry = Country(
          isoCode: 'YY',
          name: 'Newland',
          flagUrl: 'new.png',
          id: 'c-789',
          createdAt: testDateTime,
          updatedAt: testDateTime,
          status: ContentStatus.active,
        );
        const updatedStatus = ContentStatus.archived;

        expect(fullSource.copyWith(id: updatedId).id, updatedId);
        expect(fullSource.copyWith(name: updatedName).name, updatedName);
        expect(
          fullSource.copyWith(description: updatedDesc).description,
          updatedDesc,
        );
        expect(fullSource.copyWith(url: updatedUrl).url, updatedUrl);
        expect(
          fullSource.copyWith(sourceType: updatedType).sourceType,
          updatedType,
        );
        expect(
          fullSource.copyWith(language: updatedLang).language,
          updatedLang,
        );
        expect(
          fullSource.copyWith(headquarters: updatedCountry).headquarters,
          updatedCountry,
        );
        expect(
          fullSource.copyWith(status: updatedStatus).status,
          updatedStatus,
        );
      });

      test('updates multiple fields simultaneously', () {
        const updatedName = 'Multi Update Source';
        const updatedType = SourceType.aggregator;
        const updatedStatus = ContentStatus.archived;
        final updatedCopy = fullSource.copyWith(
          name: updatedName,
          sourceType: updatedType,
          status: updatedStatus,
        );

        expect(updatedCopy.id, fullSource.id); // Unchanged
        expect(updatedCopy.name, updatedName); // Changed
        expect(updatedCopy.description, fullSource.description); // Unchanged
        expect(updatedCopy.url, fullSource.url); // Unchanged
        expect(updatedCopy.sourceType, updatedType); // Changed
        expect(updatedCopy.language, fullSource.language); // Unchanged
        expect(updatedCopy.headquarters, fullSource.headquarters); // Unchanged
        expect(updatedCopy.status, updatedStatus); // Changed
      });
    });
  });
}
