import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/analytics/dashboard/kpi_card_data.dart';

/// Generates a list of predefined KPI card data for fixture data.
///
/// This function can be configured to generate data in either English or
/// Arabic.
List<KpiCardData> getKpiCardsFixturesData({String languageCode = 'en'}) {
  final resolvedLanguageCode = ['en', 'ar'].contains(languageCode)
      ? languageCode
      : 'en';

  final labels = _kpiLabels[resolvedLanguageCode]!;

  return [
    // --- Users Management ---
    KpiCardData(
      id: KpiCardId.usersTotalRegistered,
      label: labels[KpiCardId.usersTotalRegistered]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 11, trend: '+2'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 11, trend: '+5'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 11, trend: '+8'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 11, trend: '+11'),
      },
    ),
    KpiCardData(
      id: KpiCardId.usersNewRegistrations,
      label: labels[KpiCardId.usersNewRegistrations]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 2, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 5, trend: '-1'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 8, trend: '+3'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 11, trend: '+11'),
      },
    ),
    KpiCardData(
      id: KpiCardId.usersActiveUsers,
      label: labels[KpiCardId.usersActiveUsers]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 8, trend: '+15%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 10, trend: '+5%'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 11, trend: '+2%'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 11, trend: '0%'),
      },
    ),

    // --- Content Management: Headlines ---
    KpiCardData(
      id: KpiCardId.contentHeadlinesTotalPublished,
      label: labels[KpiCardId.contentHeadlinesTotalPublished]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 100, trend: '+10'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 100, trend: '+30'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 100, trend: '+70'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 100, trend: '+100'),
      },
    ),
    KpiCardData(
      id: KpiCardId.contentHeadlinesTotalViews,
      label: labels[KpiCardId.contentHeadlinesTotalViews]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 1250, trend: '+5.2%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 8750, trend: '+3.1%'),
        KpiTimeFrame.month: KpiTimeFrameData(
          value: 35000,
          trend: '+1.8%',
        ),
        KpiTimeFrame.year: KpiTimeFrameData(
          value: 420000,
          trend: '+1.2%',
        ),
      },
    ),
    KpiCardData(
      id: KpiCardId.contentHeadlinesTotalLikes,
      label: labels[KpiCardId.contentHeadlinesTotalLikes]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 230, trend: '+8%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 1610, trend: '+4.5%'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 6440, trend: '+2.2%'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 77280, trend: '+1.5%'),
      },
    ),

    // --- Content Management: Sources ---
    KpiCardData(
      id: KpiCardId.contentSourcesTotalSources,
      label: labels[KpiCardId.contentSourcesTotalSources]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 90, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 90, trend: '+5'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 90, trend: '+12'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 90, trend: '+90'),
      },
    ),
    KpiCardData(
      id: KpiCardId.contentSourcesNewSources,
      label: labels[KpiCardId.contentSourcesNewSources]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 1, trend: '0'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 5, trend: '+2'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 12, trend: '-3'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 90, trend: '+90'),
      },
    ),
    KpiCardData(
      id: KpiCardId.contentSourcesTotalFollowers,
      label: labels[KpiCardId.contentSourcesTotalFollowers]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 1850, trend: '+25'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 1850, trend: '+150'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 1850, trend: '+500'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 1850, trend: '+1850'),
      },
    ),

    // --- Content Management: Topics ---
    KpiCardData(
      id: KpiCardId.contentTopicsTotalTopics,
      label: labels[KpiCardId.contentTopicsTotalTopics]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 10, trend: '0'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 10, trend: '+1'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 10, trend: '+3'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 10, trend: '+10'),
      },
    ),
    KpiCardData(
      id: KpiCardId.contentTopicsNewTopics,
      label: labels[KpiCardId.contentTopicsNewTopics]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 0, trend: '0'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 1, trend: '+1'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 3, trend: '0'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 10, trend: '+10'),
      },
    ),
    KpiCardData(
      id: KpiCardId.contentTopicsTotalFollowers,
      label: labels[KpiCardId.contentTopicsTotalFollowers]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 3200, trend: '+50'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 3200, trend: '+300'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 3200, trend: '+1000'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 3200, trend: '+3200'),
      },
    ),

    // --- Engagements Management ---
    KpiCardData(
      id: KpiCardId.engagementsTotalReactions,
      label: labels[KpiCardId.engagementsTotalReactions]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 66, trend: '+10%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 462, trend: '+8%'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 1980, trend: '+5%'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 23760, trend: '+2%'),
      },
    ),
    KpiCardData(
      id: KpiCardId.engagementsTotalComments,
      label: labels[KpiCardId.engagementsTotalComments]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 66, trend: '-5%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 462, trend: '-2%'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 1980, trend: '+1%'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 23760, trend: '+0.5%'),
      },
    ),
    KpiCardData(
      id: KpiCardId.engagementsReportsPending,
      label: labels[KpiCardId.engagementsReportsPending]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 2, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 2, trend: '-3'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 2, trend: '-10'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 2, trend: '-50'),
      },
    ),
  ];
}

