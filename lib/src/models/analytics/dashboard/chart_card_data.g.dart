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
  ChartCardId.usersRegistrationsOverTime: 'users_registrations_over_time',
  ChartCardId.usersActiveUsersOverTime: 'users_active_users_over_time',
  ChartCardId.usersRoleDistribution: 'users_role_distribution',
  ChartCardId.contentHeadlinesViewsOverTime:
      'content_headlines_views_over_time',
  ChartCardId.contentHeadlinesLikesOverTime:
      'content_headlines_likes_over_time',
  ChartCardId.contentHeadlinesViewsByTopic: 'content_headlines_views_by_topic',
  ChartCardId.contentSourcesHeadlinesPublishedOverTime:
      'content_sources_headlines_published_over_time',
  ChartCardId.contentSourcesStatusDistribution:
      'content_sources_status_distribution',
  ChartCardId.contentSourcesEngagementByType:
      'content_sources_engagement_by_type',
  ChartCardId.contentHeadlinesBreakingNewsDistribution:
      'content_headlines_breaking_news_distribution',
  ChartCardId.contentTopicsHeadlinesPublishedOverTime:
      'content_topics_headlines_published_over_time',
  ChartCardId.contentTopicsEngagementByTopic:
      'content_topics_engagement_by_topic',
  ChartCardId.engagementsReactionsOverTime: 'engagements_reactions_over_time',
  ChartCardId.engagementsCommentsOverTime: 'engagements_comments_over_time',
  ChartCardId.engagementsReactionsByType: 'engagements_reactions_by_type',
  ChartCardId.engagementsReportsSubmittedOverTime:
      'engagements_reports_submitted_over_time',
  ChartCardId.engagementsReportsResolutionTimeOverTime:
      'engagements_reports_resolution_time_over_time',
  ChartCardId.engagementsReportsByReason: 'engagements_reports_by_reason',
  ChartCardId.engagementsAppReviewsFeedbackOverTime:
      'engagements_app_reviews_feedback_over_time',
  ChartCardId.engagementsAppReviewsPositiveVsNegative:
      'engagements_app_reviews_positive_vs_negative',
  ChartCardId.engagementsAppReviewsStoreRequestsOverTime:
      'engagements_app_reviews_store_requests_over_time',
};

const _$ChartTypeEnumMap = {ChartType.line: 'line', ChartType.bar: 'bar'};

const _$ChartTimeFrameEnumMap = {
  ChartTimeFrame.week: 'week',
  ChartTimeFrame.month: 'month',
  ChartTimeFrame.year: 'year',
};
