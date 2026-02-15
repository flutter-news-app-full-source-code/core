import 'package:core/src/enums/media_asset_enums.dart';
import 'package:core/src/models/media/request_upload_url_request.dart';
import 'package:test/test.dart';

void main() {
  group('RequestUploadUrlRequest', () {
    const request = RequestUploadUrlRequest(
      fileName: 'test.jpg',
      contentType: 'image/jpeg',
      purpose: MediaAssetPurpose.headlineImage,
    );

    const requestJson = {
      'fileName': 'test.jpg',
      'contentType': 'image/jpeg',
      'purpose': 'headlineImage',
    };

    test('can be instantiated', () {
      expect(request, isNotNull);
    });

    test('supports value equality', () {
      expect(
        const RequestUploadUrlRequest(
          fileName: 'test.jpg',
          contentType: 'image/jpeg',
          purpose: MediaAssetPurpose.headlineImage,
        ),
        equals(request),
      );
    });

    test('props are correct', () {
      expect(
        request.props,
        equals(['test.jpg', 'image/jpeg', MediaAssetPurpose.headlineImage]),
      );
    });

    test('can be created from JSON', () {
      expect(RequestUploadUrlRequest.fromJson(requestJson), equals(request));
    });

    test('can be converted to JSON', () {
      expect(request.toJson(), equals(requestJson));
    });
  });
}
