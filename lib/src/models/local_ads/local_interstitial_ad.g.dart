// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_interstitial_ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalInterstitialAd _$LocalInterstitialAdFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LocalInterstitialAd', json, ($checkedConvert) {
      final val = LocalInterstitialAd(
        id: $checkedConvert('id', (v) => v as String),
        imageUrl: $checkedConvert('imageUrl', (v) => v as String),
        targetUrl: $checkedConvert('targetUrl', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$LocalInterstitialAdToJson(
  LocalInterstitialAd instance,
) => <String, dynamic>{
  'id': instance.id,
  'imageUrl': instance.imageUrl,
  'targetUrl': instance.targetUrl,
};
