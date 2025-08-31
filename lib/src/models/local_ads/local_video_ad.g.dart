// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_video_ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalVideoAd _$LocalVideoAdFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LocalVideoAd', json, ($checkedConvert) {
      final val = LocalVideoAd(
        id: $checkedConvert('id', (v) => v as String),
        videoUrl: $checkedConvert('videoUrl', (v) => v as String),
        targetUrl: $checkedConvert('targetUrl', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$LocalVideoAdToJson(LocalVideoAd instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoUrl': instance.videoUrl,
      'targetUrl': instance.targetUrl,
    };
