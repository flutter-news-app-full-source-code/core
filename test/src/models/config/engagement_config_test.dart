import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementConfig', () {
    final engagementConfigFixture =
        remoteConfigsFixturesData.first.features.community.engagement;
    final json = engagementConfigFixture.toJson();

    test('can be instantiated', () {
      expect(engagementConfigFixture, isA<EngagementConfig>());
    });

    test('supports value equality', () {
      final anotherConfig =
          remoteConfigsFixturesData.first.features.community.engagement;
      expect(engagementConfigFixture, equals(anotherConfig));
    });

    test('can be created from JSON', () {
      final fromJson = EngagementConfig.fromJson(json);
      expect(fromJson, equals(engagementConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = engagementConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = engagementConfigFixture.copyWith(
        enabled: false,
        engagementMode: EngagementMode.reactionsOnly,
      );

      expect(updatedConfig.enabled, isFalse);
      expect(updatedConfig.engagementMode, EngagementMode.reactionsOnly);
      expect(updatedConfig, isNot(equals(engagementConfigFixture)));
    });
  });
}