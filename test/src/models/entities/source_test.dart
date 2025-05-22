import 'package:ht_shared/ht_shared.dart';
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

    const defaultAction = OpenExternalUrl(url: 'http://default.com');

    // Use a valid Country instance for testing
    final testCountry = Country(
      id: 'country-uuid-456',
      isoCode: 'XX',
      name: 'Testland',
      flagUrl: 'https://example.com/flag.png',
      action: defaultAction,
    );
    // Get the JSON representation for comparison
    final testHeadquartersJson = testCountry.toJson();

    late Source minimalSource;
    late Source fullSource;

    setUp(() {
      minimalSource = Source(name: testName, action: defaultAction);
      fullSource = Source(
        id: testId,
        name: testName,
        description: testDescription,
        url: testUrl,
        sourceType: testType,
        language: testLanguage,
        headquarters: testCountry,
        action: defaultAction,
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
        expect(minimalSource.description, isNull);
        expect(minimalSource.url, isNull);
        expect(minimalSource.sourceType, isNull);
        expect(minimalSource.language, isNull);
        expect(minimalSource.headquarters, isNull);
      });

      test('creates instance with all fields including explicit id', () {
        expect(fullSource.id, testId);
        expect(fullSource.name, testName);
        expect(fullSource.description, testDescription);
        expect(fullSource.url, testUrl);
        expect(fullSource.sourceType, testType);
        expect(fullSource.language, testLanguage);
        expect(fullSource.headquarters, testCountry);
      });
    });

    group('Equatable Props and Equality', () {
      test('props list contains all relevant fields', () {
        expect(
          fullSource.props,
          equals([
            testId,
            testName,
            testDescription,
            testUrl,
            testType, // This is the value of sourceType
            testLanguage,
            testCountry,
            fullSource.type,
            fullSource.action,
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
          action: defaultAction,
        );
        final source2 = Source(
          id: testId,
          name: testName,
          description: testDescription,
          url: testUrl,
          sourceType: testType,
          language: testLanguage,
          headquarters: testCountry,
          action: defaultAction,
        );
        expect(source1, equals(source2));
        expect(source1.hashCode, equals(source2.hashCode));
      });

      test('instances with different props are not equal', () {
        final source1 =
            Source(id: testId, name: testName, action: defaultAction);
        final source2 = Source(
          id: 'different-id', // Different ID
          name: testName,
          action: defaultAction,
        );
        final source3 = Source(
          id: testId,
          name: 'Different Name', // Different Name
          action: defaultAction,
        );
        final source4 = Source(
          id: testId,
          name: testName,
          action: const OpenExternalUrl(url: 'http://other.com'),
        ); // Different Action
        expect(source1, isNot(equals(source2)));
        expect(source1.hashCode, isNot(equals(source2.hashCode)));
        expect(source1, isNot(equals(source3)));
        expect(source1.hashCode, isNot(equals(source3.hashCode)));
        expect(source1, isNot(equals(source4)));
        expect(source1.hashCode, isNot(equals(source4.hashCode)));
      });
    });

    group('JSON Serialization (toJson)', () {
      test('serializes minimal source correctly', () {
        final json = minimalSource.toJson();
        expect(json, isA<Map<String, dynamic>>());
        expect(json['id'], minimalSource.id); // ID is always present
        expect(json['name'], testName);
        expect(json['type'], 'source');
        expect(json['action'], defaultAction.toJson());
        expect(json.containsKey('description'), isFalse);
        expect(json.containsKey('url'), isFalse);
        expect(json.containsKey('sourceType'), isFalse);
        expect(json.containsKey('language'), isFalse);
        expect(json.containsKey('headquarters'), isFalse);
      });

      test('serializes full source correctly', () {
        final json = fullSource.toJson();
        expect(json, isA<Map<String, dynamic>>());
        expect(json['id'], testId);
        expect(json['name'], testName);
        expect(json['description'], testDescription);
        expect(json['url'], testUrl);
        expect(json['type'], 'source');
        expect(
          json['sourceType'],
          'specialized-publisher',
        ); // Use direct string
        expect(json['language'], testLanguage);
        expect(json['headquarters'], testHeadquartersJson);
        expect(json['action'], defaultAction.toJson());
      });

      test('does not include null optional fields in JSON', () {
        final sourceWithNulls =
            Source(id: testId, name: testName, action: defaultAction);
        final json = sourceWithNulls.toJson();
        expect(json.containsKey('description'), isFalse);
        expect(json.containsKey('url'), isFalse);
        expect(json.containsKey('sourceType'), isFalse);
        expect(json.containsKey('language'), isFalse);
        expect(
          json.containsKey('headquarters'),
          isFalse,
        ); // Verify this specifically
      });
    });

    group('JSON Deserialization (fromJson)', () {
      test('deserializes minimal JSON correctly', () {
        final minimalJson = {
          'id': testId,
          'name': testName,
          'type': 'source',
          'action': defaultAction.toJson(),
        };
        final source = Source.fromJson(minimalJson);
        expect(source.id, testId);
        expect(source.name, testName);
        expect(source.description, isNull);
        expect(source.url, isNull);
        expect(source.sourceType, isNull);
        expect(source.language, isNull);
        expect(source.headquarters, isNull);
        expect(source.action, defaultAction);
      });

      test('deserializes full JSON correctly', () {
        final fullJson = {
          'id': testId,
          'name': testName,
          'description': testDescription,
          'url': testUrl,
          'type': 'source',
          'sourceType': 'specialized-publisher', // Use direct string
          'language': testLanguage,
          'headquarters': testHeadquartersJson,
          'action': defaultAction.toJson(),
        };
        final source = Source.fromJson(fullJson);
        expect(source.id, testId);
        expect(source.name, testName);
        expect(source.description, testDescription);
        expect(source.url, testUrl);
        expect(source.sourceType, testType);
        expect(source.language, testLanguage);
        expect(
          source.headquarters,
          equals(testCountry),
        ); // Use equals for Equatable
        expect(source.action, defaultAction);
      });

      test('handles missing optional fields in JSON', () {
        final jsonWithMissing = {
          'id': testId,
          'name': testName,
          'type': 'source',
          'action': defaultAction.toJson(),
          // description, url, type, language, headquarters are missing
        };
        final source = Source.fromJson(jsonWithMissing);
        expect(source.description, isNull);
        expect(source.url, isNull);
        expect(source.sourceType, isNull);
        expect(source.language, isNull);
        expect(source.headquarters, isNull);
        expect(source.action, defaultAction);
      });

      test('handles explicitly null optional fields in JSON', () {
        final jsonWithNulls = {
          'id': testId,
          'name': testName,
          'description': null,
          'url': null,
          'type': 'source',
          'sourceType': null,
          'language': null,
          'headquarters': null,
          'action': defaultAction.toJson(),
        };
        final source = Source.fromJson(jsonWithNulls);
        expect(source.description, isNull);
        expect(source.url, isNull);
        expect(source.sourceType, isNull);
        expect(source.language, isNull);
        expect(source.headquarters, isNull);
        expect(source.action, defaultAction);
      });

      test('handles unknown type string in JSON gracefully', () {
        final jsonWithUnknownType = {
          'id': testId,
          'name': testName,
          'type': 'source',
          'sourceType': 'some-unknown-type',
          'action': defaultAction.toJson(),
        };
        final source = Source.fromJson(jsonWithUnknownType);
        expect(source.sourceType, isNull); // Should default to null
        expect(source.action, defaultAction);
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
          action: defaultAction,
        );
        const updatedAction = OpenExternalUrl(url: 'http://new-default.com');

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
          fullSource.copyWith(action: updatedAction).action,
          updatedAction,
        );
      });

      test('updates multiple fields simultaneously', () {
        const updatedName = 'Multi Update Source';
        const updatedType = SourceType.aggregator;
        const updatedAction = OpenExternalUrl(url: 'http://multi-update.com');
        final updatedCopy = fullSource.copyWith(
          name: updatedName,
          sourceType: updatedType,
          action: updatedAction,
        );

        expect(updatedCopy.id, fullSource.id); // Unchanged
        expect(updatedCopy.name, updatedName); // Changed
        expect(updatedCopy.description, fullSource.description); // Unchanged
        expect(updatedCopy.url, fullSource.url); // Unchanged
        expect(updatedCopy.sourceType, updatedType); // Changed
        expect(updatedCopy.language, fullSource.language); // Unchanged
        expect(updatedCopy.headquarters, fullSource.headquarters); // Unchanged
        expect(updatedCopy.action, updatedAction); // Changed
      });
    });
  });
}
