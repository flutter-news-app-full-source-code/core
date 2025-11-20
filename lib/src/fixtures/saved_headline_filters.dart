import 'package:core/core.dart';

/// A list of predefined saved headline filters for fixture data.
final savedHeadlineFiltersFixturesData = <SavedHeadlineFilter>[
  SavedHeadlineFilter(
    id: kSavedHeadlineFilterId1,
    userId: kAdminUserId,
    name: 'US Tech News',
    isPinned: true,
    deliveryTypes: const {
      PushNotificationSubscriptionDeliveryType.breakingOnly,
    },
    criteria: HeadlineFilterCriteria(
      topics: [topicsFixturesData[0]], // Technology
      sources: const [],
      countries: [countriesFixturesData[0]], // United States
    ),
  ),
  SavedHeadlineFilter(
    id: kSavedHeadlineFilterId2,
    userId: kUser1Id,
    name: 'Global Business',
    isPinned: false,
    deliveryTypes: const {
      PushNotificationSubscriptionDeliveryType.breakingOnly,
    },
    criteria: HeadlineFilterCriteria(
      topics: [topicsFixturesData[6]], // Business
      sources: const [],
      countries: const [],
    ),
  ),
];
