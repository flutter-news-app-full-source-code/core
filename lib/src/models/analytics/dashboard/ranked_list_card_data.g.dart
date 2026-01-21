// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranked_list_card_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankedListCardData _$RankedListCardDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RankedListCardData', json, ($checkedConvert) {
  final val = RankedListCardData(
    id: $checkedConvert('id', (v) => $enumDecode(_$RankedListCardIdEnumMap, v)),
    label: $checkedConvert('label', (v) => v as String),
    timeFrames: $checkedConvert(
      'timeFrames',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$RankedListTimeFrameEnumMap, k),
          (e as List<dynamic>)
              .map((e) => RankedListItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$RankedListCardDataToJson(RankedListCardData instance) =>
    <String, dynamic>{
      'id': _$RankedListCardIdEnumMap[instance.id]!,
      'label': instance.label,
      'timeFrames': instance.timeFrames.map(
        (k, e) => MapEntry(
          _$RankedListTimeFrameEnumMap[k]!,
          e.map((e) => e.toJson()).toList(),
        ),
      ),
    };

const _$RankedListCardIdEnumMap = {
  RankedListCardId.overviewHeadlinesMostViewed: 'overviewHeadlinesMostViewed',
  RankedListCardId.overviewHeadlinesMostLiked: 'overviewHeadlinesMostLiked',
  RankedListCardId.overviewSourcesMostFollowed: 'overviewSourcesMostFollowed',
  RankedListCardId.overviewTopicsMostFollowed: 'overviewTopicsMostFollowed',
};

const _$RankedListTimeFrameEnumMap = {
  RankedListTimeFrame.day: 'day',
  RankedListTimeFrame.week: 'week',
  RankedListTimeFrame.month: 'month',
  RankedListTimeFrame.year: 'year',
};
