import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('LocalAd', () {
    const testId = 'test-local-ad-id';
    const testTitle = 'Test Ad Title';
    const testSubtitle = 'Test Ad Subtitle';
    const testImageUrl = 'http://example.com/local_ad.jpg';
    const testTargetUrl = 'http://example.com/local_target';
    const testAdType = AdType.banner;

    LocalAd createSubject({
      String? id,
      String title = testTitle,
      String subtitle = testSubtitle,
      String imageUrl = testImageUrl,
      String targetUrl = testTargetUrl,
      AdType adType = testAdType,
    }) {
      return LocalAd(
        id: id ?? const Uuid().v4(),
        title: title,
        subtitle: subtitle,
        imageUrl: imageUrl,
        targetUrl: targetUrl,
        adType: adType,
      );
    }

    group('constructor', () {
      test('generates id when not provided', () {
        final localAd = createSubject();
        expect(localAd.id, isA<String>());
        expect(Uuid.isValidUUID(fromString: localAd.id), isTrue);
      });

      test('uses provided id', () {
        final localAd = createSubject(id: testId);
        expect(localAd.id, testId);
      });

      test('initializes all properties correctly', () {
        final localAd = createSubject();
        expect(localAd.title, testTitle);
        expect(localAd.subtitle, testSubtitle);
        expect(localAd.imageUrl, testImageUrl);
        expect(localAd.targetUrl, testTargetUrl);
        expect(localAd.adType, testAdType);
        expect(localAd.type, 'localAd');
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newTitle = 'New Title';
        const newAdType = AdType.video;

        final originalLocalAd = createSubject();
        final updatedLocalAd = originalLocalAd.copyWith(
          title: newTitle,
          adType: newAdType,
        );

        expect(updatedLocalAd.id, originalLocalAd.id);
        expect(updatedLocalAd.title, newTitle);
        expect(updatedLocalAd.subtitle, originalLocalAd.subtitle);
        expect(updatedLocalAd.imageUrl, originalLocalAd.imageUrl);
        expect(updatedLocalAd.targetUrl, originalLocalAd.targetUrl);
        expect(updatedLocalAd.adType, newAdType);
        expect(updatedLocalAd.type, originalLocalAd.type);
      });

      test('returns an identical copy if no updates provided', () {
        final originalLocalAd = createSubject();
        final copiedLocalAd = originalLocalAd.copyWith();
        expect(copiedLocalAd, originalLocalAd);
        expect(identical(copiedLocalAd, originalLocalAd), isFalse);
      });
    });

    group('toJson', () {
      test('serializes full LocalAd object to JSON', () {
        final localAd = createSubject();
        final json = localAd.toJson();

        expect(json, <String, dynamic>{
          'id': localAd.id,
          'title': testTitle,
          'subtitle': testSubtitle,
          'imageUrl': testImageUrl,
          'targetUrl': testTargetUrl,
          'adType': 'banner',
          'type': 'localAd',
        });
      });
    });

    group('fromJson', () {
      test('deserializes full JSON to LocalAd object', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': testTitle,
          'subtitle': testSubtitle,
          'imageUrl': testImageUrl,
          'targetUrl': testTargetUrl,
          'adType': 'banner',
          'type': 'localAd',
        };
        final localAd = LocalAd.fromJson(json);

        expect(localAd.id, testId);
        expect(localAd.title, testTitle);
        expect(localAd.subtitle, testSubtitle);
        expect(localAd.imageUrl, testImageUrl);
        expect(localAd.targetUrl, testTargetUrl);
        expect(localAd.adType, testAdType);
        expect(localAd.type, 'localAd');
      });

      test('deserializes JSON with unknown adType gracefully', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': testTitle,
          'subtitle': testSubtitle,
          'imageUrl': testImageUrl,
          'targetUrl': testTargetUrl,
          'adType': 'unknown_type',
          'type': 'localAd',
        };
        expect(
          () => LocalAd.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        final localAd1 = createSubject(id: '1');
        final localAd2 = createSubject(id: '1');
        expect(localAd1, localAd2);
      });

      test('instances with different properties are not equal', () {
        final localAd1 = createSubject(id: '1');
        final localAd2 = createSubject(id: '2');
        expect(localAd1, isNot(equals(localAd2)));
      });

      test('props list contains all relevant fields', () {
        final localAd = createSubject();
        expect(localAd.props, [
          localAd.id,
          localAd.title,
          localAd.subtitle,
          localAd.imageUrl,
          localAd.targetUrl,
          localAd.adType,
          localAd.type,
        ]);
      });
    });
  });
}
