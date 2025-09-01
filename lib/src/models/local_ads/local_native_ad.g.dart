// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_native_ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalNativeAd _$LocalNativeAdFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LocalNativeAd', json, ($checkedConvert) {
      final val = LocalNativeAd(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        subtitle: $checkedConvert('subtitle', (v) => v as String),
        imageUrl: $checkedConvert('imageUrl', (v) => v as String),
        targetUrl: $checkedConvert('targetUrl', (v) => v as String),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$ContentStatusEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$LocalNativeAdToJson(LocalNativeAd instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'imageUrl': instance.imageUrl,
      'targetUrl': instance.targetUrl,
      'createdAt': dateTimeToJson(instance.createdAt),
      'updatedAt': dateTimeToJson(instance.updatedAt),
      'status': _$ContentStatusEnumMap[instance.status]!,
    };

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
