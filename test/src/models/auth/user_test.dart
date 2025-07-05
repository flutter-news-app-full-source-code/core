import 'package:ht_shared/src/models/auth/user.dart';
import 'package:ht_shared/src/models/auth/user_role.dart';
import 'package:test/test.dart';

void main() {
  group('User Model', () {
    const id = 'test-id';
    const email = 'test@example.com';
    const standardRoles = [UserRoles.standardUser];
    const guestRoles = [UserRoles.guestUser];
    const adminRoles = [UserRoles.admin, UserRoles.standardUser];
    final testCreatedAt = DateTime.utc(2023);
    final testLastEngagementShownAt = DateTime.utc(2023, 1, 2);

    test('supports value equality', () {
      expect(
        User(
          id: id,
          email: email,
          roles: standardRoles,
          createdAt: testCreatedAt,
          lastAccountActionShownAt: testLastEngagementShownAt,
        ),
        equals(
          User(
            id: id,
            email: email,
            roles: standardRoles,
            createdAt: testCreatedAt,
            lastAccountActionShownAt: testLastEngagementShownAt,
          ),
        ),
      );
      expect(
        const User(id: id, email: email, roles: standardRoles),
        isNot(
          equals(
            const User(id: 'other-id', email: email, roles: standardRoles),
          ),
        ),
      );
      expect(
        const User(id: id, email: email, roles: standardRoles),
        isNot(
          equals(
            const User(
              id: id,
              email: 'other@example.com',
              roles: standardRoles,
            ),
          ),
        ),
      );
      expect(
        const User(id: id, email: email, roles: standardRoles),
        isNot(equals(const User(id: id, email: email, roles: guestRoles))),
      );
      expect(
        const User(id: id, email: email, roles: standardRoles),
        isNot(equals(const User(id: id, email: email, roles: adminRoles))),
      );
      expect(
        User(
          id: id,
          email: email,
          roles: standardRoles,
          lastAccountActionShownAt: testLastEngagementShownAt,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              roles: standardRoles,
              lastAccountActionShownAt: DateTime.utc(2024),
            ),
          ),
        ),
      );
    });

    test('props are correct', () {
      final user = User(
        id: id,
        email: email,
        roles: standardRoles,
        createdAt: testCreatedAt,
        lastAccountActionShownAt: testLastEngagementShownAt,
      );
      expect(user.props, [
        id,
        email,
        standardRoles,
        testCreatedAt,
        testLastEngagementShownAt,
      ]);
    });

    test('has correct toString', () {
      expect(
        const User(id: id, email: email, roles: standardRoles).toString(),
        equals(
          'User(id: $id, email: $email, roles: $standardRoles, createdAt: null, lastEngagementShownAt: null)',
        ),
      );
      expect(
        const User(id: id, roles: guestRoles).toString(),
        equals(
          'User(id: $id, email: null, roles: $guestRoles, createdAt: null, lastEngagementShownAt: null)',
        ),
      );
      expect(
        const User(id: id, roles: adminRoles).toString(),
        equals(
          'User(id: $id, email: null, roles: $adminRoles, createdAt: null, lastEngagementShownAt: null)',
        ),
      );
      expect(
        User(
          id: id,
          email: email,
          roles: standardRoles,
          createdAt: testCreatedAt,
          lastAccountActionShownAt: testLastEngagementShownAt,
        ).toString(),
        equals(
          'User(id: $id, email: $email, roles: $standardRoles, createdAt: $testCreatedAt, lastEngagementShownAt: $testLastEngagementShownAt)',
        ),
      );
    });

    group('copyWith', () {
      test('copies all fields', () {
        final original = User(
          id: id,
          email: email,
          roles: standardRoles,
          createdAt: testCreatedAt,
          lastAccountActionShownAt: testLastEngagementShownAt,
        );
        final copy = original.copyWith();
        expect(copy, equals(original));
      });

      test('updates specified fields', () {
        const original = User(id: id, roles: standardRoles);
        const newEmail = 'new@example.com';
        const newRoles = [UserRoles.premiumUser];
        final newCreatedAt = DateTime.utc(2024);
        final newLastEngagementShownAt = DateTime.utc(2024, 1, 2);

        final copied = original.copyWith(
          email: newEmail,
          roles: newRoles,
          createdAt: newCreatedAt,
          lastEngagementShownAt: newLastEngagementShownAt,
        );

        expect(copied.id, id);
        expect(copied.email, newEmail);
        expect(copied.roles, newRoles);
        expect(copied.createdAt, newCreatedAt);
        expect(copied.lastAccountActionShownAt, newLastEngagementShownAt);
      });
    });

    test('can be serialized and deserialized', () {
      final user = User(
        id: id,
        email: email,
        roles: standardRoles,
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

      const anonUser = User(id: id, roles: guestRoles);
      final anonJson = anonUser.toJson();
      final deserializedAnonUser = User.fromJson(anonJson);
      expect(deserializedAnonUser, equals(anonUser));
      expect(deserializedAnonUser.lastAccountActionShownAt, isNull);

      const adminUser = User(id: id, email: email, roles: adminRoles);
      final adminJson = adminUser.toJson();
      final deserializedAdminUser = User.fromJson(adminJson);
      expect(deserializedAdminUser, equals(adminUser));
    });
  });
}
