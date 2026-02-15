import 'package:core/src/enums/analytics_event.dart';
import 'package:core/src/enums/media_asset_enums.dart';
import 'package:core/src/models/analytics/analytics.dart';

/// {@template media_upload_completed_payload}
/// Represents the payload for the [AnalyticsEvent.mediaUploadCompleted] event.
/// {@endtemplate}
class MediaUploadCompletedPayload extends AnalyticsEventPayload {
  /// {@macro media_upload_completed_payload}
  const MediaUploadCompletedPayload({
    required this.purpose,
    required this.fileName,
    required this.fileSize,
    required this.mediaAssetId,
    required this.uploadDurationSeconds,
  });

  /// The intended use of the asset.
  final MediaAssetPurpose purpose;

  /// The name of the uploaded file.
  final String fileName;

  /// The size of the file in bytes.
  final int fileSize;

  /// The ID of the resulting media asset.
  final String mediaAssetId;

  /// The duration of the upload in seconds.
  final double uploadDurationSeconds;

  @override
  Map<String, dynamic> toMap() => {
    AnalyticsParameterKeys.purpose: purpose.name,
    AnalyticsParameterKeys.fileName: fileName,
    AnalyticsParameterKeys.fileSize: fileSize,
    AnalyticsParameterKeys.mediaAssetId: mediaAssetId,
    AnalyticsParameterKeys.uploadDurationSeconds: uploadDurationSeconds,
  };

  @override
  List<Object?> get props => [
    purpose,
    fileName,
    fileSize,
    mediaAssetId,
    uploadDurationSeconds,
  ];
}
