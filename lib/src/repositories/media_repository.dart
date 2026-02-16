import 'dart:typed_data';

import 'package:core/src/clients/media_client.dart';
import 'package:core/src/enums/media_asset_enums.dart';
import 'package:core/src/models/media/request_upload_url_request.dart';
import 'package:mime/mime.dart';

/// {@template media_repository}
/// A repository for managing media assets, providing a high-level interface
/// for common media operations like file uploads.
/// {@endtemplate}
class MediaRepository {
  /// {@macro media_repository}
  const MediaRepository({required MediaClient mediaClient})
    : _mediaClient = mediaClient;

  final MediaClient _mediaClient;

  /// Orchestrates the two-stage file upload process for GCS V4 Signed POSTs.
  ///
  /// First, it requests a signed URL and policy fields from the backend. Then,
  /// it uses that data to upload the file directly to cloud storage via a
  /// multipart/form-data POST request.
  ///
  /// Returns the `mediaAssetId` of the created media asset record.
  Future<String> uploadFile({
    required Uint8List fileBytes,
    required String fileName,
    required MediaAssetPurpose purpose,
  }) async {
    final contentType = lookupMimeType(fileName) ?? 'application/octet-stream';
    final request = RequestUploadUrlRequest(
      fileName: fileName,
      contentType: contentType,
      purpose: purpose,
    );
    final response = await _mediaClient.requestUploadUrl(request);
    await _mediaClient.uploadFileToSignedUrl(
      url: response.url,
      fields: response.fields,
      fileName: fileName,
      fileBytes: fileBytes,
      contentType: contentType,
    );
    return response.mediaAssetId;
  }
}
