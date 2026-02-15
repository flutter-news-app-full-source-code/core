import 'package:core/src/enums/media_asset_enums.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'request_upload_url_request.g.dart';

/// {@template request_upload_url_request}
/// Represents the request body for the `request-upload-url` endpoint.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class RequestUploadUrlRequest extends Equatable {
  /// {@macro request_upload_url_request}
  const RequestUploadUrlRequest({
    required this.fileName,
    required this.contentType,
    required this.purpose,
  });

  /// Creates a [RequestUploadUrlRequest] from JSON data.
  factory RequestUploadUrlRequest.fromJson(Map<String, dynamic> json) =>
      _$RequestUploadUrlRequestFromJson(json);

  /// The name of the file to be uploaded (e.g., 'profile.jpg').
  final String fileName;

  /// The MIME type of the file (e.g., 'image/jpeg').
  final String contentType;

  /// The intended use of the asset.
  final MediaAssetPurpose purpose;

  /// Converts this [RequestUploadUrlRequest] instance to JSON data.
  Map<String, dynamic> toJson() => _$RequestUploadUrlRequestToJson(this);

  @override
  List<Object> get props => [fileName, contentType, purpose];
}
