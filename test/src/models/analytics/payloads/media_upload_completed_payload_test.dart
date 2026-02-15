import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('MediaUploadCompletedPayload', () {
    const payload = MediaUploadCompletedPayload(
      purpose: MediaAssetPurpose.headlineImage,
      fileName: 'test.jpg',
      fileSize: 1024,
      mediaAssetId: 'media-asset-123',
      uploadDurationSeconds: 5.5,
    );

    test('supports value equality', () {
      expect(
        payload,
        equals(
          const MediaUploadCompletedPayload(
            purpose: MediaAssetPurpose.headlineImage,
            fileName: 'test.jpg',
            fileSize: 1024,
            mediaAssetId: 'media-asset-123',
            uploadDurationSeconds: 5.5,
          ),
        ),
      );
    });

    test('toMap returns correct map', () {
      final map = payload.toMap();
      expect(map, {
        AnalyticsParameterKeys.purpose: 'headlineImage',
        AnalyticsParameterKeys.fileName: 'test.jpg',
        AnalyticsParameterKeys.fileSize: 1024,
        AnalyticsParameterKeys.mediaAssetId: 'media-asset-123',
        AnalyticsParameterKeys.uploadDurationSeconds: 5.5,
      });
    });
  });
}
