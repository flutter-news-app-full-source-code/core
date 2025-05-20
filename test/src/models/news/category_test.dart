//
// ignore_for_file: lines_longer_than_80_chars

import 'package:ht_shared/src/models/news/category.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('Category', () {
    const uuid = Uuid();
    final testId = uuid.v4();
    const testName = 'Technology';
    const testDescription = 'Latest tech news and trends';
    const testIconUrl = 'https://example.com/icon.png';

    // Helper to create a consistent Category instance
    Category createSubject({
      String? id,
      String name = testName,
      String? description = testDescription,
      String? iconUrl = testIconUrl,
    }) {
      // Use the provided id or generate one if null is explicitly passed
      // or if the id parameter is omitted (which defaults to null).
      return Category(
        id: id, // Pass id directly, constructor handles null/generation
        name: name,
        description: description,
        iconUrl: iconUrl,
      );
    }

    test('constructor generates id when not provided', () {
      final category = createSubject(); // Explicitly pass null
      expect(category.id, isNotNull);
      expect(category.id, isA<String>());
      // Basic check for UUID format (8-4-4-4-12 hex digits)
      expect(
        category.id,
        matches(
          RegExp(
            r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
          ),
        ),
      );
      expect(category.name, testName);
      expect(category.description, testDescription);
      expect(category.iconUrl, testIconUrl);
    });

    test('constructor generates id when id parameter is omitted', () {
      // Omit the id parameter entirely
      final category = Category(
        name: testName,
        description: testDescription,
        iconUrl: testIconUrl,
      );
      expect(category.id, isNotNull);
      expect(category.id, isA<String>());
      expect(
        category.id,
        matches(
          RegExp(
            r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
          ),
        ),
      );
      expect(category.name, testName);
      expect(category.description, testDescription);
      expect(category.iconUrl, testIconUrl);
    });

    test('constructor uses provided id', () {
      final category = createSubject(id: testId);
      expect(category.id, testId);
      expect(category.name, testName);
      expect(category.description, testDescription);
      expect(category.iconUrl, testIconUrl);
    });

    test('supports value equality based on props', () {
      final category1 = createSubject(id: testId);
      final category2 = createSubject(id: testId);
      final category3 = createSubject(id: uuid.v4()); // Different ID
      final category4 = createSubject(
        id: testId,
        name: 'Sports',
      ); // Different Name

      expect(category1, equals(category2));
      expect(category1, isNot(equals(category3)));
      expect(category1, isNot(equals(category4)));
    });

    test('props are correct', () {
      final category = createSubject(id: testId);
      expect(
        category.props,
        equals([testId, testName, testDescription, testIconUrl]),
      );
    });

    test('props handle null values correctly', () {
      final category = Category(
        id: testId,
        name: testName,
      ); // description and iconUrl are null
      expect(category.props, equals([testId, testName, null, null]));
    });

    group('copyWith', () {
      test('returns same object when no properties are passed', () {
        final category = createSubject(id: testId);
        expect(category.copyWith(), equals(category));
        // Ensure it's a different instance but equal value
        expect(identical(category.copyWith(), category), isFalse);
      });

      test('returns object with updated id when id is passed', () {
        final category = createSubject(id: testId);
        final newId = uuid.v4();
        final copiedCategory = category.copyWith(id: newId);

        expect(copiedCategory.id, newId);
        expect(copiedCategory.name, category.name);
        expect(copiedCategory.description, category.description);
        expect(copiedCategory.iconUrl, category.iconUrl);
      });

      test('returns object with updated name when name is passed', () {
        final category = createSubject(id: testId);
        const newName = 'Business';
        final copiedCategory = category.copyWith(name: newName);

        expect(copiedCategory.id, category.id);
        expect(copiedCategory.name, newName);
        expect(copiedCategory.description, category.description);
        expect(copiedCategory.iconUrl, category.iconUrl);
      });

      test(
        'returns object with updated description when description is passed',
        () {
          final category = createSubject(id: testId);
          const newDescription = 'Financial news';
          final copiedCategory = category.copyWith(description: newDescription);

          expect(copiedCategory.id, category.id);
          expect(copiedCategory.name, category.name);
          expect(copiedCategory.description, newDescription);
          expect(copiedCategory.iconUrl, category.iconUrl);
        },
      );

      test('returns object with null description when null is passed', () {
        final category = createSubject(id: testId, description: 'Initial Desc');
        final copiedCategory = category.copyWith();

        expect(copiedCategory.id, category.id);
        expect(copiedCategory.name, category.name);
        // Expect original value when null is passed, due to `?? this.field`
        expect(copiedCategory.description, category.description);
        expect(copiedCategory.iconUrl, category.iconUrl);
      });

      test('returns object with updated iconUrl when iconUrl is passed', () {
        final category = createSubject(id: testId);
        const newIconUrl = 'https://new.example.com/icon.svg';
        final copiedCategory = category.copyWith(iconUrl: newIconUrl);

        expect(copiedCategory.id, category.id);
        expect(copiedCategory.name, category.name);
        expect(copiedCategory.description, category.description);
        expect(copiedCategory.iconUrl, newIconUrl);
      });

      test('returns object with null iconUrl when null is passed', () {
        final category = createSubject(id: testId, iconUrl: 'Initial Icon');
        final copiedCategory = category.copyWith();

        expect(copiedCategory.id, category.id);
        expect(copiedCategory.name, category.name);
        expect(copiedCategory.description, category.description);
        // Expect original value when null is passed, due to `?? this.field`
        expect(copiedCategory.iconUrl, category.iconUrl);
      });

      test('returns object with multiple updated properties', () {
        final category = createSubject(id: testId);
        final newId = uuid.v4();
        const newName = 'Science';
        const newDescription = 'Discoveries and research';

        final copiedCategory = category.copyWith(
          id: newId,
          name: newName,
          description: newDescription,
        );

        expect(copiedCategory.id, newId);
        expect(copiedCategory.name, newName);
        expect(copiedCategory.description, newDescription);
        // Expect original value when null is passed, due to `?? this.field`
        expect(copiedCategory.iconUrl, category.iconUrl);
      });
    });

    group('JSON serialization', () {
      test('fromJson creates correct object', () {
        final json = {
          'id': testId,
          'name': testName,
          'description': testDescription,
          'icon_url': testIconUrl,
        };
        final category = Category.fromJson(json);

        expect(category.id, testId);
        expect(category.name, testName);
        expect(category.description, testDescription);
        expect(category.iconUrl, testIconUrl);
      });

      test('fromJson handles missing optional fields', () {
        final json = {
          'id': testId,
          'name': testName,
          // description and icon_url are missing
        };
        final category = Category.fromJson(json);

        expect(category.id, testId);
        expect(category.name, testName);
        expect(category.description, isNull);
        expect(category.iconUrl, isNull);
      });

      test(
        'fromJson throws JsonKeyRequiredError if required field is missing',
        () {
          final jsonMissingName = {
            'id': testId,
            // name is missing
          };
          expect(
            () => Category.fromJson(jsonMissingName),
            throwsA(
              isA<MissingRequiredKeysException>(),
            ), // Expect specific exception
          );

          // Note: ID is handled by constructor, not JsonKey(required=true)
          // So we don't test missing ID here for JsonKeyRequiredError
        },
      );

      test('toJson produces correct map', () {
        final category = createSubject(id: testId);
        final json = category.toJson();

        expect(
          json,
          equals({
            'id': testId,
            'name': testName,
            'description': testDescription,
            'icon_url': testIconUrl,
          }),
        );
      });

      test('toJson omits null optional fields', () {
        final category = Category(
          id: testId,
          name: testName,
        ); // null description/iconUrl
        final json = category.toJson();

        expect(
          json,
          equals({
            'id': testId,
            'name': testName,
            // description and icon_url should be omitted
          }),
        );
        expect(json.containsKey('description'), isFalse);
        expect(json.containsKey('icon_url'), isFalse);
      });
    });

    test('stringify is true and toString includes properties', () {
      final category = createSubject(id: testId);
      expect(category.stringify, isTrue);
      final categoryString = category.toString();

      expect(categoryString, contains('Category'));
      expect(categoryString, contains(testId));
      expect(categoryString, contains(testName));
      expect(categoryString, contains(testDescription));
      expect(categoryString, contains(testIconUrl));
    });

    test('toString handles null optional properties', () {
      final category = Category(id: testId, name: testName);
      expect(category.stringify, isTrue);
      final categoryString = category.toString();

      expect(categoryString, contains('Category'));
      expect(categoryString, contains(testId));
      expect(categoryString, contains(testName));
      expect(categoryString, contains('null')); // For description and iconUrl
    });
  });
}
