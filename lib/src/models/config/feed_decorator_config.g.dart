// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_decorator_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedDecoratorConfig _$FeedDecoratorConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FeedDecoratorConfig', json, ($checkedConvert) {
      final val = FeedDecoratorConfig(
        category: $checkedConvert(
          'category',
          (v) => $enumDecode(_$FeedDecoratorCategoryEnumMap, v),
        ),
        enabled: $checkedConvert('enabled', (v) => v as bool),
        visibleTo: $checkedConvert(
          'visibleTo',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$AccessTierEnumMap, k),
              FeedDecoratorRoleConfig.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
        itemsToDisplay: $checkedConvert(
          'itemsToDisplay',
          (v) => (v as num?)?.toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FeedDecoratorConfigToJson(
  FeedDecoratorConfig instance,
) => <String, dynamic>{
  'category': _$FeedDecoratorCategoryEnumMap[instance.category]!,
  'enabled': instance.enabled,
  'visibleTo': instance.visibleTo.map(
    (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e.toJson()),
  ),
  'itemsToDisplay': instance.itemsToDisplay,
};

const _$FeedDecoratorCategoryEnumMap = {
  FeedDecoratorCategory.callToAction: 'callToAction',
  FeedDecoratorCategory.contentCollection: 'contentCollection',
};

const _$AccessTierEnumMap = {
  AccessTier.guest: 'guest',
  AccessTier.standard: 'standard',
  AccessTier.premium: 'premium',
};
