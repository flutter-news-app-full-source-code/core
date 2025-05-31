import 'package:ht_shared/src/models/auth/user.dart';
import 'package:ht_shared/src/models/auth/user_role.dart';
import 'package:test/test.dart';

void main() {
  group('User Model', () {
    const id = 'test-id';
    const email = 'test@example.com';
    const standardRole = UserRole.standardUser;
    const guestRole = UserRole.guestUser;
    const adminRole = UserRole.admin;
    final testCreatedAt = DateTime.utc(2023, 1, 1);
    final testLastEngagementShownAt = DateTime.utc(2023, 1, 2);

    test('supports value equality', () {
      expect(
        User(
          id: id,
          email: email,
          role: standardRole,
          createdAt: testCreatedAt,
          lastEngagementShownAt: testLastEngagementShownAt,
        ),
        equals(
          User(
            id: id,
            email: email,
            role: standardRole,
            createdAt: testCreatedAt,
            lastEngagementShownAt: testLastEngagementShownAt,
          ),
        ),
      );
      expect(
        User(id: id, email: email, role: standardRole),
        isNot(
          equals(User(id: 'other-id', email: email, role: standardRole)),
        ),
      );
      expect(
        User(id: id, email: email, role: standardRole),
        isNot(
          equals(
            User(id: id, email: 'other@example.com', role: standardRole),
          ),
        ),
      );
      expect(
        User(id: id, email: email, role: standardRole),
        isNot(equals(User(id: id, email: email, role: guestRole))),
      );
      expect(
        User(id: id, email: email, role: standardRole),
        isNot(equals(User(id: id, email: email, role: adminRole))),
      );
      expect(
        User(
          id: id,
          email: email,
          role: standardRole,
          lastEngagementShownAt: testLastEngagementShownAt,
        ),
        isNot(
          equals(
            User(
              id: id,
              email: email,
              role: standardRole,
              lastEngagementShownAt: DateTime.utc(2024),
            ),
          ),
        ),
      );
    });

    test('props are correct', () {
      final user = User(
        id: id,
        email: email,
        role: standardRole,
        createdAt: testCreatedAt,
        lastEngagementShownAt: testLastEngagementShownAt,
      );
      expect(user.props, [
        id,
        email,
        standardRole,
        testCreatedAt,
        testLastEngagementShownAt,
      ]);
    });

    test('has correct toString', () {
      expect(
        User(id: id, email: email, role: standardRole).toString(),
        equals(
          'User(id: $id, email: $email, role: $standardRole, createdAt: null, lastEngagementShownAt: null)',
        ),
      );
      expect(
        User(id: id, role: guestRole).toString(),
        equals(
            'User(id: $id, email: null, role: $guestRole, createdAt: null, lastEngagementShownAt: null)'),
      );
      expect(
        User(id: id, role: adminRole).toString(),
        equals(
            'User(id: $id, email: null, role: $adminRole, createdAt: null, lastEngagementShownAt: null)'),
      );
      expect(
        User(
          id: id,
          email: email,
          role: standardRole,
          createdAt: testCreatedAt,
          lastEngagementShownAt: testLastEngagementShownAt,
        ).toString(),
        equals(
          'User(id: $id, email: $email, role: $standardRole, createdAt: $testCreatedAt, lastEngagementShownAt: $testLastEngagementShownAt)',
        ),
      );
    });

    group('copyWith', () {
      test('copies all fields', () {
        final original = User(
          id: id,
          email: email,
          role: standardRole,
          createdAt: testCreatedAt,
          lastEngagementShownAt: testLastEngagementShownAt,
        );
        final copy = original.copyWith();
        expect(copy, equals(original));
      });

      test('updates specified fields', () {
        final original = User(id: id, role: standardRole);
        final newEmail = 'new@example.com';
        final newRole = UserRole.premiumUser;
        final newCreatedAt = DateTime.utc(2024);
        final newLastEngagementShownAt = DateTime.utc(2024, 1, 2);

        final copied = original.copyWith(
          email: newEmail,
          role: newRole,
          createdAt: newCreatedAt,
          lastEngagementShownAt: newLastEngagementShownAt,
        );

        expect(copied.id, id);
        expect(copied.email, newEmail);
        expect(copied.role, newRole);
        expect(copied.createdAt, newCreatedAt);
        expect(copied.lastEngagementShownAt, newLastEngagementShownAt);
      });
    });

    // Basic test for JSON serialization - assumes build_runner generated correctly
    test('can be serialized and deserialized', () {
      final user = User(
        id: id,
        email: email,
        role: standardRole,
        createdAt: testCreatedAt,
        lastEngagementShownAt: testLastEngagementShownAt,
      );
      final json = user.toJson();
      final deserializedUser = User.fromJson(json);
      expect(deserializedUser, equals(user));
      expect(
        deserializedUser.lastEngagementShownAt,
        testLastEngagementShownAt,
      );

      const anonUser = User(id: id, role: guestRole);
      final anonJson = anonUser.toJson();
      final deserializedAnonUser = User.fromJson(anonJson);
      expect(deserializedAnonUser, equals(anonUser));
      expect(deserializedAnonUser.lastEngagementShownAt, isNull);

      const adminUser = User(id: id, email: email, role: adminRole);
      final adminJson = adminUser.toJson();
      final deserializedAdminUser = User.fromJson(adminJson);
      expect(deserializedAdminUser, equals(adminUser));
    });
  });
}
