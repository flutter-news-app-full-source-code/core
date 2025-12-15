// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_ranked_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardRankedList _$DashboardRankedListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DashboardRankedList', json, ($checkedConvert) {
      final val = DashboardRankedList(
        id: $checkedConvert('id', (v) => v as String),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => RankedListItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DashboardRankedListToJson(
  DashboardRankedList instance,
) => <String, dynamic>{
  'id': instance.id,
  'items': instance.items.map((e) => e.toJson()).toList(),
};
