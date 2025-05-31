import 'package:ht_shared/src/models/entities/category.dart';
import 'package:test/test.dart';

void main() {
  group('Category', () {
    Category createSubject({
      required String name,
      String? id,
      String? description,
      String? iconUrl,
    }) {
      return Category(
        id: id,
        name: name,
        description: description,
        iconUrl: iconUrl,
      );
    }

    test('supports value equality', () {
      const fixedId = 'fixed-category-id';
      expect(
        createSubject(id: fixedId, name: 'Technology'),
        createSubject(id: fixedId, name: 'Technology'),
      );
    });

    test('constructor assigns id if not provided and sets type to "category"',
        () {
      final category = createSubject(name: 'Sports');
      expect(category.id, isNotNull);
      expect(category.id, isNotEmpty);
      expect(category.type, 'category');
    });

    test('constructor uses provided id', () {
      const customId = 'custom-category-id';
      final category = createSubject(
        id: customId,
        name: 'Politics',
      );
      expect(category.id, customId);
    });

    group('fromJson', () {
      test('creates correct Category object from valid JSON', () {
        final json = <String, dynamic>{
          'id': '123',
          'name': 'Science',
          'description': 'Science news',
          'icon_url': 'http://example.com/science.png',
          'type': 'category',
        };
        expect(
          Category.fromJson(json),
          equals(
            Category(
              id: '123',
              name: 'Science',
              description: 'Science news',
              iconUrl: 'http://example.com/science.png',
            ),
          ),
        );
      });

      test('creates Category with default id if not provided in JSON', () {
        final json = <String, dynamic>{
          'name': 'Art',
          'type': 'category',
        };
        final category = Category.fromJson(json);
        expect(category.id, isNotNull);
        expect(category.id, isNotEmpty);
        expect(category.name, 'Art');
      });
    });

    group('toJson', () {
      test('produces correct JSON map', () {
        final category = createSubject(
          id: '456',
          name: 'Business',
          description: 'Business news',
          iconUrl: 'http://example.com/business.png',
        );
        expect(category.toJson(), <String, dynamic>{
          'id': '456',
          'name': 'Business',
          'description': 'Business news',
          'icon_url': 'http://example.com/business.png',
          'type': 'category',
        });
      });

      test('does not include null fields in JSON', () {
        final category = createSubject(name: 'Health');
        expect(category.toJson(), <String, dynamic>{
          'id': category.id, // ID will be generated
          'name': 'Health',
          'type': 'category',
        });
      });
    });

    group('copyWith', () {
      test('returns a new object with updated name', () {
        final original = createSubject(name: 'Old Name');
        final updated = original.copyWith(name: 'New Name');
        expect(updated.name, 'New Name');
        expect(updated.id, original.id);
        expect(updated.description, original.description);
        expect(updated.iconUrl, original.iconUrl);
      });

      test('returns a new object with updated description', () {
        final original = createSubject(name: 'Test');
        final updated = original.copyWith(description: 'New Description');
        expect(updated.description, 'New Description');
        expect(updated.name, original.name);
      });

      test('returns a new object with updated iconUrl', () {
        final original = createSubject(name: 'Test');
        final updated = original.copyWith(iconUrl: 'new_icon.png');
        expect(updated.iconUrl, 'new_icon.png');
        expect(updated.name, original.name);
      });

      test('returns a new object with multiple updated properties', () {
        final original = createSubject(
          name: 'Original',
          description: 'Desc',
        );
        final updated = original.copyWith(
          name: 'Updated',
          description: 'Updated Desc',
        );
        expect(updated.name, 'Updated');
        expect(updated.description, 'Updated Desc');
        expect(updated.id, original.id);
      });
    });
  });
}
