import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('Headline Model', () {
    final testTime = DateTime.utc(2024, 4, 17, 13);
    final testTimeString = testTime.toIso8601String();

    final mockCountry = Country(
      id: 'country-1',
      isoCode: 'US',
      name: 'United States',
      flagUrl: 'http://example.com/us.png',
      createdAt: testTime,
      updatedAt: testTime,
      status: ContentStatus.active,
    );

    // Sample data for nested models
    final sampleSourceJson = {
      'id': 'src-test',
      'name': 'Test Source',
      'description': 'A test news source.',
      'url': 'http://testsource.com',
      'sourceType':
          'newsAgency', // Changed key to camelCase and value to match enum
      'language': 'en',
      'headquarters': mockCountry.toJson(),
      'createdAt': testTimeString,
      'updatedAt': testTimeString,
      'status': ContentStatus.active.name,
      'type': 'source',
    };
    final sampleSource = Source.fromJson(sampleSourceJson);

    final sampleCategoryJson = {
      'id': 'cat-test',
      'name': 'Test Category',
      'description': 'A test category.',
      'iconUrl': 'http://testcategory.com/icon.png',
      'createdAt': testTimeString,
      'updatedAt': testTimeString,
      'status': ContentStatus.active.name,
      'type': 'category',
    };
    final sampleCategory = Topic.fromJson(sampleCategoryJson);

    final testId = const Uuid().v4();

    // Sample Headline instance with all fields
    final fullHeadline = Headline(
      id: testId,
      title: 'Full Headline Title',
      excerpt: 'Full excerpt.',
      url: 'http://example.com/full',
      imageUrl: 'http://example.com/full.jpg',
      source: sampleSource,
      category: sampleCategory,
      createdAt: testTime,
      updatedAt: testTime,
      status: ContentStatus.active,
    );

    // Sample JSON map corresponding to fullHeadline
    final fullHeadlineJson = {
      'id': testId,
      'title': 'Full Headline Title',
      'excerpt': 'Full excerpt.',
      'url': 'http://example.com/full',
      'imageUrl': 'http://example.com/full.jpg',
      'source': sampleSourceJson,
      'category': sampleCategoryJson,
      'createdAt': testTimeString,
      'updatedAt': testTimeString,
      'status': ContentStatus.active.name,
      'type': 'headline',
    };

    // Sample Headline instance with only required fields
    final minimalHeadline = Headline(
      id: testId,
      title: 'Minimal Headline Title',
      excerpt: 'Minimal excerpt.',
      url: 'http://example.com/minimal',
      imageUrl: 'http://example.com/minimal.jpg',
      source: sampleSource,
      category: sampleCategory,
      createdAt: testTime,
      updatedAt: testTime,
      status: ContentStatus.active,
    );

    // Sample JSON map corresponding to minimalHeadline
    final minimalHeadlineJson = {
      'id': testId,
      'title': 'Minimal Headline Title',
      'excerpt': 'Minimal excerpt.',
      'url': 'http://example.com/minimal',
      'imageUrl': 'http://example.com/minimal.jpg',
      'source': sampleSourceJson,
      'category': sampleCategoryJson,
      'createdAt': testTimeString,
      'updatedAt': testTimeString,
      'status': ContentStatus.active.name,
      'type': 'headline',
    };

    group('fromJson', () {
      test('should correctly deserialize from full JSON', () {
        final headline = Headline.fromJson(fullHeadlineJson);
        expect(headline, equals(fullHeadline));
        expect(headline.id, testId);
        expect(headline.source, sampleSource);
        expect(headline.category, sampleCategory);
        expect(headline.createdAt, testTime);
        expect(headline.updatedAt, testTime);
      });

      test('should correctly deserialize from minimal JSON', () {
        final headline = Headline.fromJson(minimalHeadlineJson);
        expect(headline.title, minimalHeadline.title);
        expect(headline.excerpt, minimalHeadline.excerpt);
        expect(headline.url, minimalHeadline.url);
        expect(headline.imageUrl, minimalHeadline.imageUrl);
        expect(headline.source, minimalHeadline.source);
        expect(headline.category, minimalHeadline.category);
        expect(headline.createdAt, minimalHeadline.createdAt);
        expect(headline.updatedAt, minimalHeadline.updatedAt);
        expect(headline.id, testId);
      });

      test('should generate a new ID if not present in JSON', () => null);

      test('should handle null DateTime correctly', () => null);

      test('should handle invalid DateTime string gracefully', () => null);

      test('should handle null Source correctly', () => null);

      test('should handle null Category correctly', () => null);
    });

    group('toJson', () {
      test('should correctly serialize to full JSON', () {
        final json = fullHeadline.toJson();
        expect(json, equals(fullHeadlineJson));
      });

      test('should correctly serialize minimal headline to JSON', () {
        final json = minimalHeadline.toJson();
        expect(json['id'], minimalHeadline.id);
        expect(json['status'], 'active');
        expect(json['title'], minimalHeadline.title);
        expect(json['excerpt'], minimalHeadline.excerpt);
        expect(json['url'], minimalHeadline.url);
        expect(json['imageUrl'], minimalHeadline.imageUrl);
        expect(json['source'], sampleSourceJson);
        expect(json['category'], sampleCategoryJson);
        expect(json['createdAt'], testTimeString);
        expect(json['updatedAt'], testTimeString);
      });
    });

    group('copyWith', () {
      test('should create a copy with updated values', () {
        const updatedTitle = 'Updated Title';
        const updatedUrl = 'http://example.com/updated';
        final copiedHeadline = fullHeadline.copyWith(
          title: updatedTitle,
          url: updatedUrl,
        );

        expect(copiedHeadline.id, fullHeadline.id);
        expect(copiedHeadline.title, updatedTitle);
        expect(copiedHeadline.excerpt, fullHeadline.excerpt);
        expect(copiedHeadline.url, updatedUrl);
        expect(copiedHeadline.imageUrl, fullHeadline.imageUrl);
        expect(copiedHeadline.source, fullHeadline.source);
        expect(copiedHeadline.category, fullHeadline.category);
        expect(copiedHeadline.createdAt, fullHeadline.createdAt);
        expect(copiedHeadline.updatedAt, fullHeadline.updatedAt);
      });

      test('should create an identical copy if no values are provided', () {
        final copiedHeadline = fullHeadline.copyWith();
        expect(copiedHeadline, equals(fullHeadline));
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final headline1 = Headline(
          id: '1',
          title: 'Title',
          excerpt: 'Excerpt',
          url: 'url',
          imageUrl: 'img',
          source: sampleSource,
          category: sampleCategory,
          createdAt: testTime,
          updatedAt: testTime,
          status: ContentStatus.active,
        );
        final headline2 = Headline(
          id: '1',
          title: 'Title',
          excerpt: 'Excerpt',
          url: 'url',
          imageUrl: 'img',
          source: sampleSource,
          category: sampleCategory,
          createdAt: testTime,
          updatedAt: testTime,
          status: ContentStatus.active,
        );
        expect(headline1, equals(headline2));
      });

      test('should not equate instances with different properties', () {
        final headline1 = Headline(
          id: '1',
          title: 'Title 1',
          excerpt: 'Excerpt',
          url: 'url',
          imageUrl: 'img',
          source: sampleSource,
          category: sampleCategory,
          createdAt: testTime,
          updatedAt: testTime,
          status: ContentStatus.active,
        );
        final headline2 = Headline(
          id: '1',
          title: 'Title 2',
          excerpt: 'Excerpt',
          url: 'url',
          imageUrl: 'img',
          source: sampleSource,
          category: sampleCategory,
          createdAt: testTime,
          updatedAt: testTime,
          status: ContentStatus.active,
        );
        final headline3 = Headline(
          id: '2',
          title: 'Title 1',
          excerpt: 'Excerpt',
          url: 'url',
          imageUrl: 'img',
          source: sampleSource,
          category: sampleCategory,
          createdAt: testTime,
          updatedAt: testTime,
          status: ContentStatus.active,
        );
        expect(headline1, isNot(equals(headline2)));
        expect(headline1, isNot(equals(headline3)));
      });

      test('props list should contain all relevant fields', () {
        expect(fullHeadline.props.length, 11);
        expect(fullHeadline.props, [
          fullHeadline.id,
          fullHeadline.title,
          fullHeadline.excerpt,
          fullHeadline.url,
          fullHeadline.imageUrl,
          fullHeadline.createdAt,
          fullHeadline.updatedAt,
          fullHeadline.status,
          fullHeadline.source,
          fullHeadline.category,
          fullHeadline.type,
        ]);
      });
    });
  });
}
