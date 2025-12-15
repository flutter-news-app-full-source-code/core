import 'dart:math';

import 'package:core/core.dart';
import 'package:core/src/models/analytics/dashboard/ranked_list_item.dart';

/// Generates a list of predefined ranked list card data for fixture data.
///
/// This function can be configured to generate data in either English or
/// Arabic.
List<RankedListCardData> getRankedListCardsFixturesData({
  String languageCode = 'en',
}) {
  final resolvedLanguageCode = ['en', 'ar'].contains(languageCode)
      ? languageCode
      : 'en';
  final labels = _rankedListLabels[resolvedLanguageCode]!;

  final allHeadlines = getHeadlinesFixturesData(
    languageCode: resolvedLanguageCode,
  );
  final allSources = getSourcesFixturesData(languageCode: resolvedLanguageCode);
  final allTopics = getTopicsFixturesData(languageCode: resolvedLanguageCode);

  return [
    // --- Overview Page ---
    RankedListCardData(
      id: RankedListCardId.overviewHeadlinesMostViewed,
      label: labels[RankedListCardId.overviewHeadlinesMostViewed]!,
      timeFrames: {
        RankedListTimeFrame.day: _getRankedHeadlines(allHeadlines, 5, 1000),
        RankedListTimeFrame.week: _getRankedHeadlines(allHeadlines, 5, 7000),
        RankedListTimeFrame.month: _getRankedHeadlines(allHeadlines, 5, 30000),
        RankedListTimeFrame.year: _getRankedHeadlines(allHeadlines, 5, 365000),
      },
    ),
    RankedListCardData(
      id: RankedListCardId.overviewHeadlinesMostLiked,
      label: labels[RankedListCardId.overviewHeadlinesMostLiked]!,
      timeFrames: {
        RankedListTimeFrame.day: _getRankedHeadlines(allHeadlines, 5, 200),
        RankedListTimeFrame.week: _getRankedHeadlines(allHeadlines, 5, 1400),
        RankedListTimeFrame.month: _getRankedHeadlines(allHeadlines, 5, 6000),
        RankedListTimeFrame.year: _getRankedHeadlines(allHeadlines, 5, 72000),
      },
    ),
    RankedListCardData(
      id: RankedListCardId.overviewSourcesMostFollowed,
      label: labels[RankedListCardId.overviewSourcesMostFollowed]!,
      timeFrames: {
        RankedListTimeFrame.day: _getRankedSources(allSources, 5, 50),
        RankedListTimeFrame.week: _getRankedSources(allSources, 5, 350),
        RankedListTimeFrame.month: _getRankedSources(allSources, 5, 1500),
        RankedListTimeFrame.year: _getRankedSources(allSources, 5, 18000),
      },
    ),
    RankedListCardData(
      id: RankedListCardId.overviewTopicsMostFollowed,
      label: labels[RankedListCardId.overviewTopicsMostFollowed]!,
      timeFrames: {
        RankedListTimeFrame.day: _getRankedTopics(allTopics, 5, 80),
        RankedListTimeFrame.week: _getRankedTopics(allTopics, 5, 560),
        RankedListTimeFrame.month: _getRankedTopics(allTopics, 5, 2400),
        RankedListTimeFrame.year: _getRankedTopics(allTopics, 5, 29000),
      },
    ),
  ];
}

List<RankedListItem> _getRankedHeadlines(
  List<Headline> items,
  int count,
  int max,
) {
  final random = Random();
  items.shuffle(random);
  return items
      .take(count)
      .map(
        (item) => RankedListItem(
          entityId: item.id,
          displayTitle: item.title,
          metricValue: random.nextInt(max) + max * 0.5,
        ),
      )
      .toList()
    ..sort((a, b) => b.metricValue.compareTo(a.metricValue));
}

List<RankedListItem> _getRankedSources(List<Source> items, int count, int max) {
  final random = Random();
  items.shuffle(random);
  return items
      .take(count)
      .map(
        (item) => RankedListItem(
          entityId: item.id,
          displayTitle: item.name,
          metricValue: random.nextInt(max) + max * 0.5,
        ),
      )
      .toList()
    ..sort((a, b) => b.metricValue.compareTo(a.metricValue));
}

List<RankedListItem> _getRankedTopics(List<Topic> items, int count, int max) {
  final random = Random();
  items.shuffle(random);
  return items
      .take(count)
      .map(
        (item) => RankedListItem(
          entityId: item.id,
          displayTitle: item.name,
          metricValue: random.nextInt(max) + max * 0.5,
        ),
      )
      .toList()
    ..sort((a, b) => b.metricValue.compareTo(a.metricValue));
}

final Map<String, Map<RankedListCardId, String>> _rankedListLabels = {
  'en': {
    RankedListCardId.overviewHeadlinesMostViewed: 'Most Viewed Headlines',
    RankedListCardId.overviewHeadlinesMostLiked: 'Most Liked Headlines',
    RankedListCardId.overviewSourcesMostFollowed: 'Most Followed Sources',
    RankedListCardId.overviewTopicsMostFollowed: 'Most Followed Topics',
  },
  'ar': {
    RankedListCardId.overviewHeadlinesMostViewed: 'العناوين الأكثر مشاهدة',
    RankedListCardId.overviewHeadlinesMostLiked: 'العناوين الأكثر إعجابًا',
    RankedListCardId.overviewSourcesMostFollowed: 'المصادر الأكثر متابعة',
    RankedListCardId.overviewTopicsMostFollowed: 'المواضيع الأكثر متابعة',
  },
};
