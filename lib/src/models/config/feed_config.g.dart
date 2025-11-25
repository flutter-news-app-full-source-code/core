// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedConfig _$FeedConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FeedConfig', json, ($checkedConvert) {
      final val = FeedConfig(
        itemClickBehavior: $checkedConvert(
          'itemClickBehavior',
          (v) => $enumDecode(_$FeedItemClickBehaviorEnumMap, v),
        ),
        decorators: $checkedConvert(
          'decorators',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$FeedDecoratorTypeEnumMap, k),
              FeedDecoratorConfig.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FeedConfigToJson(FeedConfig instance) =>
    <String, dynamic>{
      'itemClickBehavior':
          _$FeedItemClickBehaviorEnumMap[instance.itemClickBehavior]!,
      'decorators': instance.decorators.map(
        (k, e) => MapEntry(_$FeedDecoratorTypeEnumMap[k]!, e.toJson()),
      ),
    };

const _$FeedItemClickBehaviorEnumMap = {
  FeedItemClickBehavior.defaultBehavior: 'default',
  FeedItemClickBehavior.internalNavigation: 'internalNavigation',
  FeedItemClickBehavior.externalNavigation: 'externalNavigation',
};

const _$FeedDecoratorTypeEnumMap = {
  FeedDecoratorType.linkAccount: 'linkAccount',
  FeedDecoratorType.upgrade: 'upgrade',
  FeedDecoratorType.rateApp: 'rateApp',
  FeedDecoratorType.enableNotifications: 'enableNotifications',
  FeedDecoratorType.suggestedTopics: 'suggestedTopics',
  FeedDecoratorType.suggestedSources: 'suggestedSources',
};
