// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalAd _$LocalAdFromJson(Map<String, dynamic> json) => $checkedCreate(
  'LocalAd',
  json,
  ($checkedConvert) {
    final val = LocalAd(
      id: $checkedConvert('id', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      subtitle: $checkedConvert('subtitle', (v) => v as String),
      imageUrl: $checkedConvert('imageUrl', (v) => v as String),
      targetUrl: $checkedConvert('targetUrl', (v) => v as String),
      adType: $checkedConvert('adType', (v) => $enumDecode(_$AdTypeEnumMap, v)),
    );
    return val;
  },
);

Map<String, dynamic> _$LocalAdToJson(LocalAd instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'imageUrl': instance.imageUrl,
  'targetUrl': instance.targetUrl,
  'adType': _$AdTypeEnumMap[instance.adType]!,
};

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};
