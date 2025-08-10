import 'package:core/core.dart';
import 'package:core/src/fixtures/remote_configs.dart';
import 'package:test/test.dart';

void main() {
  group('RemoteConfig', () {
    final remoteConfigFixture = remoteConfigsFixturesData.first;

    group('constructor', () {
      test('returns correct instance', () {
        expect(remoteConfigFixture, isA<RemoteConfig>());
        expect(remoteConfigFixture.id, isA<String>());
        expect(
          remoteConfigFixture.userPreferenceConfig,
          isA<UserPreferenceConfig>(),
        );
        expect(remoteConfigFixture.adConfig, isA<AdConfig>());
        expect(
          remoteConfigFixture.feedDecoratorConfig,
          isA<Map<FeedDecoratorType, FeedDecoratorSettings>>(),
        );
        expect(remoteConfigFixture.appStatus, isA<AppStatus>());
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = remoteConfigFixture.toJson();
        final result = RemoteConfig.fromJson(json);
        expect(result, remoteConfigFixture);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = remoteConfigFixture.toJson();
        final fromJson = RemoteConfig.fromJson(json);
        expect(fromJson.toJson(), json);
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final updatedConfig = remoteConfigFixture.copyWith(
          id: 'new_app_config',
          appStatus: remoteConfigFixture.appStatus.copyWith(
            isUnderMaintenance: true,
          ),
        );

        expect(updatedConfig.id, 'new_app_config');
        expect(
          updatedConfig.userPreferenceConfig,
          remoteConfigFixture.userPreferenceConfig,
        ); // Unchanged
        expect(updatedConfig.appStatus.isUnderMaintenance, true);
        expect(updatedConfig, isNot(equals(remoteConfigFixture)));
      });

      test('returns the same instance if no changes are made', () {
        final updatedConfig = remoteConfigFixture.copyWith();
        expect(updatedConfig, equals(remoteConfigFixture));
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final config1 = remoteConfigFixture.copyWith();
        final config2 = remoteConfigFixture.copyWith();
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        final config1 = remoteConfigFixture.copyWith();
        final config2 = remoteConfigFixture.copyWith(id: 'different_id');
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
