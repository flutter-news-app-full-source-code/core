import 'package:ht_shared/src/enums/app_user_role.dart';
import 'package:ht_shared/src/enums/dashboard_user_role.dart';
import 'package:ht_shared/src/models/auth/user.dart';
import 'package:test/test.dart';

void main() {
  group('User Model', () {
    const id = 'test-id';
    const email = 'test@example.com';
    const appRoleStandard = AppUserRole.standardUser;
    const appRoleGuest = AppUserRole.guestUser;
    const appRolePremium = AppUserRole.premiumUser;
    const dashboardRoleAdmin = DashboardUserRole.admin;
    const dashboardRoleNone = DashboardUserRole.none;
    final testCreatedAt = DateTime.utc(2023);
    final testLastEngagementShownAt = DateTime.utc(2023, 1, 2);

    test('supports value equality', () {
      expect(
        User(
          id: id,
          email: email,
          appRole: appRoleStandard,
          dashboardRole: dashboardRoleNone,
          createdAt: testCreatedAt,
          lastAccountActionShownAt: testLastEngagementShownAt,
        ),
        equals(
          User(
            id: id,
            email: email,
            appRole: appRoleStandard,
            dashboardRole: dashboardRoleNone,
            createdAt: testCreatedAt,
            lastAccountActionShownAt: testLastEngagementShownAt,
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
          lastAccountActionShownAt: testLastEngagementShownAt,
        ),
        isNot(
          equals(
            User(
              id: 'other-id',
              email: email,
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleNone,
              createdAt: testCreatedAt,
              lastAccountActionShownAt: testLastEngagementShownAt,
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
          lastAccountActionShownAt: testLastEngagementShownAt,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: 'other@example.com',
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleNone,
              createdAt: testCreatedAt,
              lastAccountActionShownAt: testLastEngagementShownAt,
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
          lastAccountActionShownAt: testLastEngagementShownAt,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              appRole: appRoleGuest,
              dashboardRole: dashboardRoleNone,
              createdAt: testCreatedAt,
              lastAccountActionShownAt: testLastEngagementShownAt,
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
          lastAccountActionShownAt: testLastEngagementShownAt,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleAdmin,
              createdAt: testCreatedAt,
              lastAccountActionShownAt: testLastEngagementShownAt,
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
          lastAccountActionShownAt: testLastEngagementShownAt,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              appRole: appRoleStandard,
              dashboardRole: dashboardRoleNone,
              createdAt: DateTime.utc(2024),
              lastAccountActionShownAt: testLastEngagementShownAt,
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
        lastAccountActionShownAt: testLastEngagementShownAt,
      );
      expect(user.props, [
        id,
        email,
        appRoleStandard,
        dashboardRoleNone,
        testCreatedAt,
        testLastEngagementShownAt,
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
          lastAccountActionShownAt: testLastEngagementShownAt,
        ).toString(),
        equals(
          'User(id: $id, email: $email, appRole: $appRoleStandard, '
          'dashboardRole: $dashboardRoleNone, createdAt: $testCreatedAt, '
          'lastAccountActionShownAt: $testLastEngagementShownAt)',
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
          lastAccountActionShownAt: testLastEngagementShownAt,
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
          lastAccountActionShownAt: testLastEngagementShownAt,
        );
        const newEmail = 'new@example.com';
        const newAppRole = AppUserRole.premiumUser;
        const newDashboardRole = DashboardUserRole.admin;
        final newCreatedAt = DateTime.utc(2024);
        final newLastAccountActionShownAt = DateTime.utc(2024, 1, 2);

        final copied = original.copyWith(
          email: newEmail,
          appRole: newAppRole,
          dashboardRole: newDashboardRole,
          createdAt: newCreatedAt,
          lastAccountActionShownAt: newLastAccountActionShownAt,
        );

        expect(copied.id, id);
        expect(copied.email, newEmail);
        expect(copied.appRole, newAppRole);
        expect(copied.dashboardRole, newDashboardRole);
        expect(copied.createdAt, newCreatedAt);
        expect(copied.lastAccountActionShownAt, newLastAccountActionShownAt);
      });
    });

    test('can be serialized and deserialized', () {
      final user = User(
        id: id,
        email: email,
        appRole: appRoleStandard,
        dashboardRole: dashboardRoleNone,
        createdAt: testCreatedAt,
        lastAccountActionShownAt: testLastEngagementShownAt,
      );
      final json = user.toJson();
      final deserializedUser = User.fromJson(json);
      expect(deserializedUser, equals(user));
      expect(
        deserializedUser.lastAccountActionShownAt,
        testLastEngagementShownAt,
      );

      final anonUser = User(
        id: id,
        email: email,
        appRole: appRoleGuest,
        dashboardRole: dashboardRoleNone,
        createdAt: testCreatedAt,
        lastAccountActionShownAt: testCreatedAt,
      );
      final anonJson = anonUser.toJson();
      final deserializedAnonUser = User.fromJson(anonJson);
      expect(deserializedAnonUser, equals(anonUser));
      expect(deserializedAnonUser.lastAccountActionShownAt, testCreatedAt);

      final adminUser = User(
        id: id,
        email: email,
        appRole: appRolePremium,
        dashboardRole: dashboardRoleAdmin,
        createdAt: testCreatedAt,
        lastAccountActionShownAt: testLastEngagementShownAt,
      );
      final adminJson = adminUser.toJson();
      final deserializedAdminUser = User.fromJson(adminJson);
      expect(deserializedAdminUser, equals(adminUser));
    });
  });
}
