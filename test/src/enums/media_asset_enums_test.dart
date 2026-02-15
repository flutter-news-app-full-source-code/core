import 'package:core/src/enums/media_asset_enums.dart';
import 'package:test/test.dart';

void main() {
  group('MediaAssetEntityType', () {
    test('has correct values', () {
      expect(MediaAssetEntityType.values, [
        MediaAssetEntityType.headline,
        MediaAssetEntityType.topic,
        MediaAssetEntityType.source,
      ]);
    });
  });

  group('MediaAssetPurpose', () {
    test('has correct values', () {
      expect(MediaAssetPurpose.values, [
        MediaAssetPurpose.userProfilePhoto,
        MediaAssetPurpose.headlineImage,
        MediaAssetPurpose.topicImage,
        MediaAssetPurpose.sourceImage,
      ]);
    });
  });

  group('MediaAssetStatus', () {
    test('has correct values', () {
      expect(MediaAssetStatus.values, [
        MediaAssetStatus.pendingUpload,
        MediaAssetStatus.completed,
        MediaAssetStatus.failed,
      ]);
    });
  });
}
