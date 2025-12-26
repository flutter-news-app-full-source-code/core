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
  KpiCardId.usersTotalRegistered: 'users_total_registered',
  KpiCardId.usersNewRegistrations: 'users_new_registrations',
  KpiCardId.usersActiveUsers: 'users_active_users',
  KpiCardId.contentHeadlinesTotalPublished: 'content_headlines_total_published',
  KpiCardId.contentHeadlinesTotalViews: 'content_headlines_total_views',
  KpiCardId.contentHeadlinesTotalLikes: 'content_headlines_total_likes',
  KpiCardId.contentSourcesTotalSources: 'content_sources_total_sources',
  KpiCardId.contentSourcesNewSources: 'content_sources_new_sources',
  KpiCardId.contentSourcesTotalFollowers: 'content_sources_total_followers',
  KpiCardId.contentTopicsTotalTopics: 'content_topics_total_topics',
  KpiCardId.contentTopicsNewTopics: 'content_topics_new_topics',
  KpiCardId.contentTopicsTotalFollowers: 'content_topics_total_followers',
  KpiCardId.engagementsTotalReactions: 'engagements_total_reactions',
  KpiCardId.engagementsTotalComments: 'engagements_total_comments',
  KpiCardId.engagementsAverageEngagementRate:
      'engagements_average_engagement_rate',
  KpiCardId.engagementsReportsPending: 'engagements_reports_pending',
  KpiCardId.engagementsReportsResolved: 'engagements_reports_resolved',
  KpiCardId.engagementsReportsAverageResolutionTime:
      'engagements_reports_average_resolution_time',
  KpiCardId.engagementsAppReviewsTotalFeedback:
      'engagements_app_reviews_total_feedback',
  KpiCardId.engagementsAppReviewsPositiveFeedback:
      'engagements_app_reviews_positive_feedback',
  KpiCardId.engagementsAppReviewsStoreRequests:
      'engagements_app_reviews_store_requests',
  KpiCardId.subscriptionsActiveCount: 'subscriptions_active_count',
  KpiCardId.subscriptionsCanceledCount: 'subscriptions_canceled_count',
  KpiCardId.subscriptionsExpiredCount: 'subscriptions_expired_count',
};

const _$KpiTimeFrameEnumMap = {
  KpiTimeFrame.day: 'day',
  KpiTimeFrame.week: 'week',
  KpiTimeFrame.month: 'month',
  KpiTimeFrame.year: 'year',
};
