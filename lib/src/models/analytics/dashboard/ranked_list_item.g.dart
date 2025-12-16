// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranked_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankedListItem _$RankedListItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RankedListItem', json, ($checkedConvert) {
      final val = RankedListItem(
        entityId: $checkedConvert('entityId', (v) => v as String),
        displayTitle: $checkedConvert('displayTitle', (v) => v as String),
        metricValue: $checkedConvert('metricValue', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$RankedListItemToJson(RankedListItem instance) =>
    <String, dynamic>{
      'entityId': instance.entityId,
      'displayTitle': instance.displayTitle,
      'metricValue': instance.metricValue,
    };