final Map<String, Map<KpiCardId, String>> _kpiLabels = {
  'en': {
    KpiCardId.usersTotalRegistered: 'Total Users',
    KpiCardId.usersNewRegistrations: 'New Registrations',
    KpiCardId.usersActiveUsers: 'Active Users',
    KpiCardId.contentHeadlinesTotalPublished: 'Total Headlines',
    KpiCardId.contentHeadlinesTotalViews: 'Total Views',
    KpiCardId.contentHeadlinesTotalLikes: 'Total Likes',
    KpiCardId.contentSourcesTotalSources: 'Total Sources',
    KpiCardId.contentSourcesNewSources: 'New Sources',
    KpiCardId.contentSourcesTotalFollowers: 'Total Followers',
    KpiCardId.contentTopicsTotalTopics: 'Total Topics',
    KpiCardId.contentTopicsNewTopics: 'New Topics',
    KpiCardId.contentTopicsTotalFollowers: 'Total Followers',
    KpiCardId.engagementsTotalReactions: 'Total Reactions',
    KpiCardId.engagementsTotalComments: 'Total Comments',
    KpiCardId.engagementsAverageEngagementRate: 'Avg. Engagement Rate',
    KpiCardId.engagementsReportsPending: 'Pending Reports',
    KpiCardId.engagementsReportsResolved: 'Resolved Reports',
    KpiCardId.engagementsReportsAverageResolutionTime: 'Avg. Resolution Time',
    KpiCardId.engagementsAppReviewsTotalFeedback: 'Total Feedback',
    KpiCardId.engagementsAppReviewsPositiveFeedback: 'Positive Feedback',
    KpiCardId.engagementsAppReviewsStoreRequests: 'Store Requests',
  },
  'ar': {
    KpiCardId.usersTotalRegistered: 'إجمالي المستخدمين',
    KpiCardId.usersNewRegistrations: 'التسجيلات الجديدة',
    KpiCardId.usersActiveUsers: 'المستخدمون النشطون',
    KpiCardId.contentHeadlinesTotalPublished: 'إجمالي العناوين',
    KpiCardId.contentHeadlinesTotalViews: 'إجمالي المشاهدات',
    KpiCardId.contentHeadlinesTotalLikes: 'إجمالي الإعجابات',
    KpiCardId.contentSourcesTotalSources: 'إجمالي المصادر',
    KpiCardId.contentSourcesNewSources: 'مصادر جديدة',
    KpiCardId.contentSourcesTotalFollowers: 'إجمالي المتابعين',
    KpiCardId.contentTopicsTotalTopics: 'إجمالي المواضيع',
    KpiCardId.contentTopicsNewTopics: 'مواضيع جديدة',
    KpiCardId.contentTopicsTotalFollowers: 'إجمالي المتابعين',
    KpiCardId.engagementsTotalReactions: 'إجمالي التفاعلات',
    KpiCardId.engagementsTotalComments: 'إجمالي التعليقات',
    KpiCardId.engagementsAverageEngagementRate: 'متوسط معدل التفاعل',
    KpiCardId.engagementsReportsPending: 'تقارير معلقة',
    KpiCardId.engagementsReportsResolved: 'تقارير محلولة',
    KpiCardId.engagementsReportsAverageResolutionTime: 'متوسط وقت الحل',
    KpiCardId.engagementsAppReviewsTotalFeedback: 'إجمالي التقييمات',
    KpiCardId.engagementsAppReviewsPositiveFeedback: 'تقييمات إيجابية',
    KpiCardId.engagementsAppReviewsStoreRequests: 'طلبات تقييم المتجر',
  },
};
