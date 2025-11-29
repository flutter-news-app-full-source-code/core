// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'features_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeaturesConfig _$FeaturesConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FeaturesConfig', json, ($checkedConvert) {
      final val = FeaturesConfig(
        ads: $checkedConvert(
          'ads',
          (v) => AdConfig.fromJson(v as Map<String, dynamic>),
        ),
        pushNotifications: $checkedConvert(
          'pushNotifications',
          (v) => PushNotificationConfig.fromJson(v as Map<String, dynamic>),
        ),
        feed: $checkedConvert(
          'feed',
          (v) => FeedConfig.fromJson(v as Map<String, dynamic>),
        ),
        engagement: $checkedConvert(
          'engagement',
          (v) => EngagementConfig.fromJson(v as Map<String, dynamic>),
        ),
        reporting: $checkedConvert(
          'reporting',
          (v) => ReportingConfig.fromJson(v as Map<String, dynamic>),
        ),
        reviewFunnel: $checkedConvert(
          'reviewFunnel',
          (v) => ReviewFunnelConfig.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FeaturesConfigToJson(FeaturesConfig instance) =>
    <String, dynamic>{
      'ads': instance.ads.toJson(),
      'pushNotifications': instance.pushNotifications.toJson(),
      'feed': instance.feed.toJson(),
      'engagement': instance.engagement.toJson(),
      'reporting': instance.reporting.toJson(),
      'reviewFunnel': instance.reviewFunnel.toJson(),
    };
