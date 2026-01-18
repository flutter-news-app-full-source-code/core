import 'dart:math';

import 'package:core/core.dart';

/// Generates a list of predefined chart card data fixtures.
///
/// ### Data Realism
/// The data in this fixture is **procedurally generated to be plausible**.
/// It uses helper functions (`_generateTimeSeries`, `_generateCategoricalSeries`)
/// to create realistic-looking but ultimately random data points.
///
/// For categorical charts like "Views by Topic", it **does reflect real data**
/// by pulling topic names directly from `topics.dart`, ensuring consistency
/// in the demo environment.
///
/// Generates a list of predefined chart card data for fixture data.
List<ChartCardData> getChartCardsFixturesData({
  String languageCode = 'en',
  DateTime? now,
}) {
  final resolvedLanguageCode = ['en', 'ar'].contains(languageCode)
      ? languageCode
      : 'en';
  final labels = _chartLabels[resolvedLanguageCode]!;
  final referenceTime = now ?? DateTime.now();

  return [
    // --- Users Management ---
    ChartCardData(
      id: ChartCardId.usersRegistrationsOverTime,
      label: labels[ChartCardId.usersRegistrationsOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 5),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 3),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 1),
      },
    ),
    ChartCardData(
      id: ChartCardId.usersActiveUsersOverTime,
      label: labels[ChartCardId.usersActiveUsersOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 8),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 10),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 11),
      },
    ),
    ChartCardData(
      id: ChartCardId.usersTierDistribution,
      label: labels[ChartCardId.usersTierDistribution]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries([
          'Guest',
          'Standard',
        ], 10),
        ChartTimeFrame.month: _generateCategoricalSeries([
          'Guest',
          'Standard',
        ], 11),
        ChartTimeFrame.year: _generateCategoricalSeries([
          'Guest',
          'Standard',
        ], 11),
      },
    ),

    // --- Content Management: Headlines ---
    ChartCardData(
      id: ChartCardId.contentHeadlinesViewsOverTime,
      label: labels[ChartCardId.contentHeadlinesViewsOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 1500),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 1200),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 1000),
      },
    ),
    ChartCardData(
      id: ChartCardId.contentHeadlinesLikesOverTime,
      label: labels[ChartCardId.contentHeadlinesLikesOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 200),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 150),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 100),
      },
    ),
    ChartCardData(
      id: ChartCardId.contentHeadlinesViewsByTopic,
      label: labels[ChartCardId.contentHeadlinesViewsByTopic]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries(
          getTopicsFixturesData(
            languageCode: resolvedLanguageCode,
          ).map((e) => e.name).toList(),
          5000,
        ),
        ChartTimeFrame.month: _generateCategoricalSeries(
          getTopicsFixturesData(
            languageCode: resolvedLanguageCode,
          ).map((e) => e.name).toList(),
          20000,
        ),
        ChartTimeFrame.year: _generateCategoricalSeries(
          getTopicsFixturesData(
            languageCode: resolvedLanguageCode,
          ).map((e) => e.name).toList(),
          240000,
        ),
      },
    ),

    // --- Content Management: Sources ---
    ChartCardData(
      id: ChartCardId.contentSourcesHeadlinesPublishedOverTime,
      label: labels[ChartCardId.contentSourcesHeadlinesPublishedOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 15),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 12),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 10),
      },
    ),
    ChartCardData(
      id: ChartCardId.contentSourcesEngagementByType,
      label: labels[ChartCardId.contentSourcesEngagementByType]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries(['RSS', 'API'], 500),
        ChartTimeFrame.month: _generateCategoricalSeries(['RSS', 'API'], 2000),
        ChartTimeFrame.year: _generateCategoricalSeries(['RSS', 'API'], 24000),
      },
    ),
    ChartCardData(
      id: ChartCardId.contentSourcesStatusDistribution,
      label: labels[ChartCardId.contentSourcesStatusDistribution]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries(
          ContentStatus.values.map((e) => e.name).toList(),
          50,
        ),
        ChartTimeFrame.month: _generateCategoricalSeries(
          ContentStatus.values.map((e) => e.name).toList(),
          200,
        ),
        ChartTimeFrame.year: _generateCategoricalSeries(
          ContentStatus.values.map((e) => e.name).toList(),
          2400,
        ),
      },
    ),

    // --- Content Management: Topics ---
    ChartCardData(
      id: ChartCardId.contentHeadlinesBreakingNewsDistribution,
      label: labels[ChartCardId.contentHeadlinesBreakingNewsDistribution]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries([
          'Breaking',
          'Regular',
        ], 100),
        ChartTimeFrame.month: _generateCategoricalSeries([
          'Breaking',
          'Regular',
        ], 400),
        ChartTimeFrame.year: _generateCategoricalSeries([
          'Breaking',
          'Regular',
        ], 4800),
      },
    ),
    ChartCardData(
      id: ChartCardId.contentTopicsHeadlinesPublishedOverTime,
      label: labels[ChartCardId.contentTopicsHeadlinesPublishedOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 10),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 8),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 5),
      },
    ),
    ChartCardData(
      id: ChartCardId.contentTopicsEngagementByTopic,
      label: labels[ChartCardId.contentTopicsEngagementByTopic]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries(
          getTopicsFixturesData(
            languageCode: resolvedLanguageCode,
          ).map((e) => e.name).toList(),
          600,
        ),
        ChartTimeFrame.month: _generateCategoricalSeries(
          getTopicsFixturesData(
            languageCode: resolvedLanguageCode,
          ).map((e) => e.name).toList(),
          2400,
        ),
        ChartTimeFrame.year: _generateCategoricalSeries(
          getTopicsFixturesData(
            languageCode: resolvedLanguageCode,
          ).map((e) => e.name).toList(),
          28800,
        ),
      },
    ),

    // --- Engagements Management ---
    ChartCardData(
      id: ChartCardId.engagementsReactionsOverTime,
      label: labels[ChartCardId.engagementsReactionsOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 10),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 8),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 5),
      },
    ),
    ChartCardData(
      id: ChartCardId.engagementsCommentsOverTime,
      label: labels[ChartCardId.engagementsCommentsOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 5),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 4),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 2),
      },
    ),
    ChartCardData(
      id: ChartCardId.engagementsReactionsByType,
      label: labels[ChartCardId.engagementsReactionsByType]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries([
          'like',
          'love',
          'laugh',
        ], 20),
        ChartTimeFrame.month: _generateCategoricalSeries([
          'like',
          'love',
          'laugh',
        ], 80),
        ChartTimeFrame.year: _generateCategoricalSeries([
          'like',
          'love',
          'laugh',
        ], 960),
      },
    ),
    ChartCardData(
      id: ChartCardId.engagementsReportsSubmittedOverTime,
      label: labels[ChartCardId.engagementsReportsSubmittedOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 2),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 1),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 0),
      },
    ),
    ChartCardData(
      id: ChartCardId.engagementsReportsResolutionTimeOverTime,
      label: labels[ChartCardId.engagementsReportsResolutionTimeOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 24), // Hours
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 48),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 72),
      },
    ),
    ChartCardData(
      id: ChartCardId.engagementsReportsByReason,
      label: labels[ChartCardId.engagementsReportsByReason]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries([
          'Spam',
          'Hate Speech',
        ], 5),
        ChartTimeFrame.month: _generateCategoricalSeries([
          'Spam',
          'Hate Speech',
        ], 20),
        ChartTimeFrame.year: _generateCategoricalSeries([
          'Spam',
          'Hate Speech',
        ], 240),
      },
    ),
    ChartCardData(
      id: ChartCardId.engagementsAppReviewsFeedbackOverTime,
      label: labels[ChartCardId.engagementsAppReviewsFeedbackOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 3),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 2),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 1),
      },
    ),
    ChartCardData(
      id: ChartCardId.engagementsAppReviewsPositiveVsNegative,
      label: labels[ChartCardId.engagementsAppReviewsPositiveVsNegative]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries([
          'Positive',
          'Negative',
        ], 5),
        ChartTimeFrame.month: _generateCategoricalSeries([
          'Positive',
          'Negative',
        ], 20),
        ChartTimeFrame.year: _generateCategoricalSeries([
          'Positive',
          'Negative',
        ], 240),
      },
    ),
    ChartCardData(
      id: ChartCardId.engagementsAppReviewsStoreRequestsOverTime,
      label: labels[ChartCardId.engagementsAppReviewsStoreRequestsOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 1),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 1),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 0),
      },
    ),

    // --- Rewards Management ---
    ChartCardData(
      id: ChartCardId.rewardsAdsWatchedOverTime,
      label: labels[ChartCardId.rewardsAdsWatchedOverTime]!,
      type: ChartType.line,
      timeFrames: {
        ChartTimeFrame.week: _generateTimeSeries(referenceTime, 7, 50),
        ChartTimeFrame.month: _generateTimeSeries(referenceTime, 30, 40),
        ChartTimeFrame.year: _generateTimeSeries(referenceTime, 365, 30),
      },
    ),
    ChartCardData(
      id: ChartCardId.rewardsActiveByType,
      label: labels[ChartCardId.rewardsActiveByType]!,
      type: ChartType.bar,
      timeFrames: {
        ChartTimeFrame.week: _generateCategoricalSeries([
          'Ad-Free',
          'Daily Digest',
        ], 50),
        ChartTimeFrame.month: _generateCategoricalSeries([
          'Ad-Free',
          'Daily Digest',
        ], 150),
        ChartTimeFrame.year: _generateCategoricalSeries([
          'Ad-Free',
          'Daily Digest',
        ], 500),
      },
    ),
  ];
}

