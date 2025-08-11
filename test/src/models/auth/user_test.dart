import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('User Model', () {
    final adminUserFixture = usersFixturesData.first;

    test('supports value equality', () {
      final user1 = adminUserFixture.copyWith();
      final user2 = adminUserFixture.copyWith();
      expect(user1, equals(user2));
    });

    test('props are correct', () {
      expect(adminUserFixture.props, [
        adminUserFixture.id,
        adminUserFixture.email,
        adminUserFixture.appRole,
        adminUserFixture.dashboardRole,
        adminUserFixture.createdAt,
        adminUserFixture.feedDecoratorStatus,
      ]);
    });

    test('has correct toString', () {
      expect(
        adminUserFixture.toString(),
        equals(
          'User(id: ${adminUserFixture.id}, email: ${adminUserFixture.email}, appRole: ${adminUserFixture.appRole}, '
          'dashboardRole: ${adminUserFixture.dashboardRole}, createdAt: ${adminUserFixture.createdAt}, '
          'feedDecoratorStatus: ${adminUserFixture.feedDecoratorStatus})',
        ),
      );
    });

    group('copyWith', () {
      test('copies all fields', () {
        final copy = adminUserFixture.copyWith();
        expect(copy, equals(adminUserFixture));
      });

      test('updates specified fields', () {
        const newEmail = 'new@example.com';
        const newAppRole = AppUserRole.premiumUser;
        const newDashboardRole = DashboardUserRole.admin;
        final newCreatedAt = DateTime.utc(2024);
        final newFeedDecoratorStatus = {
          FeedDecoratorType.linkAccount: UserFeedDecoratorStatus(
            lastShownAt: DateTime.utc(2024, 1, 2),
            isCompleted: true,
          ),
        };

        final copied = adminUserFixture.copyWith(
          email: newEmail,
          appRole: newAppRole,
          dashboardRole: newDashboardRole,
          createdAt: newCreatedAt,
          feedDecoratorStatus: newFeedDecoratorStatus,
        );

        expect(copied.id, adminUserFixture.id);
        expect(copied.email, newEmail);
        expect(copied.appRole, newAppRole);
        expect(copied.dashboardRole, newDashboardRole);
        expect(copied.createdAt, newCreatedAt);
        expect(copied.feedDecoratorStatus, newFeedDecoratorStatus);
      });
    });

    group('JSON serialization', () {
      test('works correctly with a complete status map', () {
        final json = adminUserFixture.toJson();
        final deserializedUser = User.fromJson(json);

        // Compare individual properties since fromJson hydrates the status map
        expect(deserializedUser.id, equals(adminUserFixture.id));
        expect(deserializedUser.email, equals(adminUserFixture.email));
        expect(deserializedUser.appRole, equals(adminUserFixture.appRole));
        expect(
          deserializedUser.dashboardRole,
          equals(adminUserFixture.dashboardRole),
        );
        expect(deserializedUser.createdAt, equals(adminUserFixture.createdAt));

        // Verify that the map is hydrated
        expect(
          deserializedUser.feedDecoratorStatus.length,
          equals(FeedDecoratorType.values.length),
        );
      });

      test('deserializes from incomplete JSON and hydrates the map', () {
        // JSON with only one action status defined
        final incompleteJson = <String, dynamic>{
          'id': 'test-id',
          'email': 'test@example.com',
          'appRole': 'standardUser',
          'dashboardRole': 'none',
          'createdAt': DateTime.utc(2023).toIso8601String(),
          'feedDecoratorStatus': {
            'linkAccount': {
              'lastShownAt': DateTime.utc(2023, 1, 2).toIso8601String(),
              'isCompleted': true,
            },
          },
        };

        final user = User.fromJson(incompleteJson);

        // Check that the map is now complete
        expect(
          user.feedDecoratorStatus.length,
          FeedDecoratorType.values.length,
        );
        expect(
          user.feedDecoratorStatus.keys,
          containsAll(FeedDecoratorType.values),
        );

        // Check the value that was present in the JSON
        expect(
          user.feedDecoratorStatus[FeedDecoratorType.linkAccount],
          equals(
            UserFeedDecoratorStatus(
              lastShownAt: DateTime.utc(2023, 1, 2),
              isCompleted: true,
            ),
          ),
        );

        // Check one of the hydrated default values
        expect(
          user.feedDecoratorStatus[FeedDecoratorType.rateApp],
          equals(const UserFeedDecoratorStatus(isCompleted: false)),
        );
        expect(
          user.feedDecoratorStatus[FeedDecoratorType.upgrade],
          equals(const UserFeedDecoratorStatus(isCompleted: false)),
        );
      });
    });
  });
}
