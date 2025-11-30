import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('CommunityConfig', () {
    final communityConfigFixture =
        remoteConfigsFixturesData.first.features.community;
    final json = communityConfigFixture.toJson();

    test('can be instantiated', () {
      expect(communityConfigFixture, isA<CommunityConfig>());
      expect(communityConfigFixture.enabled, isTrue);
    });

    test('supports value equality', () {
      final anotherConfig = remoteConfigsFixturesData.first.features.community;
      expect(communityConfigFixture, equals(anotherConfig));
    });

    test('can be created from JSON', () {
      final fromJson = CommunityConfig.fromJson(json);
      expect(fromJson, equals(communityConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = communityConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = communityConfigFixture.copyWith(enabled: false);

      expect(updatedConfig.enabled, isFalse);
      expect(updatedConfig, isNot(equals(communityConfigFixture)));
    });
  });
}