/// Generates a list of [DataPoint]s for a time-series chart (e.g., a line chart).
///
/// It creates a data point for each day over the specified number of [days],
/// working backwards from the [now] timestamp. Each data point is assigned a
/// random value, calculated to be within a plausible range based on [maxValue].
///
/// - [now]: The reference time, typically `DateTime.now()`.
/// - [days]: The number of days to generate data for (e.g., 7 for a week).
/// - [maxValue]: The upper bound for the random value generation.
List<DataPoint> _generateTimeSeries(DateTime now, int days, int maxValue) {
  final random = Random();
  return List.generate(days, (i) {
    final value = maxValue > 0 ? random.nextInt(maxValue) + maxValue * 0.2 : 0;
    return DataPoint(
      timestamp: now.subtract(Duration(days: days - 1 - i)),
      value: value,
    );
  });
}

/// Generates a list of [DataPoint]s for a categorical chart (e.g., a bar chart).
///
/// It iterates through a list of [categories] (e.g., topic names) and creates
/// a `DataPoint` for each one, assigning it a random value up to [max].
///
/// - [categories]: A list of strings representing the categories for the x-axis.
/// - [max]: The upper bound for the random value generation for each category.
List<DataPoint> _generateCategoricalSeries(List<String> categories, int max) {
  final random = Random();
  return categories
      .map(
        (category) =>
            DataPoint(label: category, value: random.nextInt(max) + max * 0.1),
      )
      .toList();
}

