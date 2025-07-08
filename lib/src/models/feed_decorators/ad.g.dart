// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ad _$AdFromJson(Map<String, dynamic> json) => $checkedCreate('Ad', json, (
  $checkedConvert,
) {
  final val = Ad(
    id: $checkedConvert('id', (v) => v as String),
    imageUrl: $checkedConvert('imageUrl', (v) => v as String),
    targetUrl: $checkedConvert('targetUrl', (v) => v as String),
    adType: $checkedConvert('adType', (v) => $enumDecode(_$AdTypeEnumMap, v)),
    placement: $checkedConvert(
      'placement',
      (v) => $enumDecode(_$AdPlacementEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$AdToJson(Ad instance) => <String, dynamic>{
  'id': instance.id,
  'imageUrl': instance.imageUrl,
  'targetUrl': instance.targetUrl,
  'adType': _$AdTypeEnumMap[instance.adType]!,
  'placement': _$AdPlacementEnumMap[instance.placement]!,
};

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};

const _$AdPlacementEnumMap = {
  AdPlacement.feedInlineStandardBanner: 'feedInlineStandardBanner',
  AdPlacement.feedInlineNativeBanner: 'feedInlineNativeBanner',
};
