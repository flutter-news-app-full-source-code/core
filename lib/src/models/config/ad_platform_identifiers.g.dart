// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_platform_identifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdPlatformIdentifiers _$AdPlatformIdentifiersFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdPlatformIdentifiers', json, ($checkedConvert) {
  final val = AdPlatformIdentifiers(
    nativeAdId: $checkedConvert('nativeAdId', (v) => v as String?),
    bannerAdId: $checkedConvert('bannerAdId', (v) => v as String?),
    interstitialAdId: $checkedConvert('interstitialAdId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$AdPlatformIdentifiersToJson(
  AdPlatformIdentifiers instance,
) => <String, dynamic>{
  'nativeAdId': instance.nativeAdId,
  'bannerAdId': instance.bannerAdId,
  'interstitialAdId': instance.interstitialAdId,
};
