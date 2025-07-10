import 'package:ht_shared/ht_shared.dart';

/// A list of initial user data to be loaded into the in-memory user repository.
///
/// This list includes a pre-configured administrator user, which is essential
/// for accessing the dashboard in a development environment.
final List<User> usersFixturesData = [
  // The initial administrator user.
  User(
    id: 'admin-user-id', // A fixed, predictable ID for the admin.
    email: 'admin@example.com',
    appRole: AppUserRole.standardUser,
    dashboardRole: DashboardUserRole.admin,
    createdAt: DateTime.now().toUtc(),
    feedActionStatus: const {
      FeedActionType.linkAccount: UserFeedActionStatus(isCompleted: false),
      FeedActionType.upgrade: UserFeedActionStatus(isCompleted: false),
      FeedActionType.rateApp: UserFeedActionStatus(isCompleted: false),
      FeedActionType.enableNotifications: UserFeedActionStatus(
        isCompleted: false,
      ),
    },
  ),
  // Add other initial users for testing if needed.
  // Example: A standard user
  // User( ... ),
];
