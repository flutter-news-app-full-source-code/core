import 'package:core/core.dart';

/// A list of initial interest data to be loaded into the in-memory
/// data repository.
final List<Interest> interestsFixturesData = [
  Interest(
    id: kInterestId1,
    userId: kAdminUserId,
    name: 'Tech News',
    criteria: InterestCriteria(
      topics: [topicsFixturesData[0]], // Technology
      sources: [sourcesFixturesData[0]], // TechCrunch
      countries: const [],
    ),
    isFeedFilter: true,
    deliveryTypes: const {
      PushNotificationSubscriptionDeliveryType.breakingOnly,
    },
  ),
  Interest(
    id: kInterestId2,
    userId: kAdminUserId,
    name: 'World Biz',
    criteria: InterestCriteria(
      topics: [topicsFixturesData[6]], // Business
      sources: const [],
      countries: const [],
    ),
    isFeedFilter: true,
    deliveryTypes: const {},
  ),
  Interest(
    id: kInterestId3,
    userId: kAdminUserId,
    name: 'ESPN Sports',
    criteria: InterestCriteria(
      topics: [topicsFixturesData[1]], // Sports
      sources: [sourcesFixturesData[40]], // ESPN
      countries: const [],
    ),
    isFeedFilter: true,
    deliveryTypes: const {PushNotificationSubscriptionDeliveryType.dailyDigest},
  ),
  Interest(
    id: kInterestId4,
    userId: kAdminUserId,
    name: 'Science News',
    criteria: InterestCriteria(
      topics: [topicsFixturesData[3]], // Science
      sources: const [],
      countries: const [],
    ),
    isFeedFilter: true,
    deliveryTypes: const {},
  ),
  Interest(
    id: kInterestId5,
    userId: kAdminUserId,
    name: 'Political News',
    criteria: InterestCriteria(
      topics: [topicsFixturesData[2]], // Politics
      sources: [
        sourcesFixturesData[1], // BBC News
        sourcesFixturesData[2], // The New York Times
      ],
      countries: const [],
    ),
    isFeedFilter: true,
    deliveryTypes: const {},
  ),
  Interest(
    id: kInterestId6,
    userId: kUser1Id,
    name: 'My Tech Feed',
    criteria: InterestCriteria(
      topics: [topicsFixturesData[0]], // Technology
      sources: [sourcesFixturesData[0]], // TechCrunch
      countries: const [],
    ),
    isFeedFilter: true,
    deliveryTypes: const {},
  ),
];
