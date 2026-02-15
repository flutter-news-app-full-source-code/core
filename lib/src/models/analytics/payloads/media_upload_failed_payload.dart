import 'package:core/src/enums/analytics_event.dart';
import 'package:core/src/enums/media_asset_enums.dart';
import 'package:core/src/models/analytics/analytics.dart';

/// {@template media_upload_failed_payload}
/// Represents the payload for the [AnalyticsEvent.mediaUploadFailed] event.
/// {@endtemplate}
class MediaUploadFailedPayload extends AnalyticsEventPayload {
  /// {@macro media_upload_failed_payload}
  const MediaUploadFailedPayload({
    required this.purpose,
    required this.fileName,
    required this.failureReason,
  });

  /// The intended use of the asset.
  final MediaAssetPurpose purpose;

  /// The name of the file that failed to upload.
  final String fileName;

  /// The reason for the upload failure.
  final String failureReason;

  @override
  Map<String, dynamic> toMap() => {
    AnalyticsParameterKeys.purpose: purpose.name,
    AnalyticsParameterKeys.fileName: fileName,
    AnalyticsParameterKeys.failureReason: failureReason,
  };

  @override
  List<Object?> get props => [purpose, fileName, failureReason];
}
