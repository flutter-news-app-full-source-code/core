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
      adType: $checkedConvert('adType', (v) => $enumDecode(_$AdTypeEnumMap, v)),
    );
    return val;
  },
);

Map<String, dynamic> _$LocalAdToJson(LocalAd instance) => <String, dynamic>{
  'adType': _$AdTypeEnumMap[instance.adType]!,
};

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};
