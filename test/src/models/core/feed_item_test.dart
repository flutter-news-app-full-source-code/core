import 'package:core/core.dart';
import 'package:core/src/fixtures/fixtures.dart';
import 'package:test/test.dart';

void main() {
  group('FeedItem', () {
    final mockHeadline = headlinesFixturesData.first;
    final mockTopic = topicsFixturesData.first;
    final mockSource = sourcesFixturesData.first;
    final mockCountry = countriesFixturesData.first;

    const mockAd = Ad(
      id: 'ad-1',
      imageUrl: 'http://example.com/ad.jpg',
      targetUrl: 'http://example.com/ad-target',
      adType: AdType.banner,
      placement: AdPlacement.feedInlineStandardBanner,
    );

    const mockCallToAction = CallToActionItem(
      id: 'cta-1',
      decoratorType: FeedDecoratorType.linkAccount,
      title: 'Link Account',
      description: 'Link your account to save your progress.',
      callToActionText: 'Link Account',
      callToActionUrl: 'https://example.com/link-account',
    );

    group('fromJson', () {
      test('dispatches to Headline.fromJson', () {
        final json = mockHeadline.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<Headline>());
        expect(feedItem, equals(mockHeadline));
      });

      test('dispatches to Topic.fromJson', () {
        final json = mockTopic.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<Topic>());
        expect(feedItem, equals(mockTopic));
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

      test('dispatches to CallToAction.fromJson', () {
        final json = mockCallToAction.toJson();
        final feedItem = FeedItem.fromJson(json);
        expect(feedItem, isA<CallToActionItem>());
        expect(feedItem, equals(mockCallToAction));
      });

      test('throws FormatException if type is missing', () {
        final json = <String, dynamic>{'id': 'some-id'};
        expect(
          () => FeedItem.fromJson(json),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              'Missing "type" field in FeedItem JSON.',
            ),
          ),
        );
      });

      test('throws FormatException if type is unknown', () {
        final json = <String, dynamic>{'type': 'unknown_type'};
        expect(
          () => FeedItem.fromJson(json),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              'Unknown FeedItem type: unknown_type',
            ),
          ),
        );
      });
    });

    group('toJson', () {
      test('serializes Headline correctly', () {
        final json = mockHeadline.toJson();
        final deserialized = FeedItem.fromJson(json) as Headline;
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes Topic correctly', () {
        final json = mockTopic.toJson();
        final deserialized = FeedItem.fromJson(json) as Topic;
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes Source correctly', () {
        final json = mockSource.toJson();
        final deserialized = FeedItem.fromJson(json) as Source;
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes Country correctly', () {
        final json = mockCountry.toJson();
        final deserialized = FeedItem.fromJson(json) as Country;
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes Ad correctly', () {
        final json = mockAd.toJson();
        final deserialized = FeedItem.fromJson(json) as Ad;
        expect(deserialized.toJson(), equals(json));
      });

      test('serializes CallToAction correctly', () {
        final json = mockCallToAction.toJson();
        final deserialized = FeedItem.fromJson(json) as CallToActionItem;
        expect(deserialized.toJson(), equals(json));
      });
    });
  });
}
