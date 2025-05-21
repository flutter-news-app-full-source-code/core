import 'package:ht_shared/ht_shared.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:test/test.dart';

void main() {
  group('FeedItem', () {
    const defaultAction = OpenExternalUrl(url: 'http://default.com');

    final mockCountry = Country(
      id: 'country-1',
      isoCode: 'US',
      name: 'United States',
      flagUrl: 'http://example.com/us.png',
      action: defaultAction,
    );
    final mockSource = Source(
      id: 'source-1',
      name: 'Example News',
      url: 'http://example.com',
      sourceType: SourceType.newsAgency,
      action: defaultAction,
    );
    final mockCategory = Category(
      id: 'category-1',
      name: 'Technology',
      action: defaultAction,
    );
    final mockHeadline = Headline(
      id: 'headline-1',
      title: 'Example Headline',
      url: 'http://example.com/headline',
      publishedAt: DateTime.utc(2023),
      action: defaultAction,
    );
    final mockAd = Ad(
      id: 'ad-1',
      imageUrl: 'http://example.com/ad.jpg',
      targetUrl: 'http://example.com/ad-target',
      adType: AdType.banner,
      placement: AdPlacement.feedInlineStandardBanner,
      action: defaultAction,
    );
    final mockSuggestedContent = SuggestedContent(
      id: 'suggested-1',
      title: 'Suggested for you',
      displayType: SuggestedContentDisplayType.horizontalCardList,
      items: [mockHeadline, mockCategory],
      action: defaultAction,
    );
    final mockEngagementContent = EngagementContent(
      id: 'engagement-1',
      title: 'Sign Up Now',
      engagementContentType: EngagementContentType.signUp,
      action: defaultAction,
    );

    group('fromJson', () {
      test('dispatches to Headline.fromJson', () {
        final json = mockHeadline.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<Headline>());
        expect(feedItem, equals(mockHeadline));
      });

      test('dispatches to Category.fromJson', () {
        final json = mockCategory.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<Category>());
        expect(feedItem, equals(mockCategory));
      });

      test('dispatches to Source.fromJson', () {
        final json = mockSource.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<Source>());
        expect(feedItem, equals(mockSource));
      });

      test('dispatches to Country.fromJson', () {
        final json = mockCountry.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<Country>());
        expect(feedItem, equals(mockCountry));
      });

      test('dispatches to Ad.fromJson', () {
        final json = mockAd.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<Ad>());
        expect(feedItem, equals(mockAd));
      });

      test('dispatches to SuggestedContent.fromJson', () {
        final json = mockSuggestedContent.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<SuggestedContent>());
        expect(feedItem, equals(mockSuggestedContent));
      });

      test('dispatches to EngagementContent.fromJson', () {
        final json = mockEngagementContent.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<EngagementContent>());
        expect(feedItem, equals(mockEngagementContent));
      });

      test('throws FormatException if type is missing', () {
        final json = <String, dynamic>{'id': 'some-id'};
        expect(
          () => FeedItem.fromJson(json),
          throwsA(isA<FormatException>().having(
            (e) => e.message,
            'message',
            'Missing "type" field in FeedItem JSON.',
          ),),
        );
      });

      test('throws FormatException if type is unknown', () {
        final json = <String, dynamic>{'type': 'unknown_type'};
        expect(
          () => FeedItem.fromJson(json),
          throwsA(isA<FormatException>().having(
            (e) => e.message,
            'message',
            'Unknown FeedItem type: unknown_type',
          ),),
        );
      });
    });

    group('toJson', () {
      test('serializes Headline correctly', () {
        final json = mockHeadline.toJson();
        final deserialized = FeedItem.fromJson(json);
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes Category correctly', () {
        final json = mockCategory.toJson();
        final deserialized = FeedItem.fromJson(json);
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes Source correctly', () {
        final json = mockSource.toJson();
        final deserialized = FeedItem.fromJson(json);
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes Country correctly', () {
        final json = mockCountry.toJson();
        final deserialized = FeedItem.fromJson(json);
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes Ad correctly', () {
        final json = mockAd.toJson();
        final deserialized = FeedItem.fromJson(json);
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes SuggestedContent correctly', () {
        final json = mockSuggestedContent.toJson();
        final deserialized = FeedItem.fromJson(json);
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes EngagementContent correctly', () {
        final json = mockEngagementContent.toJson();
        final deserialized = FeedItem.fromJson(json);
        expect(deserialized.toJson(), equals(json));
      });
    });
  });
}
