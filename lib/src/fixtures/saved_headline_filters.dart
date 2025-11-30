import 'package:core/core.dart';

/// Generates a list of predefined saved headline filters for fixture data.
List<SavedHeadlineFilter> getSavedHeadlineFiltersFixturesData({
  String languageCode = 'en',
}) {
  final resolvedLanguageCode = ['en', 'ar'].contains(languageCode)
      ? languageCode
      : 'en';
  final topics = getTopicsFixturesData(languageCode: resolvedLanguageCode);

  final namesByLang = {
    'en': ['US Tech News', 'Global Business'],
    'ar': ['أخبار التكنولوجيا الأمريكية', 'أعمال عالمية'],
  };

  return <SavedHeadlineFilter>[
    SavedHeadlineFilter(
      id: kSavedHeadlineFilterId1,
      userId: kAdminUserId,
      name: namesByLang[resolvedLanguageCode]![0],
      isPinned: true,
      deliveryTypes: const {
        PushNotificationSubscriptionDeliveryType.breakingOnly,
      },
      criteria: HeadlineFilterCriteria(
        topics: [topics[0]], // Technology
        sources: const [],
        countries: [countriesFixturesData[0]], // United States
      ),
    ),
    SavedHeadlineFilter(
      id: kSavedHeadlineFilterId2,
      userId: kUser1Id,
      name: namesByLang[resolvedLanguageCode]![1],
      isPinned: false,
      deliveryTypes: const {
        PushNotificationSubscriptionDeliveryType.breakingOnly,
      },
      criteria: HeadlineFilterCriteria(
        topics: [topics[6]], // Business
        sources: const [],
        countries: const [],
      ),
    ),
  ];
}
