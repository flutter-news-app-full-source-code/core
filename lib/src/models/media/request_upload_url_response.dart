import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'request_upload_url_response.g.dart';

/// {@template request_upload_url_response}
/// Represents the response body for the `request-upload-url` endpoint.
///
/// This contains the URL and the required form fields for the client to perform
/// a multipart/form-data POST request.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class RequestUploadUrlResponse extends Equatable {
  /// {@macro request_upload_url_response}
  const RequestUploadUrlResponse({
    required this.url,
    required this.fields,
    required this.mediaAssetId,
  });

  /// Creates a [RequestUploadUrlResponse] from JSON data.
  factory RequestUploadUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestUploadUrlResponseFromJson(json);

  /// The URL to which the client must POST the multipart/form-data request.
  final String url;

  /// The policy fields that must be included in the multipart/form-data
  /// request.
  final Map<String, String> fields;

  /// The ID of the `MediaAsset` record created in the `pendingUpload` state.
  final String mediaAssetId;

  /// Converts this [RequestUploadUrlResponse] instance to JSON data.
  Map<String, dynamic> toJson() => _$RequestUploadUrlResponseToJson(this);

  @override
  List<Object> get props => [url, fields, mediaAssetId];
}
