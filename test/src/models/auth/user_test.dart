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
        adminUserFixture.name,
        adminUserFixture.photoUrl,
        adminUserFixture.mediaAssetId,
        adminUserFixture.role,
        adminUserFixture.tier,
        adminUserFixture.createdAt,
        adminUserFixture.isAnonymous,
      ]);
    });

    test('has correct toString', () {
      // Equatable's default toString includes the class name and props
      expect(adminUserFixture.toString(), contains('User('));
      expect(adminUserFixture.toString(), contains(adminUserFixture.id));
      expect(adminUserFixture.toString(), contains(adminUserFixture.email));
    });

    group('copyWith', () {
      test('copies all fields', () {
        final copy = adminUserFixture.copyWith();
        expect(copy, equals(adminUserFixture));
      });

      test('updates specified fields', () {
        const newEmail = 'new@example.com';
        const newRole = UserRole.publisher;
        const newTier = AccessTier.standard;
        const newName = 'New Name';
        const newMediaAssetId = 'new-media-asset-id';

        final copied = adminUserFixture.copyWith(
          email: newEmail,
          role: newRole,
          tier: newTier,
          name: const ValueWrapper(newName),
          mediaAssetId: const ValueWrapper(newMediaAssetId),
        );

        expect(copied.id, adminUserFixture.id);
        expect(copied.email, newEmail);
        expect(copied.role, newRole);
        expect(copied.tier, newTier);
        expect(copied.name, newName);
        expect(copied.mediaAssetId, newMediaAssetId);
      });

      test('updates a field to null correctly', () {
        expect(adminUserFixture.name, isNotNull);
        final copied = adminUserFixture.copyWith(
          name: const ValueWrapper(null),
        );
        expect(copied.name, isNull);
      });
    });

    group('JSON serialization', () {
      test('works correctly', () {
        final json = adminUserFixture.toJson();
        final deserializedUser = User.fromJson(json);

        expect(deserializedUser, equals(adminUserFixture));
      });

      test('deserializes from JSON with minimal fields', () {
        final minimalJson = <String, dynamic>{
          'id': 'test-id',
          'email': 'test@example.com',
          'role': 'user',
          'tier': 'guest',
          'createdAt': '2025-01-01T00:00:00.000Z',
          'isAnonymous': true,
        };

        final user = User.fromJson(minimalJson);

        expect(user.id, 'test-id');
        expect(user.email, 'test@example.com');
        expect(user.role, UserRole.user);
        expect(user.tier, AccessTier.guest);
        expect(user.isAnonymous, isTrue);
        expect(user.name, isNull);
        expect(user.photoUrl, isNull);
      });
    });
  });
}
