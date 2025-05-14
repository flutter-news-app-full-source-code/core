import 'package:ht_shared/src/models/user.dart';
import 'package:test/test.dart';

void main() {
  group('User Model', () {
    const id = 'test-id';
    const email = 'test@example.com';

    test('supports value equality', () {
      expect(
        const User(id: id, email: email, isAnonymous: false, isAdmin: false),
        equals(
          const User(id: id, email: email, isAnonymous: false, isAdmin: false),
        ),
      );
      expect(
        const User(id: id, email: email, isAnonymous: false, isAdmin: false),
        isNot(
          equals(
            const User(
              id: 'other-id',
              email: email,
              isAnonymous: false,
              isAdmin: false,
            ),
          ),
        ),
      );
      expect(
        const User(id: id, email: email, isAnonymous: false, isAdmin: false),
        isNot(
          equals(
            const User(
              id: id,
              email: 'other@example.com',
              isAnonymous: false,
              isAdmin: false,
            ),
          ),
        ),
      );
      expect(
        const User(id: id, email: email, isAnonymous: false, isAdmin: false),
        isNot(
          equals(
            const User(id: id, email: email, isAnonymous: true, isAdmin: false),
          ),
        ),
      );
      expect(
        const User(id: id, email: email, isAnonymous: false, isAdmin: false),
        isNot(
          equals(
            const User(id: id, email: email, isAnonymous: false, isAdmin: true),
          ),
        ),
      );
    });

    test('has correct toString', () {
      expect(
        const User(
          id: id,
          email: email,
          isAnonymous: false,
          isAdmin: false,
        ).toString(),
        equals(
          'User(id: $id, email: $email, isAnonymous: false, isAdmin: false)',
        ),
      );
      expect(
        const User(id: id, isAnonymous: true, isAdmin: false).toString(),
        equals('User(id: $id, email: null, isAnonymous: true, isAdmin: false)'),
      );
      expect(
        const User(id: id, isAnonymous: false, isAdmin: true).toString(),
        equals('User(id: $id, email: null, isAnonymous: false, isAdmin: true)'),
      );
    });

    // Basic test for JSON serialization - assumes build_runner generated correctly
    test('can be serialized and deserialized', () {
      const user = User(
        id: id,
        email: email,
        isAnonymous: false,
        isAdmin: false,
      );
      final json = user.toJson();
      final deserializedUser = User.fromJson(json);
      expect(deserializedUser, equals(user));

      const anonUser = User(id: id, isAnonymous: true, isAdmin: false);
      final anonJson = anonUser.toJson();
      final deserializedAnonUser = User.fromJson(anonJson);
      expect(deserializedAnonUser, equals(anonUser));

      const adminUser = User(
        id: id,
        email: email,
        isAnonymous: false,
        isAdmin: true,
      );
      final adminJson = adminUser.toJson();
      final deserializedAdminUser = User.fromJson(adminJson);
      expect(deserializedAdminUser, equals(adminUser));
    });
  });
}
