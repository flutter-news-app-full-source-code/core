import 'package:ht_shared/src/models/user.dart';
import 'package:test/test.dart';

void main() {
  group('User Model', () {
    const id = 'test-id';
    const email = 'test@example.com';

    test('supports value equality', () {
      expect(
        const User(id: id, email: email, role: 'standard_user'),
        equals(const User(id: id, email: email, role: 'standard_user')),
      );
      expect(
        const User(id: id, email: email, role: 'standard_user'),
        isNot(
          equals(
            const User(id: 'other-id', email: email, role: 'standard_user'),
          ),
        ),
      );
      expect(
        const User(id: id, email: email, role: 'standard_user'),
        isNot(
          equals(
            const User(
              id: id,
              email: 'other@example.com',
              role: 'standard_user',
            ),
          ),
        ),
      );
      expect(
        const User(id: id, email: email, role: 'standard_user'),
        isNot(equals(const User(id: id, email: email, role: 'guest_user'))),
      );
      expect(
        const User(id: id, email: email, role: 'standard_user'),
        isNot(equals(const User(id: id, email: email, role: 'admin'))),
      );
    });

    test('has correct toString', () {
      expect(
        const User(id: id, email: email, role: 'standard_user').toString(),
        equals('User(id: $id, email: $email, role: standard_user)'),
      );
      expect(
        const User(id: id, role: 'guest_user').toString(),
        equals('User(id: $id, email: null, role: guest_user)'),
      );
      expect(
        const User(id: id, role: 'admin').toString(),
        equals('User(id: $id, email: null, role: admin)'),
      );
    });

    // Basic test for JSON serialization - assumes build_runner generated correctly
    test('can be serialized and deserialized', () {
      const user = User(id: id, email: email, role: 'standard_user');
      final json = user.toJson();
      final deserializedUser = User.fromJson(json);
      expect(deserializedUser, equals(user));

      const anonUser = User(id: id, role: 'guest_user');
      final anonJson = anonUser.toJson();
      final deserializedAnonUser = User.fromJson(anonJson);
      expect(deserializedAnonUser, equals(anonUser));

      const adminUser = User(id: id, email: email, role: 'admin');
      final adminJson = adminUser.toJson();
      final deserializedAdminUser = User.fromJson(adminJson);
      expect(deserializedAdminUser, equals(adminUser));
    });
  });
}
