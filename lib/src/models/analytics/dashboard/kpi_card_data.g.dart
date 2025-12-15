// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_card_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KpiTimeFrameData _$KpiTimeFrameDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('KpiTimeFrameData', json, ($checkedConvert) {
      final val = KpiTimeFrameData(
        value: $checkedConvert('value', (v) => v as num),
        trend: $checkedConvert('trend', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$KpiTimeFrameDataToJson(KpiTimeFrameData instance) =>
    <String, dynamic>{'value': instance.value, 'trend': instance.trend};

KpiCardData _$KpiCardDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('KpiCardData', json, ($checkedConvert) {
      final val = KpiCardData(
        id: $checkedConvert('id', (v) => $enumDecode(_$KpiCardIdEnumMap, v)),
        label: $checkedConvert('label', (v) => v as String),
        timeFrames: $checkedConvert(
          'timeFrames',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$KpiTimeFrameEnumMap, k),
              KpiTimeFrameData.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$KpiCardDataToJson(KpiCardData instance) =>
    <String, dynamic>{
      'id': _$KpiCardIdEnumMap[instance.id]!,
      'label': instance.label,
      'timeFrames': instance.timeFrames.map(
        (k, e) => MapEntry(_$KpiTimeFrameEnumMap[k]!, e.toJson()),
      ),
    };

const _$KpiCardIdEnumMap = {
  KpiCardId.users_total_registered: 'users_total_registered',
  KpiCardId.users_new_registrations: 'users_new_registrations',
  KpiCardId.users_active_users: 'users_active_users',
  KpiCardId.content_headlines_total_published:
      'content_headlines_total_published',
  KpiCardId.content_headlines_total_views: 'content_headlines_total_views',
  KpiCardId.content_headlines_total_likes: 'content_headlines_total_likes',
  KpiCardId.content_sources_total_sources: 'content_sources_total_sources',
  KpiCardId.content_sources_new_sources: 'content_sources_new_sources',
  KpiCardId.content_sources_total_followers: 'content_sources_total_followers',
  KpiCardId.content_topics_total_topics: 'content_topics_total_topics',
  KpiCardId.content_topics_new_topics: 'content_topics_new_topics',
  KpiCardId.content_topics_total_followers: 'content_topics_total_followers',
  KpiCardId.engagements_total_reactions: 'engagements_total_reactions',
  KpiCardId.engagements_total_comments: 'engagements_total_comments',
  KpiCardId.engagements_reports_pending: 'engagements_reports_pending',
  KpiCardId.engagements_reports_resolved: 'engagements_reports_resolved',
};

const _$KpiTimeFrameEnumMap = {
  KpiTimeFrame.day: 'day',
  KpiTimeFrame.week: 'week',
  KpiTimeFrame.month: 'month',
  KpiTimeFrame.year: 'year',
};
