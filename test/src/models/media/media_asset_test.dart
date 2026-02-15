import 'package:core/src/enums/media_asset_enums.dart';
import 'package:core/src/models/media/media_asset.dart';
import 'package:test/test.dart';

void main() {
  group('MediaAsset', () {
    final now = DateTime.now();
    final mediaAsset = MediaAsset(
      id: 'id',
      userId: 'userId',
      purpose: MediaAssetPurpose.userProfilePhoto,
      status: MediaAssetStatus.completed,
      storagePath: 'storagePath',
      contentType: 'image/jpeg',
      publicUrl: 'publicUrl',
      createdAt: now,
      updatedAt: now,
      associatedEntityId: 'entityId',
      associatedEntityType: MediaAssetEntityType.headline,
    );

    final mediaAssetJson = {
      'id': 'id',
      'userId': 'userId',
      'purpose': 'userProfilePhoto',
      'status': 'completed',
      'storagePath': 'storagePath',
      'contentType': 'image/jpeg',
      'publicUrl': 'publicUrl',
      'createdAt': now.toIso8601String(),
      'updatedAt': now.toIso8601String(),
      'associatedEntityId': 'entityId',
      'associatedEntityType': 'headline',
    };

    test('can be instantiated', () {
      expect(mediaAsset, isNotNull);
    });

    test('supports value equality', () {
      expect(
        MediaAsset(
          id: 'id',
          userId: 'userId',
          purpose: MediaAssetPurpose.userProfilePhoto,
          status: MediaAssetStatus.completed,
          storagePath: 'storagePath',
          contentType: 'image/jpeg',
          publicUrl: 'publicUrl',
          createdAt: now,
          updatedAt: now,
          associatedEntityId: 'entityId',
          associatedEntityType: MediaAssetEntityType.headline,
        ),
        equals(mediaAsset),
      );
    });

    test('props are correct', () {
      expect(
        mediaAsset.props,
        equals([
          'id',
          'userId',
          MediaAssetPurpose.userProfilePhoto,
          MediaAssetStatus.completed,
          'storagePath',
          'image/jpeg',
          'publicUrl',
          now,
          now,
          'entityId',
          MediaAssetEntityType.headline,
        ]),
      );
    });

    test('can be created from JSON', () {
      expect(MediaAsset.fromJson(mediaAssetJson), equals(mediaAsset));
    });

    test('can be converted to JSON', () {
      expect(mediaAsset.toJson(), equals(mediaAssetJson));
    });

    test('copyWith creates a copy with updated values', () {
      final newDate = now.add(const Duration(days: 1));
      final copiedAsset = mediaAsset.copyWith(
        status: MediaAssetStatus.failed,
        updatedAt: newDate,
      );

      expect(copiedAsset.status, MediaAssetStatus.failed);
      expect(copiedAsset.updatedAt, newDate);
      expect(copiedAsset.id, mediaAsset.id);
    });
  });
}
