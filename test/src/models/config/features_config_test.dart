import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeaturesConfig', () {
    final featuresConfigFixture = remoteConfigsFixturesData.first.features;
    final json = featuresConfigFixture.toJson();

    test('can be instantiated', () {
      expect(featuresConfigFixture, isA<FeaturesConfig>());
    });

    test('supports value equality', () {
      final anotherConfig = remoteConfigsFixturesData.first.features;
      expect(featuresConfigFixture, equals(anotherConfig));
    });

    test('props are correct', () {
      expect(
        featuresConfigFixture.props,
        equals([
          featuresConfigFixture.ads,
          featuresConfigFixture.pushNotifications,
          featuresConfigFixture.feed,
          featuresConfigFixture.community,
        ]),
      );
    });

    test('can be created from JSON', () {
      final fromJson = FeaturesConfig.fromJson(json);
      expect(fromJson, equals(featuresConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = featuresConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = featuresConfigFixture.copyWith(
        ads: featuresConfigFixture.ads.copyWith(enabled: false),
      );

      expect(updatedConfig.ads.enabled, isFalse);
      expect(
        updatedConfig.pushNotifications,
        equals(featuresConfigFixture.pushNotifications),
      );
      expect(updatedConfig, isNot(equals(featuresConfigFixture)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        final copiedConfig = featuresConfigFixture.copyWith();
        expect(copiedConfig, equals(featuresConfigFixture));
      },
    );
  });
}
