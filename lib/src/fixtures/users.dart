import 'package:core/core.dart';

/// A list of initial user data to be loaded into the in-memory user repository.
///
/// This list includes a pre-configured administrator user, which is essential
/// for accessing the dashboard in a development environment.
final List<User> usersFixturesData = [
  User(
    id: kAdminUserId,
    email: 'admin@example.com',
    appRole: AppUserRole.premiumUser,
    dashboardRole: DashboardUserRole.admin,
    createdAt: DateTime.now(),
    feedDecoratorStatus: const {},
  ),
];
