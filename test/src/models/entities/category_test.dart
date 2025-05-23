import 'package:ht_shared/src/models/core/content_type.dart';
import 'package:ht_shared/src/models/core/feed_item_action.dart';
import 'package:ht_shared/src/models/entities/category.dart';
import 'package:test/test.dart';

void main() {
  group('Category', () {
    const mockAction = OpenInternalContent(
      contentId: 'test-id',
      contentType: ContentType.category,
    );

    Category createSubject({
      required String name,
      required FeedItemAction action,
      String? id,
      String? description,
      String? iconUrl,
    }) {
      return Category(
        id: id,
        name: name,
        action: action,
        description: description,
        iconUrl: iconUrl,
      );
    }

    test('supports value equality', () {
      const fixedId = 'fixed-category-id';
      expect(
        createSubject(id: fixedId, name: 'Technology', action: mockAction),
        createSubject(id: fixedId, name: 'Technology', action: mockAction),
      );
    });

    test('constructor assigns id if not provided and sets type to "category"',
        () {
      final category = createSubject(name: 'Sports', action: mockAction);
      expect(category.id, isNotNull);
      expect(category.id, isNotEmpty);
      expect(category.type, 'category');
    });

    test('constructor uses provided id', () {
      const customId = 'custom-category-id';
      final category = createSubject(
        id: customId,
        name: 'Politics',
        action: mockAction,
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
          'action': {
            'type': 'open_internal_content',
            'content_id': 'science-id',
            'content_type': 'category',
          },
        };
        expect(
          Category.fromJson(json),
          Category(
            id: '123',
            name: 'Science',
            description: 'Science news',
            iconUrl: 'http://example.com/science.png',
            action: const OpenInternalContent(
              contentId: 'science-id',
              contentType: ContentType.category,
            ),
          ),
        );
      });

      test('creates Category with default id if not provided in JSON', () {
        final json = <String, dynamic>{
          'name': 'Art',
          'type': 'category',
          'action': {
            'type': 'open_internal_content',
            'content_id': 'art-id',
            'content_type': 'category',
          },
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
          action: mockAction,
        );
        expect(category.toJson(), <String, dynamic>{
          'id': '456',
          'name': 'Business',
          'description': 'Business news',
          'icon_url': 'http://example.com/business.png',
          'type': 'category',
          'action': {
            'type': 'open_internal_content',
            'content_id': 'test-id',
            'content_type': 'category',
          },
        });
      });

      test('does not include null fields in JSON', () {
        final category = createSubject(name: 'Health', action: mockAction);
        expect(category.toJson(), <String, dynamic>{
          'id': category.id, // ID will be generated
          'name': 'Health',
          'type': 'category',
          'action': {
            'type': 'open_internal_content',
            'content_id': 'test-id',
            'content_type': 'category',
          },
        });
      });
    });

    group('copyWith', () {
      test('returns a new object with updated name', () {
        final original = createSubject(name: 'Old Name', action: mockAction);
        final updated = original.copyWith(name: 'New Name');
        expect(updated.name, 'New Name');
        expect(updated.id, original.id);
        expect(updated.description, original.description);
        expect(updated.iconUrl, original.iconUrl);
        expect(updated.action, original.action);
      });

      test('returns a new object with updated description', () {
        final original = createSubject(name: 'Test', action: mockAction);
        final updated = original.copyWith(description: 'New Description');
        expect(updated.description, 'New Description');
        expect(updated.name, original.name);
      });

      test('returns a new object with updated iconUrl', () {
        final original = createSubject(name: 'Test', action: mockAction);
        final updated = original.copyWith(iconUrl: 'new_icon.png');
        expect(updated.iconUrl, 'new_icon.png');
        expect(updated.name, original.name);
      });

      test('returns a new object with updated action', () {
        final original = createSubject(name: 'Test', action: mockAction);
        const newAction = OpenExternalUrl(url: 'http://new.url');
        final updated = original.copyWith(action: newAction);
        expect(updated.action, newAction);
        expect(updated.name, original.name);
      });

      test('returns a new object with multiple updated properties', () {
        final original = createSubject(
          name: 'Original',
          description: 'Desc',
          action: mockAction,
        );
        const newAction = OpenExternalUrl(url: 'http://another.url');
        final updated = original.copyWith(
          name: 'Updated',
          description: 'Updated Desc',
          action: newAction,
        );
        expect(updated.name, 'Updated');
        expect(updated.description, 'Updated Desc');
        expect(updated.action, newAction);
        expect(updated.id, original.id);
      });
    });
  });
}
