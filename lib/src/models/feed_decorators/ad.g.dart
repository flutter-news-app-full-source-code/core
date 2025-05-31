// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ad _$AdFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Ad',
      json,
      ($checkedConvert) {
        final val = Ad(
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          targetUrl: $checkedConvert('target_url', (v) => v as String),
          adType: $checkedConvert(
              'ad_type', (v) => $enumDecodeNullable(_$AdTypeEnumMap, v)),
          placement: $checkedConvert(
              'placement', (v) => $enumDecodeNullable(_$AdPlacementEnumMap, v)),
          id: $checkedConvert('id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'imageUrl': 'image_url',
        'targetUrl': 'target_url',
        'adType': 'ad_type'
      },
    );

Map<String, dynamic> _$AdToJson(Ad instance) => <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'target_url': instance.targetUrl,
      if (_$AdTypeEnumMap[instance.adType] case final value?) 'ad_type': value,
      if (_$AdPlacementEnumMap[instance.placement] case final value?)
        'placement': value,
    };

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};

const _$AdPlacementEnumMap = {
  AdPlacement.feedInlineStandardBanner: 'feed_inline_standard_banner',
  AdPlacement.feedInlineNativeBanner: 'feed_inline_native_banner',
};
