import 'dart:typed_data';

import 'package:core/src/models/media/request_upload_url_request.dart';
import 'package:core/src/models/media/request_upload_url_response.dart';

/// {@template media_client}
/// An abstract interface for clients that handle media operations, such as
/// requesting upload URLs and uploading files.
/// {@endtemplate}
abstract class MediaClient {
  /// Requests a pre-signed URL for uploading a file.
  Future<RequestUploadUrlResponse> requestUploadUrl(
    RequestUploadUrlRequest request,
  );

  /// Uploads a file to the specified [signedUrl].
  Future<void> uploadFile({
    required String signedUrl,
    required Uint8List fileBytes,
    required String contentType,
  });
}
