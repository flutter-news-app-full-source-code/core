import 'package:ht_shared/src/models/feed_decorators/ad.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('Ad', () {
    const testId = 'test-ad-id';
    const testImageUrl = 'http://example.com/ad.jpg';
    const testTargetUrl = 'http://example.com/target';
    const testAdType = AdType.banner;
    const testPlacement = AdPlacement.feedInlineStandardBanner;

    Ad createSubject({
      String? id,
      String imageUrl = testImageUrl,
      String targetUrl = testTargetUrl,
      AdType adType = testAdType,
      AdPlacement placement = testPlacement,
    }) {
      return Ad(
        id: id ?? const Uuid().v4(),
        imageUrl: imageUrl,
        targetUrl: targetUrl,
        adType: adType,
        placement: placement,
      );
    }

    group('constructor', () {
      test('generates id when not provided', () {
        final ad = createSubject();
        expect(ad.id, isA<String>());
        expect(Uuid.isValidUUID(fromString: ad.id), isTrue);
      });

      test('uses provided id', () {
        final ad = createSubject(id: testId);
        expect(ad.id, testId);
      });

      test('initializes all properties correctly', () {
        final ad = createSubject();
        expect(ad.imageUrl, testImageUrl);
        expect(ad.targetUrl, testTargetUrl);
        expect(ad.adType, testAdType);
        expect(ad.placement, testPlacement);
        expect(ad.type, 'ad');
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newImageUrl = 'http://new.com/ad.png';
        const newAdType = AdType.video;

        final originalAd = createSubject();
        final updatedAd = originalAd.copyWith(
          imageUrl: newImageUrl,
          adType: newAdType,
        );

        expect(updatedAd.id, originalAd.id);
        expect(updatedAd.imageUrl, newImageUrl);
        expect(updatedAd.targetUrl, originalAd.targetUrl);
        expect(updatedAd.adType, newAdType);
        expect(updatedAd.placement, originalAd.placement);
        expect(updatedAd.type, originalAd.type);
      });

      test('returns an identical copy if no updates provided', () {
        final originalAd = createSubject();
        final copiedAd = originalAd.copyWith();
        expect(copiedAd, originalAd);
        expect(identical(copiedAd, originalAd), isFalse);
      });
    });

    group('toJson', () {
      test('serializes full Ad object to JSON', () {
        final ad = createSubject();
        final json = ad.toJson();

        expect(json, <String, dynamic>{
          'id': ad.id,
          'image_url': testImageUrl,
          'target_url': testTargetUrl,
          'ad_type': 'banner',
          'placement': 'feed_inline_standard_banner',
          'type': 'ad',
        });
      });
    });

    group('fromJson', () {
      test('deserializes full JSON to Ad object', () {
        final json = <String, dynamic>{
          'id': testId,
          'image_url': testImageUrl,
          'target_url': testTargetUrl,
          'ad_type': 'banner',
          'placement': 'feed_inline_standard_banner',
          'type': 'ad',
        };
        final ad = Ad.fromJson(json);

        expect(ad.id, testId);
        expect(ad.imageUrl, testImageUrl);
        expect(ad.targetUrl, testTargetUrl);
        expect(ad.adType, testAdType);
        expect(ad.placement, testPlacement);
        expect(ad.type, 'ad');
      });

      test('deserializes JSON with unknown adType gracefully', () {
        final json = <String, dynamic>{
          'id': testId,
          'image_url': testImageUrl,
          'target_url': testTargetUrl,
          'ad_type': 'unknown_type',
          'type': 'ad',
        };
        expect(
          () => Ad.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        final ad1 = createSubject(id: '1');
        final ad2 = createSubject(id: '1');
        expect(ad1, ad2);
      });

      test('instances with different properties are not equal', () {
        final ad1 = createSubject(id: '1');
        final ad2 = createSubject(id: '2');
        expect(ad1, isNot(equals(ad2)));
      });

      test('props list contains all relevant fields', () {
        final ad = createSubject();
        expect(ad.props, [
          ad.id,
          ad.imageUrl,
          ad.targetUrl,
          ad.adType,
          ad.placement,
          ad.type,
        ]);
      });
    });
  });
}
