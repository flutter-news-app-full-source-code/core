import 'package:core/src/enums/ad_platform_type.dart';
import 'package:core/src/enums/ad_type.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template ad_load_failed_payload}
/// Payload for the `adLoadFailed` analytics event.
/// {@endtemplate}
class AdLoadFailedPayload extends AnalyticsEventPayload {
  /// {@macro ad_load_failed_payload}
  const AdLoadFailedPayload({
    required this.adProvider,
    required this.adType,
    required this.errorCode,
  });

  /// The ad provider that failed to load the ad.
  final AdPlatformType adProvider;

  /// The format of the ad that failed.
  final AdType adType;

  /// The error code provided by the ad SDK.
  final int errorCode;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.adProvider: adProvider.name,
      AnalyticsParameterKeys.adType: adType.name,
      AnalyticsParameterKeys.errorCode: errorCode,
    };
  }

  @override
  List<Object> get props => [adProvider, adType, errorCode];
}
