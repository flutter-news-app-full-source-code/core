import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'request_upload_url_response.g.dart';

/// {@template request_upload_url_response}
/// Represents the response body for the `request-upload-url` endpoint.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class RequestUploadUrlResponse extends Equatable {
  /// {@macro request_upload_url_response}
  const RequestUploadUrlResponse({
    required this.signedUrl,
    required this.mediaAssetId,
  });

  /// Creates a [RequestUploadUrlResponse] from JSON data.
  factory RequestUploadUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestUploadUrlResponseFromJson(json);

  /// The pre-signed URL for the client to upload the file to.
  final String signedUrl;

  /// The ID of the `MediaAsset` record created in the `pendingUpload` state.
  final String mediaAssetId;

  /// Converts this [RequestUploadUrlResponse] instance to JSON data.
  Map<String, dynamic> toJson() => _$RequestUploadUrlResponseToJson(this);

  @override
  List<Object> get props => [signedUrl, mediaAssetId];
}
