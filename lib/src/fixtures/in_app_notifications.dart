import 'package:core/core.dart';

// Helper to find a headline by its ID from the fixtures.
// This avoids repetitive code and ensures we're using the headline data.
Headline _headlineById(String id) {
  return headlinesFixturesData.firstWhere((headline) => headline.id == id);
}

/// A list of initial in-app notification data to be loaded into the in-memory
/// data repository.
///
/// This data provides realistic, client-facing notifications for users,
/// suitable for a news app demo environment.
final List<InAppNotification> inAppNotificationsFixturesData = [
  // --- Notifications for User: kAdminUserId ---

  // 1. Unread Breaking News Notification
  InAppNotification(
    id: kInAppNotificationId1,
    userId: kAdminUserId,
    payload: PushNotificationPayload(
      title: _headlineById(kHeadlineId11).title,
      body: _headlineById(kHeadlineId11).excerpt,
      imageUrl: _headlineById(kHeadlineId11).imageUrl,
      data: const {'contentType': 'headline', 'id': kHeadlineId11},
    ),
    createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
    readAt: null,
  ),
  // 2. Read Notification on a followed topic (Science)
  InAppNotification(
    id: kInAppNotificationId2,
    userId: kAdminUserId,
    payload: PushNotificationPayload(
      title: _headlineById(kHeadlineId24).title,
      body: _headlineById(kHeadlineId24).excerpt,
      imageUrl: _headlineById(kHeadlineId24).imageUrl,
      data: const {'contentType': 'headline', 'id': kHeadlineId24},
    ),
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    readAt: DateTime.now().subtract(const Duration(hours: 12)),
  ),
  // 3. Unread Notification on another followed topic (Business/Tech)
  InAppNotification(
    id: kInAppNotificationId3,
    userId: kAdminUserId,
    payload: PushNotificationPayload(
      title: _headlineById(kHeadlineId37).title,
      body: _headlineById(kHeadlineId37).excerpt,
      imageUrl: _headlineById(kHeadlineId37).imageUrl,
      data: const {'contentType': 'headline', 'id': kHeadlineId37},
    ),
    createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    readAt: null,
  ),

  // --- Notifications for User: kUser1Id ---
  // 4. Unread Breaking News Notification
  InAppNotification(
    id: kInAppNotificationId4,
    userId: kUser1Id,
    payload: PushNotificationPayload(
      title: _headlineById(kHeadlineId1).title,
      body: _headlineById(kHeadlineId1).excerpt,
      imageUrl: _headlineById(kHeadlineId1).imageUrl,
      data: const {'contentType': 'headline', 'id': kHeadlineId1},
    ),
    createdAt: DateTime.now().subtract(const Duration(minutes: 5)),
    readAt: null,
  ),
  // 5. Read Notification on a followed topic (Sports)
  InAppNotification(
    id: kInAppNotificationId5,
    userId: kUser1Id,
    payload: PushNotificationPayload(
      title: _headlineById(kHeadlineId2).title,
      body: _headlineById(kHeadlineId2).excerpt,
      imageUrl: _headlineById(kHeadlineId2).imageUrl,
      data: const {'contentType': 'headline', 'id': kHeadlineId2},
    ),
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    readAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  // 6. Unread Notification on another followed topic (Business)
  InAppNotification(
    id: kInAppNotificationId6,
    userId: kUser1Id,
    payload: PushNotificationPayload(
      title: _headlineById(kHeadlineId7).title,
      body: _headlineById(kHeadlineId7).excerpt,
      imageUrl: _headlineById(kHeadlineId7).imageUrl,
      data: const {'contentType': 'headline', 'id': kHeadlineId7},
    ),
    createdAt: DateTime.now().subtract(const Duration(hours: 4)),
    readAt: null,
  ),
];
