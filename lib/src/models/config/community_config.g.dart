// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityConfig _$CommunityConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CommunityConfig', json, ($checkedConvert) {
      final val = CommunityConfig(
        engagement: $checkedConvert(
          'engagement',
          (v) => EngagementConfig.fromJson(v as Map<String, dynamic>),
        ),
        reporting: $checkedConvert(
          'reporting',
          (v) => ReportingConfig.fromJson(v as Map<String, dynamic>),
        ),
        appReview: $checkedConvert(
          'appReview',
          (v) => AppReviewConfig.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CommunityConfigToJson(CommunityConfig instance) =>
    <String, dynamic>{
      'engagement': instance.engagement.toJson(),
      'reporting': instance.reporting.toJson(),
      'appReview': instance.appReview.toJson(),
    };
