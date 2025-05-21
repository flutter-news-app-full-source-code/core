import 'package:ht_shared/src/models/content_type.dart';
import 'package:ht_shared/src/models/feed/ad.dart';
import 'package:ht_shared/src/models/feed/ad_placement.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('Ad', () {
    const testId = 'test-ad-id';
    const testImageUrl = 'http://example.com/ad.jpg';
    const testTargetUrl = 'http://example.com/target';
    const testAdType = AdType.banner;
    const testPlacement = AdPlacement.feedInlineStandardBanner;
    final defaultAction = OpenExternalUrl(url: 'http://default.com');

    Ad createSubject({
      required FeedItemAction action, String? id,
      String imageUrl = testImageUrl,
      String targetUrl = testTargetUrl,
      AdType adType = testAdType,
      AdPlacement? placement = testPlacement,
    }) {
      return Ad(
        id: id,
        imageUrl: imageUrl,
        targetUrl: targetUrl,
        adType: adType,
        placement: placement,
        action: action,
      );
    }

    group('constructor', () {
      test('generates id when not provided', () {
        final ad = createSubject(action: defaultAction);
        expect(ad.id, isA<String>());
        expect(Uuid.isValidUUID(fromString: ad.id), isTrue);
      });

      test('uses provided id', () {
        final ad = createSubject(id: testId, action: defaultAction);
        expect(ad.id, testId);
      });

      test('initializes all properties correctly', () {
        final ad = createSubject(action: defaultAction);
        expect(ad.imageUrl, testImageUrl);
        expect(ad.targetUrl, testTargetUrl);
        expect(ad.adType, testAdType);
        expect(ad.placement, testPlacement);
        expect(ad.action, defaultAction);
        expect(ad.type, 'ad');
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newImageUrl = 'http://new.com/ad.png';
        const newAdType = AdType.video;
        final newAction = OpenInternalContent(
          contentId: 'new-content',
          contentType: ContentType.headline,
        );

        final originalAd = createSubject(action: defaultAction);
        final updatedAd = originalAd.copyWith(
          imageUrl: newImageUrl,
          adType: newAdType,
          action: newAction,
        );

        expect(updatedAd.id, originalAd.id);
        expect(updatedAd.imageUrl, newImageUrl);
        expect(updatedAd.targetUrl, originalAd.targetUrl);
        expect(updatedAd.adType, newAdType);
        expect(updatedAd.placement, originalAd.placement);
        expect(updatedAd.action, newAction);
        expect(updatedAd.type, originalAd.type);
      });

      test('returns an identical copy if no updates provided', () {
        final originalAd = createSubject(action: defaultAction);
        final copiedAd = originalAd.copyWith();
        expect(copiedAd, originalAd);
        expect(identical(copiedAd, originalAd), isFalse);
      });
    });

    group('toJson', () {
      test('serializes full Ad object to JSON', () {
        final ad = createSubject(action: defaultAction);
        final json = ad.toJson();

        expect(json, <String, dynamic>{
          'id': ad.id,
          'imageUrl': testImageUrl,
          'targetUrl': testTargetUrl,
          'adType': testAdType.name,
          'placement': testPlacement.name,
          'type': 'ad',
          'action': defaultAction.toJson(),
        });
      });

      test('omits null optional fields from JSON', () {
        final ad = createSubject(placement: null, action: defaultAction);
        final json = ad.toJson();

        expect(json.containsKey('placement'), isFalse);
      });
    });

    group('fromJson', () {
      test('deserializes full JSON to Ad object', () {
        final json = <String, dynamic>{
          'id': testId,
          'imageUrl': testImageUrl,
          'targetUrl': testTargetUrl,
          'adType': testAdType.name,
          'placement': testPlacement.name,
          'type': 'ad',
          'action': defaultAction.toJson(),
        };
        final ad = Ad.fromJson(json);

        expect(ad.id, testId);
        expect(ad.imageUrl, testImageUrl);
        expect(ad.targetUrl, testTargetUrl);
        expect(ad.adType, testAdType);
        expect(ad.placement, testPlacement);
        expect(ad.action, defaultAction);
        expect(ad.type, 'ad');
      });

      test('deserializes JSON with missing optional fields', () {
        final json = <String, dynamic>{
          'id': testId,
          'imageUrl': testImageUrl,
          'targetUrl': testTargetUrl,
          'adType': testAdType.name,
          'type': 'ad',
          'action': defaultAction.toJson(),
        };
        final ad = Ad.fromJson(json);

        expect(ad.placement, isNull);
      });

      test('deserializes JSON with unknown adType gracefully', () {
        final json = <String, dynamic>{
          'id': testId,
          'imageUrl': testImageUrl,
          'targetUrl': testTargetUrl,
          'adType': 'unknown_type',
          'type': 'ad',
          'action': defaultAction.toJson(),
        };
        final ad = Ad.fromJson(json);
        expect(ad.adType, isNull); // Should be null for unknown enum value
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        final ad1 = createSubject(id: '1', action: defaultAction);
        final ad2 = createSubject(id: '1', action: defaultAction);
        expect(ad1, ad2);
      });

      test('instances with different properties are not equal', () {
        final ad1 = createSubject(id: '1', action: defaultAction);
        final ad2 = createSubject(id: '2', action: defaultAction);
        expect(ad1, isNot(equals(ad2)));
      });

      test('props list contains all relevant fields', () {
        final ad = createSubject(action: defaultAction);
        expect(ad.props, [
          ad.id,
          ad.imageUrl,
          ad.targetUrl,
          ad.adType,
          ad.placement,
          ad.type,
          ad.action,
        ]);
      });
    });
  });
}
