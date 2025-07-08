import 'package:ht_shared/src/enums/app_user_role.dart';
import 'package:ht_shared/src/enums/dashboard_user_role.dart';
import 'package:ht_shared/src/enums/feed_action_type.dart';
import 'package:ht_shared/src/models/auth/user.dart';
import 'package:ht_shared/src/models/auth/user_feed_action_status.dart';
import 'package:test/test.dart';

void main() {
  group('User Model', () {
    const id = 'test-id';
    const email = 'test@example.com';
    const appRoleStandard = AppUserRole.standardUser;
    const appRoleGuest = AppUserRole.guestUser;
    const dashboardRoleAdmin = DashboardUserRole.admin;
    const dashboardRoleNone = DashboardUserRole.none;
    final testCreatedAt = DateTime.utc(2023);

    // A complete map, as would exist on a User object after creation.
    final completeFeedActionStatus = {
      FeedActionType.linkAccount: UserFeedActionStatus(
        lastShownAt: DateTime.utc(2023, 1, 2),
        isCompleted: false,
      ),
      FeedActionType.upgrade: const UserFeedActionStatus(isCompleted: false),
      FeedActionType.rateApp: const UserFeedActionStatus(isCompleted: false),
      FeedActionType.enableNotifications: const UserFeedActionStatus(
        isCompleted: false,
      ),
      FeedActionType.followTopics: const UserFeedActionStatus(
        isCompleted: false,
      ),
      FeedActionType.followSources: const UserFeedActionStatus(
        isCompleted: false,
      ),
    };

    final otherCompleteFeedActionStatus = {
      FeedActionType.linkAccount: UserFeedActionStatus(
        lastShownAt: DateTime.utc(2024, 1, 2),
        isCompleted: true,
      ),
      FeedActionType.upgrade: const UserFeedActionStatus(isCompleted: true),
      FeedActionType.rateApp: const UserFeedActionStatus(isCompleted: false),
      FeedActionType.enableNotifications: const UserFeedActionStatus(
        isCompleted: true,
      ),
      FeedActionType.followTopics: const UserFeedActionStatus(
        isCompleted: true,
      ),
      FeedActionType.followSources: const UserFeedActionStatus(
        isCompleted: false,
      ),
    };

    test('supports value equality', () {
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        ),
        equals(
          User(
            id: id,
            email: email,
            appRole: appRoleStandard,
            dashboardRole: dashboardRoleNone,
            createdAt: testCreatedAt,
            feedActionStatus: completeFeedActionStatus,
          ),
        ),
      );
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        ),
        isNot(
          equals(
            User(
              id: 'other-id',
              email: email,
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleNone,
              createdAt: testCreatedAt,
              feedActionStatus: completeFeedActionStatus,
            ),
          ),
        ),
      );
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: 'other@example.com',
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleNone,
              createdAt: testCreatedAt,
              feedActionStatus: completeFeedActionStatus,
            ),
          ),
        ),
      );
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              appRole: appRoleGuest,
              dashboardRole: dashboardRoleNone,
              createdAt: testCreatedAt,
              feedActionStatus: completeFeedActionStatus,
            ),
          ),
        ),
      );
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleAdmin,
              createdAt: testCreatedAt,
              feedActionStatus: completeFeedActionStatus,
            ),
          ),
        ),
      );
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleNone,
              createdAt: DateTime.utc(2024),
              feedActionStatus: completeFeedActionStatus,
            ),
          ),
        ),
      );
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleNone,
              createdAt: testCreatedAt,
              feedActionStatus: otherCompleteFeedActionStatus,
            ),
          ),
        ),
      );
    });

    test('props are correct', () {
      final user = User(
        id: id,
        email: email,
        appRole: appRoleStandard,
        dashboardRole: dashboardRoleNone,
        createdAt: testCreatedAt,
        feedActionStatus: completeFeedActionStatus,
      );
      expect(user.props, [
        id,
        email,
        appRoleStandard,
        dashboardRoleNone,
        testCreatedAt,
        completeFeedActionStatus,
      ]);
    });

    test('has correct toString', () {
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        ).toString(),
        equals(
          'User(id: $id, email: $email, appRole: $appRoleStandard, '
          'dashboardRole: $dashboardRoleNone, createdAt: $testCreatedAt, '
          'feedActionStatus: $completeFeedActionStatus)',
        ),
      );
    });

    group('copyWith', () {
      test('copies all fields', () {
        final original = User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        );
        final copy = original.copyWith();
        expect(copy, equals(original));
      });

      test('updates specified fields', () {
        final original = User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        );
        const newEmail = 'new@example.com';
        const newAppRole = AppUserRole.premiumUser;
        const newDashboardRole = DashboardUserRole.admin;
        final newCreatedAt = DateTime.utc(2024);
        final newFeedActionStatus = otherCompleteFeedActionStatus;

        final copied = original.copyWith(
          email: newEmail,
          appRole: newAppRole,
          dashboardRole: newDashboardRole,
          createdAt: newCreatedAt,
          feedActionStatus: newFeedActionStatus,
        );

        expect(copied.id, id);
        expect(copied.email, newEmail);
        expect(copied.appRole, newAppRole);
        expect(copied.dashboardRole, newDashboardRole);
        expect(copied.createdAt, newCreatedAt);
        expect(copied.feedActionStatus, newFeedActionStatus);
      });
    });

    group('JSON serialization', () {
      test('works correctly with a complete status map', () {
        final user = User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          feedActionStatus: completeFeedActionStatus,
        );
        final json = user.toJson();
        final deserializedUser = User.fromJson(json);
        expect(deserializedUser, equals(user));
      });

      test('deserializes from incomplete JSON and hydrates the map', () {
        // JSON with only one action status defined
        final incompleteJson = {
          'id': 'test-id',
          'email': 'test@example.com',
          'appRole': 'standardUser',
          'dashboardRole': 'none',
          'createdAt': DateTime.utc(2023).toIso8601String(),
          'feedActionStatus': {
            'linkAccount': {
              'lastShownAt': DateTime.utc(2023, 1, 2).toIso8601String(),
              'isCompleted': true,
            },
          },
        };

        final user = User.fromJson(incompleteJson);

        // Check that the map is now complete
        expect(user.feedActionStatus.length, FeedActionType.values.length);
        expect(user.feedActionStatus.keys, containsAll(FeedActionType.values));

        // Check the value that was present in the JSON
        expect(
          user.feedActionStatus[FeedActionType.linkAccount],
          equals(
            UserFeedActionStatus(
              lastShownAt: DateTime.utc(2023, 1, 2),
              isCompleted: true,
            ),
          ),
        );

        // Check one of the hydrated default values
        expect(
          user.feedActionStatus[FeedActionType.rateApp],
          equals(const UserFeedActionStatus(isCompleted: false)),
        );
        expect(
          user.feedActionStatus[FeedActionType.upgrade],
          equals(const UserFeedActionStatus(isCompleted: false)),
        );
      });
    });
  });
}
