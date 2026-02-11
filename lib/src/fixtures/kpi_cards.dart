import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/analytics/dashboard/kpi_card_data.dart';
import 'package:uuid/uuid.dart';

/// Generates a list of predefined KPI card data fixtures.
///
/// ### Data Realism
/// The data in this fixture is designed to be **plausible but hardcoded**.
/// It does not perform real-time calculations based on other fixtures.
/// Instead, it provides static, representative numbers that simulate what a
/// real backend would pre-calculate.
///
/// For example, `usersTotalRegistered` has a value of `11` because there are
/// 11 users in `users.dart`, but the trend data is entirely fabricated for
/// demonstration purposes. This approach ensures the dashboard UI can be
/// showcased with realistic-looking metrics without complex client-side logic.
List<KpiCardData> getKpiCardsFixturesData({String languageCode = 'en'}) {
  final resolvedLanguageCode = ['en', 'ar'].contains(languageCode)
      ? languageCode
      : 'en';
  const uuid = Uuid();

  final labels = _kpiLabels[resolvedLanguageCode]!;

  return [
    // --- Users Management ---
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.usersTotalRegistered,
      label: labels[KpiCardId.usersTotalRegistered]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 11, trend: '+2'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 11, trend: '+5'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 11, trend: '+8'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 11, trend: '+11'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.usersNewRegistrations,
      label: labels[KpiCardId.usersNewRegistrations]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 2, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 5, trend: '-1'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 8, trend: '+3'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 11, trend: '+11'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.usersActiveUsers,
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
      id: uuid.v4(),
      cardId: KpiCardId.contentHeadlinesTotalPublished,
      label: labels[KpiCardId.contentHeadlinesTotalPublished]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 100, trend: '+10'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 100, trend: '+30'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 100, trend: '+70'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 100, trend: '+100'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.contentHeadlinesTotalViews,
      label: labels[KpiCardId.contentHeadlinesTotalViews]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 1250, trend: '+5.2%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 8750, trend: '+3.1%'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 35000, trend: '+1.8%'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 420000, trend: '+1.2%'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.contentHeadlinesTotalLikes,
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
      id: uuid.v4(),
      cardId: KpiCardId.contentSourcesTotalSources,
      label: labels[KpiCardId.contentSourcesTotalSources]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 90, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 90, trend: '+5'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 90, trend: '+12'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 90, trend: '+90'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.contentSourcesNewSources,
      label: labels[KpiCardId.contentSourcesNewSources]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 1, trend: '0'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 5, trend: '+2'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 12, trend: '-3'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 90, trend: '+90'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.contentSourcesTotalFollowers,
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
      id: uuid.v4(),
      cardId: KpiCardId.contentTopicsTotalTopics,
      label: labels[KpiCardId.contentTopicsTotalTopics]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 10, trend: '0'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 10, trend: '+1'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 10, trend: '+3'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 10, trend: '+10'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.contentTopicsNewTopics,
      label: labels[KpiCardId.contentTopicsNewTopics]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 0, trend: '0'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 1, trend: '+1'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 3, trend: '0'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 10, trend: '+10'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.contentTopicsTotalFollowers,
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
      id: uuid.v4(),
      cardId: KpiCardId.engagementsTotalReactions,
      label: labels[KpiCardId.engagementsTotalReactions]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 66, trend: '+10%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 462, trend: '+8%'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 1980, trend: '+5%'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 23760, trend: '+2%'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.engagementsTotalComments,
      label: labels[KpiCardId.engagementsTotalComments]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 66, trend: '-5%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 462, trend: '-2%'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 1980, trend: '+1%'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 23760, trend: '+0.5%'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.engagementsReportsPending,
      label: labels[KpiCardId.engagementsReportsPending]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 2, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 2, trend: '-3'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 2, trend: '-10'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 2, trend: '-50'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.engagementsAverageEngagementRate,
      label: labels[KpiCardId.engagementsAverageEngagementRate]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 5, trend: '+0.5%'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 5, trend: '-0.2%'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 5, trend: '+0.1%'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 5, trend: '0%'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.engagementsReportsResolved,
      label: labels[KpiCardId.engagementsReportsResolved]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 1, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 8, trend: '+3'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 30, trend: '+5'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 350, trend: '+350'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.engagementsReportsAverageResolutionTime,
      label: labels[KpiCardId.engagementsReportsAverageResolutionTime]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 12, trend: '-2h'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 18, trend: '+1h'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 24, trend: '+4h'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 36, trend: '+8h'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.engagementsAppReviewsTotalFeedback,
      label: labels[KpiCardId.engagementsAppReviewsTotalFeedback]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 5, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 25, trend: '+5'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 100, trend: '+20'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 1200, trend: '+1200'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.engagementsAppReviewsPositiveFeedback,
      label: labels[KpiCardId.engagementsAppReviewsPositiveFeedback]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 4, trend: '+1'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 20, trend: '+3'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 80, trend: '+15'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 960, trend: '+960'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.engagementsAppReviewsStoreRequests,
      label: labels[KpiCardId.engagementsAppReviewsStoreRequests]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 1, trend: '0'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 5, trend: '+1'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 20, trend: '+4'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 240, trend: '+240'),
      },
    ),

    // --- Rewards Management ---
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.rewardsAdsWatchedTotal,
      label: labels[KpiCardId.rewardsAdsWatchedTotal]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 150, trend: '+12'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 1050, trend: '+50'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 4500, trend: '+150'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 54000, trend: '+5000'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.rewardsGrantedTotal,
      label: labels[KpiCardId.rewardsGrantedTotal]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 145, trend: '+10'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 1000, trend: '+45'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 4300, trend: '+140'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 52000, trend: '+4800'),
      },
    ),
    KpiCardData(
      id: uuid.v4(),
      cardId: KpiCardId.rewardsActiveUsersCount,
      label: labels[KpiCardId.rewardsActiveUsersCount]!,
      timeFrames: const {
        KpiTimeFrame.day: KpiTimeFrameData(value: 45, trend: '+5'),
        KpiTimeFrame.week: KpiTimeFrameData(value: 300, trend: '+20'),
        KpiTimeFrame.month: KpiTimeFrameData(value: 1200, trend: '+100'),
        KpiTimeFrame.year: KpiTimeFrameData(value: 1200, trend: '+1200'),
      },
    ),
  ];
}

/// A map containing the display labels for each KPI card in all supported languages.
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
    KpiCardId.rewardsAdsWatchedTotal: 'Ads Watched',
    KpiCardId.rewardsGrantedTotal: 'Rewards Granted',
    KpiCardId.rewardsActiveUsersCount: 'Active Reward Users',
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
    KpiCardId.rewardsAdsWatchedTotal: 'الإعلانات المشاهدة',
    KpiCardId.rewardsGrantedTotal: 'المكافآت الممنوحة',
    KpiCardId.rewardsActiveUsersCount: 'مستخدمو المكافآت النشطون',
  },
};
