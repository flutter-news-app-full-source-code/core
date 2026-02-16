import 'dart:typed_data';

import 'package:core/src/clients/media_client.dart';
import 'package:core/src/enums/media_asset_enums.dart';
import 'package:core/src/models/media/request_upload_url_request.dart';
import 'package:core/src/models/media/request_upload_url_response.dart';
import 'package:core/src/repositories/media_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockMediaClient extends Mock implements MediaClient {}

void main() {
  group('MediaRepository', () {
    late MediaClient mediaClient;
    late MediaRepository mediaRepository;

    setUp(() {
      mediaClient = MockMediaClient();
      mediaRepository = MediaRepository(mediaClient: mediaClient);
      registerFallbackValue(
        const RequestUploadUrlRequest(
          fileName: '',
          contentType: '',
          purpose: MediaAssetPurpose.headlineImage,
        ),
      );
      registerFallbackValue(Uint8List(0));
    });

    const fileName = 'test.png';
    final fileBytes = Uint8List.fromList([1, 2, 3]);
    const purpose = MediaAssetPurpose.headlineImage;
    const contentType = 'image/png';

    const request = RequestUploadUrlRequest(
      fileName: fileName,
      contentType: contentType,
      purpose: purpose,
    );

    const response = RequestUploadUrlResponse(
      url: 'https://example.com/upload',
      fields: {'key': 'value'},
      mediaAssetId: 'asset123',
    );

    test(
      'uploadFile orchestrates calls correctly and returns mediaAssetId',
      () async {
        // Arrange
        when(
          () => mediaClient.requestUploadUrl(any()),
        ).thenAnswer((_) async => response);
        when(
          () => mediaClient.uploadFileWithSignedPolicy(
            url: response.url,
            fields: response.fields,
            fileName: fileName,
            fileBytes: fileBytes,
            contentType: contentType,
          ),
        ).thenAnswer((_) async {});

        // Act
        final mediaAssetId = await mediaRepository.uploadFile(
          fileBytes: fileBytes,
          fileName: fileName,
          purpose: purpose,
        );

        // Assert
        expect(mediaAssetId, equals(response.mediaAssetId));
        verify(() => mediaClient.requestUploadUrl(request)).called(1);
        verify(
          () => mediaClient.uploadFileWithSignedPolicy(
            url: response.url,
            fields: response.fields,
            fileName: fileName,
            fileBytes: fileBytes,
            contentType: contentType,
          ),
        ).called(1);
      },
    );

    test(
      'uploadFile uses fallback content type when lookupMimeType returns null',
      () async {
        // Arrange
        const unknownFileName = 'test.unknown';
        const fallbackContentType = 'application/octet-stream';

        when(
          () => mediaClient.requestUploadUrl(any()),
        ).thenAnswer((_) async => response);
        when(
          () => mediaClient.uploadFileWithSignedPolicy(
            url: any(named: 'url'),
            fields: any(named: 'fields'),
            fileName: any(named: 'fileName'),
            fileBytes: any(named: 'fileBytes'),
            contentType: any(named: 'contentType'),
          ),
        ).thenAnswer((_) async {});

        // Act
        await mediaRepository.uploadFile(
          fileBytes: fileBytes,
          fileName: unknownFileName,
          purpose: purpose,
        );

        // Assert
        final captured = verify(
          () => mediaClient.requestUploadUrl(captureAny()),
        ).captured;
        expect(
          (captured.first as RequestUploadUrlRequest).contentType,
          fallbackContentType,
        );
        verify(
          () => mediaClient.uploadFileWithSignedPolicy(
            url: response.url,
            fields: response.fields,
            fileName: unknownFileName,
            fileBytes: fileBytes,
            contentType: fallbackContentType,
          ),
        ).called(1);
      },
    );
  });
}
