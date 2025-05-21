import 'package:ht_shared/src/models/content_type.dart';
import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:ht_shared/src/models/feed/suggested_content.dart';
import 'package:ht_shared/src/models/feed/suggested_content_display_type.dart';
import 'package:ht_shared/src/models/news/category.dart';
import 'package:ht_shared/src/models/news/country.dart';
import 'package:ht_shared/src/models/news/headline.dart';
import 'package:ht_shared/src/models/news/source.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('SuggestedContent', () {
    const testId = 'test-suggested-id';
    const testTitle = 'Suggested for You';
    const testDescription = 'Based on your reading history.';
    const testDisplayType = SuggestedContentDisplayType.horizontalCardList;
    const defaultAction = OpenExternalUrl(url: 'http://default.com');

    final mockHeadline = Headline(
      id: 'headline-1',
      title: 'Mock Headline',
      action: defaultAction,
    );
    final mockCategory = Category(
      id: 'category-1',
      name: 'Mock Category',
      action: defaultAction,
    );
    final mockSource = Source(
      id: 'source-1',
      name: 'Mock Source',
      action: defaultAction,
    );
    final mockCountry = Country(
      id: 'country-1',
      isoCode: 'US',
      name: 'Mock Country',
      flagUrl: 'http://mock.com/flag.png',
      action: defaultAction,
    );

    final testItems = [
      mockHeadline,
      mockCategory,
      mockSource,
      mockCountry,
    ];

    SuggestedContent createSubject({
      String? id,
      String? title = testTitle,
      String? description = testDescription,
      SuggestedContentDisplayType displayType = testDisplayType,
      List<FeedItem>? items,
      FeedItemAction action = defaultAction,
    }) {
      return SuggestedContent(
        id: id,
        title: title,
        description: description,
        displayType: displayType,
        items: items ?? testItems,
        action: action,
      );
    }

    group('constructor', () {
      test('generates id when not provided', () {
        final content = createSubject();
        expect(content.id, isA<String>());
        expect(Uuid.isValidUUID(fromString: content.id), isTrue);
      });

      test('uses provided id', () {
        final content = createSubject(id: testId);
        expect(content.id, testId);
      });

      test('initializes all properties correctly', () {
        final content = createSubject();
        expect(content.title, testTitle);
        expect(content.description, testDescription);
        expect(content.displayType, testDisplayType);
        expect(content.items, testItems);
        expect(content.action, defaultAction);
        expect(content.type, 'suggested_content');
      });

      test('defaults items to empty list if not provided', () {
        final content = SuggestedContent(
          title: testTitle,
          displayType: testDisplayType,
          items: const [],
          action: defaultAction,
        );
        expect(content.items, isEmpty);
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newTitle = 'New Suggested Title';
        const newDisplayType = SuggestedContentDisplayType.verticalCardList;
        final newItems = [mockHeadline];
        const newAction = OpenInternalContent(
          contentId: 'new-suggested-content',
          contentType: ContentType.source,
        );

        final originalContent = createSubject();
        final updatedContent = originalContent.copyWith(
          title: newTitle,
          displayType: newDisplayType,
          items: newItems,
          action: newAction,
        );

        expect(updatedContent.id, originalContent.id);
        expect(updatedContent.title, newTitle);
        expect(updatedContent.description, originalContent.description);
        expect(updatedContent.displayType, newDisplayType);
        expect(updatedContent.items, newItems);
        expect(updatedContent.action, newAction);
        expect(updatedContent.type, originalContent.type);
      });

      test('returns an identical copy if no updates provided', () {
        final originalContent = createSubject();
        final copiedContent = originalContent.copyWith();
        expect(copiedContent, originalContent);
        expect(identical(copiedContent, originalContent), isFalse);
      });
    });

    group('toJson', () {
      test('serializes full SuggestedContent object to JSON', () {
        final content = createSubject();
        final json = content.toJson();

        expect(json, <String, dynamic>{
          'id': content.id,
          'title': testTitle,
          'description': testDescription,
          'displayType': 'horizontal_card_list',
          'items': testItems.map((e) => e.toJson()).toList(),
          'type': 'suggested_content',
          'action': defaultAction.toJson(),
        });
      });

      test('omits null optional fields from JSON', () {
        final content = createSubject(title: null, description: null);
        final json = content.toJson();

        expect(json.containsKey('title'), isFalse);
        expect(json.containsKey('description'), isFalse);
      });
    });

    group('fromJson', () {
      test('deserializes full JSON to SuggestedContent object', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': testTitle,
          'description': testDescription,
          'displayType': 'horizontal_card_list',
          'items': testItems.map((e) => e.toJson()).toList(),
          'type': 'suggested_content',
          'action': defaultAction.toJson(),
        };
        final content = SuggestedContent.fromJson(json);

        expect(content.id, testId);
        expect(content.title, testTitle);
        expect(content.description, testDescription);
        expect(content.displayType, testDisplayType);
        expect(content.items, testItems);
        expect(content.action, defaultAction);
        expect(content.type, 'suggested_content');
      });

      test('deserializes JSON with missing optional fields', () {
        final json = <String, dynamic>{
          'id': testId,
          'displayType': 'horizontal_card_list',
          'items': testItems.map((e) => e.toJson()).toList(),
          'type': 'suggested_content',
          'action': defaultAction.toJson(),
        };
        final content = SuggestedContent.fromJson(json);

        expect(content.title, isNull);
        expect(content.description, isNull);
      });

      test('deserializes JSON with unknown displayType gracefully', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': testTitle,
          'displayType': 'unknown_type',
          'items': testItems.map((e) => e.toJson()).toList(),
          'type': 'suggested_content',
          'action': defaultAction.toJson(),
        };
        final content = SuggestedContent.fromJson(json);
        expect(content.displayType, isNull);
      });

      test('deserializes JSON with empty items list', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': testTitle,
          'displayType': 'horizontal_card_list',
          'items': <FeedItem>[],
          'type': 'suggested_content',
          'action': defaultAction.toJson(),
        };
        final content = SuggestedContent.fromJson(json);
        expect(content.items, isEmpty);
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        final content1 = createSubject(id: '1');
        final content2 = createSubject(id: '1');
        expect(content1, content2);
      });

      test('instances with different properties are not equal', () {
        final content1 = createSubject(id: '1');
        final content2 = createSubject(id: '2');
        expect(content1, isNot(equals(content2)));
      });

      test('props list contains all relevant fields', () {
        final content = createSubject();
        expect(content.props, [
          content.id,
          content.title,
          content.description,
          content.displayType,
          content.items,
          content.type,
          content.action,
        ]);
      });
    });
  });
}
