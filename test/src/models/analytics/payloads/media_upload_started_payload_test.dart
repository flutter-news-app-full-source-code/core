import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('MediaUploadStartedPayload', () {
    const payload = MediaUploadStartedPayload(
      purpose: MediaAssetPurpose.sourceImage,
      fileName: 'logo.svg',
      fileSize: 512,
    );

    test('supports value equality', () {
      expect(
        payload,
        equals(
          const MediaUploadStartedPayload(
            purpose: MediaAssetPurpose.sourceImage,
            fileName: 'logo.svg',
            fileSize: 512,
          ),
        ),
      );
    });

    test('toMap returns correct map', () {
      final map = payload.toMap();
      expect(map, {
        AnalyticsParameterKeys.purpose: 'sourceImage',
        AnalyticsParameterKeys.fileName: 'logo.svg',
        AnalyticsParameterKeys.fileSize: 512,
      });
    });
  });
}
