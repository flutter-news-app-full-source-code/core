import 'package:core/src/models/config/app_status.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('AppStatus', () {
    const appStatus = AppStatus(
      isUnderMaintenance: false,
      latestAppVersion: '1.0.0',
      isLatestVersionOnly: false,
      iosUpdateUrl: 'https://ios.example.com',
      androidUpdateUrl: 'https://android.example.com',
    );

    test('can be instantiated', () {
      expect(appStatus, isNotNull);
    });

    test('supports value equality', () {
      expect(
        const AppStatus(
          isUnderMaintenance: false,
          latestAppVersion: '1.0.0',
          isLatestVersionOnly: false,
          iosUpdateUrl: 'https://ios.example.com',
          androidUpdateUrl: 'https://android.example.com',
        ),
        equals(appStatus),
      );
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedAppStatus = appStatus.copyWith(
        isUnderMaintenance: true,
        latestAppVersion: '1.0.1',
      );

      expect(updatedAppStatus.isUnderMaintenance, isTrue);
      expect(updatedAppStatus.latestAppVersion, '1.0.1');
      expect(updatedAppStatus.isLatestVersionOnly, isFalse);
      expect(updatedAppStatus.iosUpdateUrl, 'https://ios.example.com');
      expect(updatedAppStatus.androidUpdateUrl, 'https://android.example.com');
      expect(updatedAppStatus, isNot(equals(appStatus)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedAppStatus = appStatus.copyWith();
      expect(updatedAppStatus, equals(appStatus));
    });

    group('fromJson', () {
      test('returns correct AppStatus object from valid JSON', () {
        final json = <String, dynamic>{
          'isUnderMaintenance': false,
          'latestAppVersion': '1.0.0',
          'isLatestVersionOnly': false,
          'iosUpdateUrl': 'https://ios.example.com',
          'androidUpdateUrl': 'https://android.example.com',
        };
        expect(AppStatus.fromJson(json), equals(appStatus));
      });

      test(
        'throws FormatException on invalid JSON (missing required field)',
        () {
          final json = <String, dynamic>{
            'isUnderMaintenance': false,
            'latestAppVersion': '1.0.0',
            // 'isLatestVersionOnly' is missing
            'iosUpdateUrl': 'https://ios.example.com',
            'androidUpdateUrl': 'https://android.example.com',
          };
          expect(
            () => AppStatus.fromJson(json),
            throwsA(isA<CheckedFromJsonException>()),
          );
        },
      );
    });

    group('toJson', () {
      test('returns correct JSON map from AppStatus object', () {
        final expectedJson = <String, dynamic>{
          'isUnderMaintenance': false,
          'latestAppVersion': '1.0.0',
          'isLatestVersionOnly': false,
          'iosUpdateUrl': 'https://ios.example.com',
          'androidUpdateUrl': 'https://android.example.com',
        };
        expect(appStatus.toJson(), equals(expectedJson));
      });
    });
  });
}
