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

    test('supports value equality', () {
      expect(
        const User(id: id, email: email, role: standardRole),
        equals(const User(id: id, email: email, role: standardRole)),
      );
      expect(
        const User(id: id, email: email, role: standardRole),
        isNot(
          equals(const User(id: 'other-id', email: email, role: standardRole)),
        ),
      );
      expect(
        const User(id: id, email: email, role: standardRole),
        isNot(
          equals(
            const User(id: id, email: 'other@example.com', role: standardRole),
          ),
        ),
      );
      expect(
        const User(id: id, email: email, role: standardRole),
        isNot(equals(const User(id: id, email: email, role: guestRole))),
      );
      expect(
        const User(id: id, email: email, role: standardRole),
        isNot(equals(const User(id: id, email: email, role: adminRole))),
      );
    });

    test('has correct toString', () {
      expect(
        const User(id: id, email: email, role: standardRole).toString(),
        equals(
          'User(id: $id, email: $email, role: $standardRole, createdAt: null)',
        ),
      );
      expect(
        const User(id: id, role: guestRole).toString(),
        equals('User(id: $id, email: null, role: $guestRole, createdAt: null)'),
      );
      expect(
        const User(id: id, role: adminRole).toString(),
        equals('User(id: $id, email: null, role: $adminRole, createdAt: null)'),
      );
      final now = DateTime.now();
      expect(
        User(id: id, email: email, role: standardRole, createdAt: now)
            .toString(),
        equals(
          'User(id: $id, email: $email, role: $standardRole, createdAt: $now)',
        ),
      );
    });

    // Basic test for JSON serialization - assumes build_runner generated correctly
    test('can be serialized and deserialized', () {
      const user = User(id: id, email: email, role: standardRole);
      final json = user.toJson();
      final deserializedUser = User.fromJson(json);
      expect(deserializedUser, equals(user));

      const anonUser = User(id: id, role: guestRole);
      final anonJson = anonUser.toJson();
      final deserializedAnonUser = User.fromJson(anonJson);
      expect(deserializedAnonUser, equals(anonUser));

      const adminUser = User(id: id, email: email, role: adminRole);
      final adminJson = adminUser.toJson();
      final deserializedAdminUser = User.fromJson(adminJson);
      expect(deserializedAdminUser, equals(adminUser));
    });
  });
}
