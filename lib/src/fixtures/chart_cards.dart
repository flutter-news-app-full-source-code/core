import 'dart:math';

import 'package:core/src/enums/enums.dart';
import 'package:core/src/fixtures/fixtures.dart';
import 'package:core/src/models/analytics/dashboard/chart_card_data.dart';
import 'package:core/src/models/analytics/dashboard/data_point.dart';

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
  return List.generate(
    days,
    (i) => DataPoint(
      timestamp: now.subtract(Duration(days: days - 1 - i)),
      value: random.nextInt(maxValue) + maxValue * 0.2,
    ),
  );
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
    ChartCardId.usersRegistrationsOverTime: 'Registrations Over Time',
    ChartCardId.contentHeadlinesViewsOverTime: 'Views Over Time',
    ChartCardId.contentHeadlinesViewsByTopic: 'Views by Topic',
    ChartCardId.contentSourcesStatusDistribution: 'Source Status Distribution',
    ChartCardId.contentHeadlinesBreakingNewsDistribution:
        'Breaking News Distribution',
    // Add other English labels here
  },
  'ar': {
    ChartCardId.usersRegistrationsOverTime: 'التسجيلات عبر الزمن',
    ChartCardId.contentHeadlinesViewsOverTime: 'المشاهدات عبر الزمن',
    ChartCardId.contentHeadlinesViewsByTopic: 'المشاهدات حسب الموضوع',
    ChartCardId.contentSourcesStatusDistribution: 'توزيع حالة المصادر',
    ChartCardId.contentHeadlinesBreakingNewsDistribution:
        'توزيع الأخبار العاجلة',
    // Add other Arabic labels here
  },
};
