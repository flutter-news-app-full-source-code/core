import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('Headline Model', () {
    const defaultAction = OpenExternalUrl(url: 'http://default.com');

    // Sample data for nested models
    final sampleSourceJson = {
      'id': 'src-test',
      'name': 'Test Source',
      'source_type': 'news_agency', // Corrected to snake_case for enum value
      'type': 'source',
      'action': {
        'type': 'open_external_url',
        'url': 'http://default.com',
      },
    };
    final sampleSource = Source.fromJson(sampleSourceJson);
    final sampleCategoryJson = {
      'id': 'cat-test',
      'name': 'Test Category',
      'type': 'category',
      'action': defaultAction.toJson(),
    };
    final sampleCategory = Category.fromJson(sampleCategoryJson);
    final testTime = DateTime.utc(2024, 4, 17, 13);
    final testTimeString = testTime.toIso8601String();

    final testId = const Uuid().v4();

    // Sample Headline instance with all fields
    final fullHeadline = Headline(
      id: testId,
      title: 'Full Headline Title',
      description: 'Full description.',
      url: 'http://example.com/full',
      imageUrl: 'http://example.com/full.jpg',
      publishedAt: testTime,
      source: sampleSource,
      category: sampleCategory,
      action: defaultAction,
    );

    // Sample JSON map corresponding to fullHeadline
    final fullHeadlineJson = {
      'id': testId,
      'title': 'Full Headline Title',
      'description': 'Full description.',
      'url': 'http://example.com/full',
      'image_url': 'http://example.com/full.jpg',
      'published_at': testTimeString,
      'source': sampleSourceJson,
      'category': sampleCategoryJson,
      'action': defaultAction.toJson(),
      'type': 'headline', // Added type field
    };

    // Sample Headline instance with only required fields
    final minimalHeadline = Headline(
      id: testId, // Use same ID for comparison if needed
      title: 'Minimal Headline Title',
      action: defaultAction,
    );

    // Sample JSON map corresponding to minimalHeadline
    final minimalHeadlineJson = {
      'id': testId,
      'title': 'Minimal Headline Title',
      'action': defaultAction.toJson(),
      'type': 'headline', // Added type field
      // Optional fields are absent
    };

    group('fromJson', () {
      test('should correctly deserialize from full JSON', () {
        final headline = Headline.fromJson(fullHeadlineJson);
        expect(headline, equals(fullHeadline));
        expect(headline.id, testId); // Ensure ID is preserved
        expect(headline.publishedAt, testTime);
        expect(headline.source, sampleSource);
        expect(headline.category, sampleCategory);
      });

      test('should correctly deserialize from minimal JSON', () {
        final headline = Headline.fromJson(minimalHeadlineJson);
        // Compare field by field as ID might be generated if not in JSON
        expect(headline.title, minimalHeadline.title);
        expect(headline.description, isNull);
        expect(headline.url, isNull);
        expect(headline.imageUrl, isNull);
        expect(headline.publishedAt, isNull);
        expect(headline.source, isNull);
        expect(headline.category, isNull);
        // ID should be the one from JSON if provided
        expect(headline.id, testId);
      });

      test('should generate a new ID if not present in JSON', () {
        final jsonWithoutId = Map<String, dynamic>.from(minimalHeadlineJson)
          ..remove('id');
        final headline = Headline.fromJson(jsonWithoutId);
        expect(headline.id, isNotNull);
        expect(headline.id, isNot(equals(testId))); // Should be a new UUID
      });

      test('should handle null DateTime correctly', () {
        final jsonWithNullDate = Map<String, dynamic>.from(fullHeadlineJson)
          ..['published_at'] = null; // Use snake_case key
        final headline = Headline.fromJson(jsonWithNullDate);
        expect(headline.publishedAt, isNull);
      });

      test('should handle invalid DateTime string gracef@ully', () {
        final jsonWithInvalidDate = Map<String, dynamic>.from(fullHeadlineJson)
          ..['published_at'] = 'invalid-date'; // Use snake_case key
        final headline = Headline.fromJson(jsonWithInvalidDate);
        // tryParse returns null for invalid format
        expect(headline.publishedAt, isNull);
      });

      test('should handle null Source correctly', () {
        final jsonWithNullSource = Map<String, dynamic>.from(fullHeadlineJson)
          ..['source'] = null;
        final headline = Headline.fromJson(jsonWithNullSource);
        expect(headline.source, isNull);
      });

      test('should handle null Category correctly', () {
        final jsonWithNullCategory = Map<String, dynamic>.from(fullHeadlineJson)
          ..['category'] = null;
        final headline = Headline.fromJson(jsonWithNullCategory);
        expect(headline.category, isNull);
      });
    });

    group('toJson', () {
      test('should correctly serialize to full JSON', () {
        final json = fullHeadline.toJson();
        expect(json, equals(fullHeadlineJson));
      });

      test('should correctly serialize minimal headline to JSON', () {
        final json = minimalHeadline.toJson();
        // Check required fields and absence of optional null fields
        expect(json['id'], minimalHeadline.id);
        expect(json['title'], minimalHeadline.title);
        expect(json.containsKey('description'), isFalse);
        expect(json.containsKey('url'), isFalse);
        expect(json.containsKey('image_url'), isFalse);
        expect(json.containsKey('published_at'), isFalse);
        expect(json.containsKey('source'), isFalse);
        expect(json.containsKey('category'), isFalse);
      });
    });

    group('copyWith', () {
      test('should create a copy with updated values', () {
        const updatedTitle = 'Updated Title';
        const updatedUrl = 'http://example.com/updated';
        final copiedHeadline = fullHeadline.copyWith(
          title: updatedTitle,
          url: updatedUrl,
          action: defaultAction,
        );

        expect(copiedHeadline.id, fullHeadline.id); // ID should remain the same
        expect(copiedHeadline.title, updatedTitle);
        expect(copiedHeadline.description, fullHeadline.description);
        expect(copiedHeadline.url, updatedUrl);
        expect(copiedHeadline.imageUrl, fullHeadline.imageUrl);
        expect(copiedHeadline.publishedAt, fullHeadline.publishedAt);
        expect(copiedHeadline.source, fullHeadline.source);
        expect(copiedHeadline.category, fullHeadline.category);
        expect(copiedHeadline.action, fullHeadline.action);
      });

      test('should create an identical copy if no values are provided', () {
        final copiedHeadline = fullHeadline.copyWith();
        expect(copiedHeadline, equals(fullHeadline));
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final headline1 =
            Headline(id: '1', title: 'Title', action: defaultAction);
        final headline2 =
            Headline(id: '1', title: 'Title', action: defaultAction);
        expect(headline1, equals(headline2));
      });

      test('should not equate instances with different properties', () {
        final headline1 =
            Headline(id: '1', title: 'Title 1', action: defaultAction);
        final headline2 =
            Headline(id: '1', title: 'Title 2', action: defaultAction);
        final headline3 =
            Headline(id: '2', title: 'Title 1', action: defaultAction);
        expect(headline1, isNot(equals(headline2)));
        expect(headline1, isNot(equals(headline3)));
      });

      test('props list should contain all relevant fields', () {
        // This test implicitly checks if all fields used for
        // equality are in props
        expect(
          fullHeadline.props.length,
          10,
        ); // id, title, desc, url, imgUrl, pubAt, source, category, type, action
        expect(
          fullHeadline.props,
          containsAll([
            fullHeadline.id,
            fullHeadline.title,
            fullHeadline.description,
            fullHeadline.url,
            fullHeadline.imageUrl,
            fullHeadline.publishedAt,
            fullHeadline.source,
            fullHeadline.category,
            fullHeadline.type,
            fullHeadline.action,
          ]),
        );
      });
    });
  });
}
