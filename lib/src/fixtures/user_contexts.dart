import 'package:core/src/enums/feed_decorator_type.dart';
import 'package:core/src/fixtures/users.dart';
import 'package:core/src/models/auth/user_context.dart';
import 'package:core/src/models/auth/user_feed_decorator_status.dart';

final _defaultFeedDecoratorStatus = {
  for (var type in FeedDecoratorType.values)
    type: const UserFeedDecoratorStatus(isCompleted: false),
};

/// Generates a list of [UserContext] fixtures corresponding to the
/// [usersFixturesData].
///
/// Each user in the system gets a default context initialized with
/// empty/false states for all feed decorators.
final List<UserContext> userContextsFixturesData = usersFixturesData
    .map(
      (user) => UserContext(
        id: user.id,
        userId: user.id,
        feedDecoratorStatus: _defaultFeedDecoratorStatus,
        hasCompletedInitialPersonalization: true,
        lastSeenAppVersion: '1.0.0',
      ),
    )
    .toList();
