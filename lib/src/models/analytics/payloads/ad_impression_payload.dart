import 'package:core/src/enums/ad_platform_type.dart';
import 'package:core/src/enums/ad_type.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template ad_impression_payload}
/// Payload for the `adImpression` analytics event.
/// {@endtemplate}
class AdImpressionPayload extends AnalyticsEventPayload {
  /// {@macro ad_impression_payload}
  const AdImpressionPayload({
    required this.adProvider,
    required this.adType,
    required this.adPlacement,
  });

  /// The ad provider that served the ad.
  final AdPlatformType adProvider;

  /// The format of the ad.
  final AdType adType;

  /// The location in the app where the ad was shown.
  final String adPlacement;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.adProvider: adProvider.name,
      AnalyticsParameterKeys.adType: adType.name,
      AnalyticsParameterKeys.adPlacement: adPlacement,
    };
  }

  @override
  List<Object> get props => [adProvider, adType, adPlacement];
}
