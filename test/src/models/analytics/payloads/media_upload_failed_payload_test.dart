import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('MediaUploadFailedPayload', () {
    const payload = MediaUploadFailedPayload(
      purpose: MediaAssetPurpose.userProfilePhoto,
      fileName: 'avatar.png',
      failureReason: 'Network error',
    );

    test('supports value equality', () {
      expect(
        payload,
        equals(
          const MediaUploadFailedPayload(
            purpose: MediaAssetPurpose.userProfilePhoto,
            fileName: 'avatar.png',
            failureReason: 'Network error',
          ),
        ),
      );
    });

    test('toMap returns correct map', () {
      final map = payload.toMap();
      expect(map, {
        AnalyticsParameterKeys.purpose: 'userProfilePhoto',
        AnalyticsParameterKeys.fileName: 'avatar.png',
        AnalyticsParameterKeys.failureReason: 'Network error',
      });
    });
  });
}
