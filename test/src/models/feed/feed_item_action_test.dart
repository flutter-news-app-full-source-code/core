import 'package:ht_shared/src/models/content_type.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:ht_shared/src/utils/json_converters.dart';
import 'package:test/test.dart';

void main() {
  group('FeedItemAction', () {
    group('OpenInternalContent', () {
      const contentId = 'test-content-id';
      const contentType = ContentType.headline;
      final openInternalContent = OpenInternalContent(
        contentId: contentId,
        contentType: contentType,
      );

      test('supports value equality', () {
        expect(
          openInternalContent,
          equals(
            OpenInternalContent(
              contentId: contentId,
              contentType: contentType,
            ),
          ),
        );
        expect(
          openInternalContent,
          isNot(
            equals(
              OpenInternalContent(
                contentId: 'other-id',
                contentType: contentType,
              ),
            ),
          ),
        );
        expect(
          openInternalContent,
          isNot(
            equals(
              OpenInternalContent(
                contentId: contentId,
                contentType: ContentType.category,
              ),
            ),
          ),
        );
      });

      test('toJson returns correct JSON map', () {
        final json = openInternalContent.toJson();
        expect(json, <String, dynamic>{
          'contentId': contentId,
          'contentType': contentType.name,
          'type': 'open_internal_content',
        });
      });

      test('fromJson returns correct OpenInternalContent object', () {
        final json = <String, dynamic>{
          'contentId': contentId,
          'contentType': contentType.name,
          'type': 'open_internal_content',
        };
        final fromJsonResult = OpenInternalContent.fromJson(json);
        expect(fromJsonResult, equals(openInternalContent));
      });
    });

    group('ShowInterstitialThenOpenInternalContent', () {
      const contentId = 'test-content-id';
      const contentType = ContentType.headline;
      final showInterstitialThenOpenInternalContent =
          ShowInterstitialThenOpenInternalContent(
        contentId: contentId,
        contentType: contentType,
      );

      test('supports value equality', () {
        expect(
          showInterstitialThenOpenInternalContent,
          equals(
            ShowInterstitialThenOpenInternalContent(
              contentId: contentId,
              contentType: contentType,
            ),
          ),
        );
        expect(
          showInterstitialThenOpenInternalContent,
          isNot(
            equals(
              ShowInterstitialThenOpenInternalContent(
                contentId: 'other-id',
                contentType: contentType,
              ),
            ),
          ),
        );
        expect(
          showInterstitialThenOpenInternalContent,
          isNot(
            equals(
              ShowInterstitialThenOpenInternalContent(
                contentId: contentId,
                contentType: ContentType.category,
              ),
            ),
          ),
        );
      });

      test('toJson returns correct JSON map', () {
        final json = showInterstitialThenOpenInternalContent.toJson();
        expect(json, <String, dynamic>{
          'contentId': contentId,
          'contentType': contentType.name,
          'type': 'show_interstitial_then_open_internal_content',
        });
      });

      test(
          'fromJson returns correct ShowInterstitialThenOpenInternalContent '
          'object', () {
        final json = <String, dynamic>{
          'contentId': contentId,
          'contentType': contentType.name,
          'type': 'show_interstitial_then_open_internal_content',
        };
        final fromJsonResult =
            ShowInterstitialThenOpenInternalContent.fromJson(json);
        expect(fromJsonResult, equals(showInterstitialThenOpenInternalContent));
      });
    });

    group('OpenExternalUrl', () {
      const url = 'https://example.com';
      final openExternalUrl = OpenExternalUrl(url: url);

      test('supports value equality', () {
        expect(
          openExternalUrl,
          equals(OpenExternalUrl(url: url)),
        );
        expect(
          openExternalUrl,
          isNot(equals(OpenExternalUrl(url: 'https://other.com'))),
        );
      });

      test('toJson returns correct JSON map', () {
        final json = openExternalUrl.toJson();
        expect(json, <String, dynamic>{
          'url': url,
          'type': 'open_external_url',
        });
      });

      test('fromJson returns correct OpenExternalUrl object', () {
        final json = <String, dynamic>{
          'url': url,
          'type': 'open_external_url',
        };
        final fromJsonResult = OpenExternalUrl.fromJson(json);
        expect(fromJsonResult, equals(openExternalUrl));
      });
    });

    group('feedItemActionFromJson', () {
      test('dispatches to OpenInternalContent', () {
        final json = <String, dynamic>{
          'contentId': 'id1',
          'contentType': 'headline',
          'type': 'open_internal_content',
        };
        final action = feedItemActionFromJson(json);
        expect(action, isA<OpenInternalContent>());
        expect((action as OpenInternalContent).contentId, 'id1');
        expect(action.contentType, ContentType.headline);
      });

      test('dispatches to ShowInterstitialThenOpenInternalContent', () {
        final json = <String, dynamic>{
          'contentId': 'id2',
          'contentType': 'category',
          'type': 'show_interstitial_then_open_internal_content',
        };
        final action = feedItemActionFromJson(json);
        expect(action, isA<ShowInterstitialThenOpenInternalContent>());
        expect(
          (action as ShowInterstitialThenOpenInternalContent).contentId,
          'id2',
        );
        expect(action.contentType, ContentType.category);
      });

      test('dispatches to OpenExternalUrl', () {
        final json = <String, dynamic>{
          'url': 'https://test.com',
          'type': 'open_external_url',
        };
        final action = feedItemActionFromJson(json);
        expect(action, isA<OpenExternalUrl>());
        expect((action as OpenExternalUrl).url, 'https://test.com');
      });

      test('throws FormatException if type is missing', () {
        final json = <String, dynamic>{'contentId': 'id1'};
        expect(
          () => feedItemActionFromJson(json),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              'Missing "type" field in FeedItemAction JSON.',
            ),
          ),
        );
      });

      test('throws FormatException if type is unknown', () {
        final json = <String, dynamic>{'type': 'unknown_type'};
        expect(
          () => feedItemActionFromJson(json),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              'Unknown FeedItemAction type: unknown_type',
            ),
          ),
        );
      });
    });

    group('feedItemActionToJson', () {
      test('serializes OpenInternalContent correctly', () {
        final action = OpenInternalContent(
          contentId: 'id1',
          contentType: ContentType.headline,
        );
        final json = feedItemActionToJson(action);
        expect(json, <String, dynamic>{
          'contentId': 'id1',
          'contentType': 'headline',
          'type': 'open_internal_content',
        });
      });

      test('serializes ShowInterstitialThenOpenInternalContent correctly', () {
        final action = ShowInterstitialThenOpenInternalContent(
          contentId: 'id2',
          contentType: ContentType.category,
        );
        final json = feedItemActionToJson(action);
        expect(json, <String, dynamic>{
          'contentId': 'id2',
          'contentType': 'category',
          'type': 'show_interstitial_then_open_internal_content',
        });
      });

      test('serializes OpenExternalUrl correctly', () {
        final action = OpenExternalUrl(url: 'https://test.com');
        final json = feedItemActionToJson(action);
        expect(json, <String, dynamic>{
          'url': 'https://test.com',
          'type': 'open_external_url',
        });
      });
    });
  });
}
