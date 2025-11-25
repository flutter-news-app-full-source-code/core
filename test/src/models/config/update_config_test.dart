import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UpdateConfig', () {
    final updateConfigFixture = remoteConfigsFixturesData.first.app.update;
    final json = updateConfigFixture.toJson();

    test('can be instantiated', () {
      expect(updateConfigFixture, isA<UpdateConfig>());
    });

    test('supports value equality', () {
      final anotherConfig = remoteConfigsFixturesData.first.app.update;
      expect(updateConfigFixture, equals(anotherConfig));
    });

    test('props are correct', () {
      expect(
        updateConfigFixture.props,
        equals([
          updateConfigFixture.latestAppVersion,
          updateConfigFixture.isLatestVersionOnly,
          updateConfigFixture.iosUpdateUrl,
          updateConfigFixture.androidUpdateUrl,
        ]),
      );
    });

    test('can be created from JSON', () {
      final fromJson = UpdateConfig.fromJson(json);
      expect(fromJson, equals(updateConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = updateConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = updateConfigFixture.copyWith(
        latestAppVersion: '2.0.0',
        isLatestVersionOnly: true,
      );

      expect(updatedConfig.latestAppVersion, '2.0.0');
      expect(updatedConfig.isLatestVersionOnly, isTrue);
      expect(
        updatedConfig.iosUpdateUrl,
        equals(updateConfigFixture.iosUpdateUrl),
      );
      expect(updatedConfig, isNot(equals(updateConfigFixture)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        final copiedConfig = updateConfigFixture.copyWith();
        expect(copiedConfig, equals(updateConfigFixture));
      },
    );
  });
}
