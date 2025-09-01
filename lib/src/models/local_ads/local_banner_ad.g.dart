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

Map<String, dynamic> _$LocalBannerAdToJson(LocalBannerAd instance) =>
    <String, dynamic>{
      'id': instance.id,
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
