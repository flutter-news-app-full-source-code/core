// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_card_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartCardData _$ChartCardDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ChartCardData', json, ($checkedConvert) {
      final val = ChartCardData(
        id: $checkedConvert('id', (v) => $enumDecode(_$ChartCardIdEnumMap, v)),
        label: $checkedConvert('label', (v) => v as String),
        type: $checkedConvert(
          'type',
          (v) => $enumDecode(_$ChartTypeEnumMap, v),
        ),
        timeFrames: $checkedConvert(
          'timeFrames',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$ChartTimeFrameEnumMap, k),
              (e as List<dynamic>)
                  .map((e) => DataPoint.fromJson(e as Map<String, dynamic>))
                  .toList(),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ChartCardDataToJson(ChartCardData instance) =>
    <String, dynamic>{
      'id': _$ChartCardIdEnumMap[instance.id]!,
      'label': instance.label,
      'type': _$ChartTypeEnumMap[instance.type]!,
      'timeFrames': instance.timeFrames.map(
        (k, e) => MapEntry(
          _$ChartTimeFrameEnumMap[k]!,
          e.map((e) => e.toJson()).toList(),
        ),
      ),
    };

const _$ChartCardIdEnumMap = {
  ChartCardId.users_registrations_over_time: 'users_registrations_over_time',
  ChartCardId.users_active_users_over_time: 'users_active_users_over_time',
  ChartCardId.users_role_distribution: 'users_role_distribution',
  ChartCardId.content_headlines_views_over_time:
      'content_headlines_views_over_time',
  ChartCardId.content_headlines_likes_over_time:
      'content_headlines_likes_over_time',
  ChartCardId.content_headlines_views_by_topic:
      'content_headlines_views_by_topic',
  ChartCardId.content_sources_headlines_published_over_time:
      'content_sources_headlines_published_over_time',
  ChartCardId.content_sources_followers_over_time:
      'content_sources_followers_over_time',
  ChartCardId.content_topics_followers_over_time:
      'content_topics_followers_over_time',
  ChartCardId.engagements_reactions_over_time:
      'engagements_reactions_over_time',
  ChartCardId.engagements_comments_over_time: 'engagements_comments_over_time',
  ChartCardId.engagements_reports_submitted_over_time:
      'engagements_reports_submitted_over_time',
};

const _$ChartTypeEnumMap = {ChartType.line: 'line', ChartType.bar: 'bar'};

const _$ChartTimeFrameEnumMap = {
  ChartTimeFrame.week: 'week',
  ChartTimeFrame.month: 'month',
  ChartTimeFrame.year: 'year',
};
