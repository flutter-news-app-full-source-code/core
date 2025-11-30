import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AppReviewConfig', () {
    final appReviewConfigFixture =
        remoteConfigsFixturesData.first.features.community.appReview;
    final json = appReviewConfigFixture.toJson();

    test('can be instantiated', () {
      expect(appReviewConfigFixture, isA<AppReviewConfig>());
    });

    test('supports value equality', () {
      final anotherConfig =
          remoteConfigsFixturesData.first.features.community.appReview;
      expect(appReviewConfigFixture, equals(anotherConfig));
    });

    test('can be created from JSON', () {
      final fromJson = AppReviewConfig.fromJson(json);
      expect(fromJson, equals(appReviewConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = appReviewConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = appReviewConfigFixture.copyWith(
        positiveInteractionThreshold: 10,
      );

      expect(updatedConfig.positiveInteractionThreshold, 10);
      expect(updatedConfig, isNot(equals(appReviewConfigFixture)));
    });
  });
}
