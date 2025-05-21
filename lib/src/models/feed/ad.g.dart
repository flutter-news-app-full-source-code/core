// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ad _$AdFromJson(Map<String, dynamic> json) => Ad(
      imageUrl: json['imageUrl'] as String,
      targetUrl: json['targetUrl'] as String,
      adType: $enumDecode(_$AdTypeEnumMap, json['adType']),
      action: feedItemActionFromJson(json['action'] as Map<String, dynamic>),
      placement: $enumDecodeNullable(_$AdPlacementEnumMap, json['placement']),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$AdToJson(Ad instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'targetUrl': instance.targetUrl,
      'adType': _$AdTypeEnumMap[instance.adType]!,
      if (_$AdPlacementEnumMap[instance.placement] case final value?)
        'placement': value,
      'action': feedItemActionToJson(instance.action),
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
