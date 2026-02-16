import 'package:core/src/models/media/request_upload_url_response.dart';
import 'package:test/test.dart';

void main() {
  group('RequestUploadUrlResponse', () {
    const fields = {'key': 'value'};
    const response = RequestUploadUrlResponse(
      url: 'https://example.com/upload',
      fields: fields,
      mediaAssetId: 'asset123',
    );

    const responseJson = {
      'url': 'https://example.com/upload',
      'fields': fields,
      'mediaAssetId': 'asset123',
    };

    test('can be instantiated', () {
      expect(response, isNotNull);
    });

    test('supports value equality', () {
      expect(
        const RequestUploadUrlResponse(
          url: 'https://example.com/upload',
          fields: fields,
          mediaAssetId: 'asset123',
        ),
        equals(response),
      );
    });

    test('props are correct', () {
      expect(
        response.props,
        equals(['https://example.com/upload', fields, 'asset123']),
      );
    });

    test('can be created from JSON', () {
      expect(RequestUploadUrlResponse.fromJson(responseJson), equals(response));
    });

    test('can be converted to JSON', () {
      expect(response.toJson(), equals(responseJson));
    });
  });
}
