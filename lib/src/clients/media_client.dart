import 'dart:typed_data';

import 'package:core/src/models/media/request_upload_url_request.dart';
import 'package:core/src/models/media/request_upload_url_response.dart';

/// {@template media_client}
/// An abstract interface for clients that handle media operations.
///
/// This contract defines the necessary methods for a two-stage file upload
/// process, common in cloud storage solutions like GCS or S3. The
/// implementation of these methods is delegated to platform-specific clients
/// (e.g., `MobileMediaClient` or `WebDashboardMediaClient`), which will handle
/// the actual HTTP requests.
/// {@endtemplate}
abstract class MediaClient {
  /// Requests a pre-signed URL and form data for uploading a file.
  ///
  /// This corresponds to the first stage of the upload process, where the
  /// client asks the backend for permission to upload a file.
  Future<RequestUploadUrlResponse> requestUploadUrl(
    RequestUploadUrlRequest request,
  );

  /// Uploads a file to the specified URL using a multipart/form-data request.
  ///
  /// This is the second stage, where the client uses the `url` and `fields`
  /// from the [RequestUploadUrlResponse] to perform a GCS V4 Policy Signed
  /// POST.
  Future<void> uploadFileToSignedUrl({
    required String url,
    required Map<String, String> fields,
    required String fileName,
    required Uint8List fileBytes,
    required String contentType,
  });
}
