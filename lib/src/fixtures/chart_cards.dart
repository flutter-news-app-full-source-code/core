import 'dart:math';

import 'package:core/src/enums/enums.dart';
import 'package:core/src/fixtures/fixtures.dart';
import 'package:core/src/models/analytics/dashboard/chart_card_data.dart';
import 'package:core/src/models/analytics/dashboard/data_point.dart';

/// Generates a list of predefined chart card data for fixture data.
///
/// This function can be configured to generate data in either English or
/// Arabic.
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
  ];
}

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

List<DataPoint> _generateCategoricalSeries(List<String> categories, int max) {
  final random = Random();
  return categories
      .map(
        (category) =>
            DataPoint(label: category, value: random.nextInt(max) + max * 0.1),
      )
      .toList();
}

final Map<String, Map<ChartCardId, String>> _chartLabels = {
  'en': {
    ChartCardId.usersRegistrationsOverTime: 'Registrations Over Time',
    ChartCardId.contentHeadlinesViewsOverTime: 'Views Over Time',
    ChartCardId.contentHeadlinesViewsByTopic: 'Views by Topic',
    // Add other English labels here
  },
  'ar': {
    ChartCardId.usersRegistrationsOverTime: 'التسجيلات عبر الزمن',
    ChartCardId.contentHeadlinesViewsOverTime: 'المشاهدات عبر الزمن',
    ChartCardId.contentHeadlinesViewsByTopic: 'المشاهدات حسب الموضوع',
    // Add other Arabic labels here
  },
};
