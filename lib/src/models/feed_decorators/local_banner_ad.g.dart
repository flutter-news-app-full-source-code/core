// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_banner_ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalBannerAd _$LocalBannerAdFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LocalBannerAd', json, ($checkedConvert) {
      final val = LocalBannerAd(
        id: $checkedConvert('id', (v) => v as String),
        imageUrl: $checkedConvert('imageUrl', (v) => v as String),
        targetUrl: $checkedConvert('targetUrl', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$LocalBannerAdToJson(LocalBannerAd instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'targetUrl': instance.targetUrl,
    };
