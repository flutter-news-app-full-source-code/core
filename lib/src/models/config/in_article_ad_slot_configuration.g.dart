// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_article_ad_slot_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InArticleAdSlotConfiguration _$InArticleAdSlotConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InArticleAdSlotConfiguration', json, ($checkedConvert) {
  final val = InArticleAdSlotConfiguration(
    slotType: $checkedConvert(
      'slotType',
      (v) => $enumDecode(_$InArticleAdSlotTypeEnumMap, v),
    ),
    enabled: $checkedConvert('enabled', (v) => v as bool),
  );
  return val;
});

Map<String, dynamic> _$InArticleAdSlotConfigurationToJson(
  InArticleAdSlotConfiguration instance,
) => <String, dynamic>{
  'slotType': _$InArticleAdSlotTypeEnumMap[instance.slotType]!,
  'enabled': instance.enabled,
};

const _$InArticleAdSlotTypeEnumMap = {
  InArticleAdSlotType.belowMainArticleImage: 'belowMainArticleImage',
  InArticleAdSlotType.aboveArticleContinueReadingButton:
      'aboveArticleContinueReadingButton',
  InArticleAdSlotType.belowArticleContinueReadingButton:
      'belowArticleContinueReadingButton',
};
