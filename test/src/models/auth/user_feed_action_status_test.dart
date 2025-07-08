import 'package:ht_shared/src/models/auth/user_feed_action_status.dart';
import 'package:test/test.dart';

void main() {
  group('UserFeedActionStatus Model', () {
    final testLastShownAt = DateTime.utc(2023, 1, 2);
    const testIsCompleted = false;

    test('supports value equality', () {
      // Test with all fields
      expect(
        UserFeedActionStatus(
          lastShownAt: testLastShownAt,
          isCompleted: testIsCompleted,
        ),
        equals(
          UserFeedActionStatus(
            lastShownAt: testLastShownAt,
            isCompleted: testIsCompleted,
          ),
        ),
      );

      // Test with null lastShownAt
      expect(
        const UserFeedActionStatus(isCompleted: testIsCompleted),
        equals(const UserFeedActionStatus(isCompleted: testIsCompleted)),
      );

      // Test inequality for lastShownAt
      expect(
        UserFeedActionStatus(
          lastShownAt: testLastShownAt,
          isCompleted: testIsCompleted,
        ),
        isNot(
          equals(
            UserFeedActionStatus(
              lastShownAt: DateTime.utc(2024),
              isCompleted: testIsCompleted,
            ),
          ),
        ),
      );

      // Test inequality for isCompleted
      expect(
        UserFeedActionStatus(
          lastShownAt: testLastShownAt,
          isCompleted: testIsCompleted,
        ),
        isNot(
          equals(
            UserFeedActionStatus(
              lastShownAt: testLastShownAt,
              isCompleted: !testIsCompleted,
            ),
          ),
        ),
      );
    });

    test('props are correct', () {
      final status = UserFeedActionStatus(
        lastShownAt: testLastShownAt,
        isCompleted: testIsCompleted,
      );
      expect(status.props, [testLastShownAt, testIsCompleted]);

      const statusWithNullDate = UserFeedActionStatus(isCompleted: false);
      expect(statusWithNullDate.props, [null, false]);
    });

    group('copyWith', () {
      test('copies all fields when no arguments are provided', () {
        final original = UserFeedActionStatus(
          lastShownAt: testLastShownAt,
          isCompleted: testIsCompleted,
        );
        final copy = original.copyWith();
        expect(copy, equals(original));
      });

      test('updates specified fields', () {
        final original = UserFeedActionStatus(
          lastShownAt: testLastShownAt,
          isCompleted: testIsCompleted,
        );
        final newLastShownAt = DateTime.utc(2024);
        const newIsCompleted = true;

        final copied = original.copyWith(
          lastShownAt: newLastShownAt,
          isCompleted: newIsCompleted,
        );

        expect(copied.lastShownAt, newLastShownAt);
        expect(copied.isCompleted, newIsCompleted);
      });

      test('handles copying with null for nullable fields', () {
        final original = UserFeedActionStatus(
          lastShownAt: testLastShownAt,
          isCompleted: testIsCompleted,
        );
        // copyWith with null should not change the value due to `??`
        final copyWithNull = original.copyWith(lastShownAt: null);
        expect(copyWithNull.lastShownAt, original.lastShownAt);

        // copyWith a value from a null state
        const originalWithNull = UserFeedActionStatus(isCompleted: false);
        final copyWithValue = originalWithNull.copyWith(
          lastShownAt: testLastShownAt,
        );
        expect(copyWithValue.lastShownAt, testLastShownAt);
      });
    });

    test('can be serialized and deserialized', () {
      // Test with a non-null date
      final status = UserFeedActionStatus(
        lastShownAt: testLastShownAt,
        isCompleted: testIsCompleted,
      );
      final json = status.toJson();
      final deserializedStatus = UserFeedActionStatus.fromJson(json);
      expect(deserializedStatus, equals(status));

      // Test with a null date
      const statusWithNullDate = UserFeedActionStatus(isCompleted: true);
      final jsonWithNullDate = statusWithNullDate.toJson();
      final deserializedWithNullDate = UserFeedActionStatus.fromJson(
        jsonWithNullDate,
      );
      expect(deserializedWithNullDate, equals(statusWithNullDate));
      expect(jsonWithNullDate['lastShownAt'], isNull);
    });
  });
}
