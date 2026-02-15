import 'package:core/src/enums/analytics_event.dart';
import 'package:core/src/enums/media_asset_enums.dart';
import 'package:core/src/models/analytics/analytics.dart';

/// {@template media_upload_started_payload}
/// Represents the payload for the [AnalyticsEvent.mediaUploadStarted] event.
/// {@endtemplate}
class MediaUploadStartedPayload extends AnalyticsEventPayload {
  /// {@macro media_upload_started_payload}
  const MediaUploadStartedPayload({
    required this.purpose,
    required this.fileName,
    required this.fileSize,
  });

  /// The intended use of the asset.
  final MediaAssetPurpose purpose;

  /// The name of the file being uploaded.
  final String fileName;

  /// The size of the file in bytes.
  final int fileSize;

  @override
  Map<String, dynamic> toMap() => {
    AnalyticsParameterKeys.purpose: purpose.name,
    AnalyticsParameterKeys.fileName: fileName,
    AnalyticsParameterKeys.fileSize: fileSize,
  };

  @override
  List<Object?> get props => [purpose, fileName, fileSize];
}
