// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteConfig _$RemoteConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RemoteConfig', json, ($checkedConvert) {
      final val = RemoteConfig(
        id: $checkedConvert('id', (v) => v as String),
        appStatus: $checkedConvert(
          'appStatus',
          (v) => AppStatus.fromJson(v as Map<String, dynamic>),
        ),
        adConfig: $checkedConvert(
          'adConfig',
          (v) => AdConfig.fromJson(v as Map<String, dynamic>),
        ),
        feedDecoratorConfig: $checkedConvert(
          'feedDecoratorConfig',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$FeedDecoratorTypeEnumMap, k),
              FeedDecoratorConfig.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
        userPreferenceConfig: $checkedConvert(
          'userPreferenceConfig',
          (v) => UserPreferenceConfig.fromJson(v as Map<String, dynamic>),
        ),
        pushNotificationConfig: $checkedConvert(
          'pushNotificationConfig',
          (v) => PushNotificationConfig.fromJson(v as Map<String, dynamic>),
        ),
        feedItemClickBehavior: $checkedConvert(
          'feedItemClickBehavior',
          (v) => $enumDecode(_$FeedItemClickBehaviorEnumMap, v),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => dateTimeFromJson(v as String?),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RemoteConfigToJson(RemoteConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userPreferenceConfig': instance.userPreferenceConfig.toJson(),
      'adConfig': instance.adConfig.toJson(),
      'feedDecoratorConfig': instance.feedDecoratorConfig.map(
        (k, e) => MapEntry(_$FeedDecoratorTypeEnumMap[k]!, e.toJson()),
      ),
      'appStatus': instance.appStatus.toJson(),
      'pushNotificationConfig': instance.pushNotificationConfig.toJson(),
      'feedItemClickBehavior':
          _$FeedItemClickBehaviorEnumMap[instance.feedItemClickBehavior]!,
      'createdAt': dateTimeToJson(instance.createdAt),
      'updatedAt': dateTimeToJson(instance.updatedAt),
    };

const _$FeedDecoratorTypeEnumMap = {
  FeedDecoratorType.linkAccount: 'linkAccount',
  FeedDecoratorType.upgrade: 'upgrade',
  FeedDecoratorType.rateApp: 'rateApp',
  FeedDecoratorType.enableNotifications: 'enableNotifications',
  FeedDecoratorType.suggestedTopics: 'suggestedTopics',
  FeedDecoratorType.suggestedSources: 'suggestedSources',
};

const _$FeedItemClickBehaviorEnumMap = {
  FeedItemClickBehavior.defaultBehavior: 'default',
  FeedItemClickBehavior.internalNavigation: 'internalNavigation',
  FeedItemClickBehavior.externalNavigation: 'externalNavigation',
};