/// A map containing the display labels for each chart card in all supported languages.
final Map<String, Map<ChartCardId, String>> _chartLabels = {
  'en': {
    // Users
    ChartCardId.usersRegistrationsOverTime: 'Registrations Over Time',
    ChartCardId.usersActiveUsersOverTime: 'Active Users Over Time',
    ChartCardId.usersTierDistribution: 'User Tier Distribution',
    // Headlines
    ChartCardId.contentHeadlinesViewsOverTime: 'Views Over Time',
    ChartCardId.contentHeadlinesLikesOverTime: 'Likes Over Time',
    ChartCardId.contentHeadlinesViewsByTopic: 'Views by Topic',
    // Sources
    ChartCardId.contentSourcesHeadlinesPublishedOverTime:
        'Headlines Published Over Time',
    ChartCardId.contentSourcesStatusDistribution: 'Source Status Distribution',
    ChartCardId.contentSourcesEngagementByType: 'Engagement by Source Type',
    // Topics
    ChartCardId.contentHeadlinesBreakingNewsDistribution:
        'Breaking News Distribution',
    ChartCardId.contentTopicsHeadlinesPublishedOverTime:
        'Headlines Published Over Time',
    ChartCardId.contentTopicsEngagementByTopic: 'Engagement by Topic',
    // Engagements
    ChartCardId.engagementsReactionsOverTime: 'Reactions Over Time',
    ChartCardId.engagementsCommentsOverTime: 'Comments Over Time',
    ChartCardId.engagementsReactionsByType: 'Reactions by Type',
    // Reports
    ChartCardId.engagementsReportsSubmittedOverTime:
        'Reports Submitted Over Time',
    ChartCardId.engagementsReportsResolutionTimeOverTime:
        'Avg. Resolution Time Over Time',
    ChartCardId.engagementsReportsByReason: 'Reports by Reason',
    // App Reviews
    ChartCardId.engagementsAppReviewsFeedbackOverTime: 'Feedback Over Time',
    ChartCardId.engagementsAppReviewsPositiveVsNegative:
        'Positive vs. Negative Feedback',
    ChartCardId.engagementsAppReviewsStoreRequestsOverTime:
        'Store Requests Over Time',
    ChartCardId.rewardsAdsWatchedOverTime: 'Ads Watched Over Time',
    ChartCardId.rewardsActiveByType: 'Active Rewards by Type',
  },
  'ar': {
    // Users
    ChartCardId.usersRegistrationsOverTime: 'التسجيلات عبر الزمن',
    ChartCardId.usersActiveUsersOverTime: 'المستخدمون النشطون عبر الزمن',
    ChartCardId.usersTierDistribution: 'توزيع مستويات المستخدمين',
    // Headlines
    ChartCardId.contentHeadlinesViewsOverTime: 'المشاهدات عبر الزمن',
    ChartCardId.contentHeadlinesLikesOverTime: 'الإعجابات عبر الزمن',
    ChartCardId.contentHeadlinesViewsByTopic: 'المشاهدات حسب الموضوع',
    // Sources
    ChartCardId.contentSourcesHeadlinesPublishedOverTime:
        'العناوين المنشورة عبر الزمن',
    ChartCardId.contentSourcesStatusDistribution: 'توزيع حالة المصادر',
    ChartCardId.contentSourcesEngagementByType: 'التفاعل حسب نوع المصدر',
    // Topics
    ChartCardId.contentHeadlinesBreakingNewsDistribution:
        'توزيع الأخبار العاجلة',
    ChartCardId.contentTopicsHeadlinesPublishedOverTime:
        'العناوين المنشورة عبر الزمن',
    ChartCardId.contentTopicsEngagementByTopic: 'التفاعل حسب الموضوع',
    // Engagements
    ChartCardId.engagementsReactionsOverTime: 'التفاعلات عبر الزمن',
    ChartCardId.engagementsCommentsOverTime: 'التعليقات عبر الزمن',
    ChartCardId.engagementsReactionsByType: 'التفاعلات حسب النوع',
    // Reports
    ChartCardId.engagementsReportsSubmittedOverTime:
        'التقارير المقدمة عبر الزمن',
    ChartCardId.engagementsReportsResolutionTimeOverTime:
        'متوسط وقت حل التقارير عبر الزمن',
    ChartCardId.engagementsReportsByReason: 'التقارير حسب السبب',
    // App Reviews
    ChartCardId.engagementsAppReviewsFeedbackOverTime: 'التقييمات عبر الزمن',
    ChartCardId.engagementsAppReviewsPositiveVsNegative:
        'التقييمات الإيجابية مقابل السلبية',
    ChartCardId.engagementsAppReviewsStoreRequestsOverTime:
        'طلبات تقييم المتجر عبر الزمن',
    ChartCardId.rewardsAdsWatchedOverTime: 'الإعلانات المشاهدة عبر الزمن',
    ChartCardId.rewardsActiveByType: 'المكافآت النشطة حسب النوع',
  },
};
