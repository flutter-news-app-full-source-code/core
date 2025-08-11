import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('AppStatus', () {
    // Derive the test subject from the main remote config fixture.
    final appStatusFixture = remoteConfigsFixturesData.first.appStatus;

    test('can be instantiated', () {
      expect(appStatusFixture, isNotNull);
    });

    test('supports value equality', () {
      final status1 = appStatusFixture.copyWith();
      final status2 = appStatusFixture.copyWith();
      expect(status1, equals(status2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedAppStatus = appStatusFixture.copyWith(
        isUnderMaintenance: true,
        latestAppVersion: '1.0.1',
      );

      expect(updatedAppStatus.isUnderMaintenance, isTrue);
      expect(updatedAppStatus.latestAppVersion, '1.0.1');
      expect(
        updatedAppStatus.isLatestVersionOnly,
        appStatusFixture.isLatestVersionOnly,
      );
      expect(updatedAppStatus.iosUpdateUrl, appStatusFixture.iosUpdateUrl);
      expect(
        updatedAppStatus.androidUpdateUrl,
        appStatusFixture.androidUpdateUrl,
      );
      expect(updatedAppStatus, isNot(equals(appStatusFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedAppStatus = appStatusFixture.copyWith();
      expect(updatedAppStatus, equals(appStatusFixture));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = appStatusFixture.toJson();
        final result = AppStatus.fromJson(json);
        expect(result, equals(appStatusFixture));
      });

      test(
        'throws FormatException on invalid JSON (missing required field)',
        () {
          final json = appStatusFixture.toJson()..remove('isLatestVersionOnly');
          expect(
            () => AppStatus.fromJson(json),
            throwsA(isA<CheckedFromJsonException>()),
          );
        },
      );
    });
  });
}
