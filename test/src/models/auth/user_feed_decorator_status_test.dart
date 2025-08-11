import 'package:core/src/models/auth/user_feed_decorator_status.dart';
import 'package:test/test.dart';

void main() {
  group('UserFeedDecoratorStatus', () {
    final now = DateTime.now();
    final statusCompleted = UserFeedDecoratorStatus(
      isCompleted: true,
      lastShownAt: now,
    );
    final statusNotCompleted = UserFeedDecoratorStatus(
      isCompleted: false,
      lastShownAt: now,
    );
    final statusNeverShown = const UserFeedDecoratorStatus(isCompleted: false);

    test('supports value equality', () {
      expect(
        UserFeedDecoratorStatus(isCompleted: true, lastShownAt: now),
        equals(statusCompleted),
      );
      expect(
        UserFeedDecoratorStatus(isCompleted: false, lastShownAt: now),
        isNot(equals(statusCompleted)),
      );
    });

    group('copyWith', () {
      test('copies all fields', () {
        final copy = statusCompleted.copyWith();
        expect(copy, equals(statusCompleted));
      });

      test('updates specified fields', () {
        final newDate = now.subtract(const Duration(days: 1));
        final copied = statusCompleted.copyWith(
          isCompleted: false,
          lastShownAt: newDate,
        );
        expect(copied.isCompleted, isFalse);
        expect(copied.lastShownAt, equals(newDate));
      });
    });

    group('JSON serialization', () {
      test('works correctly with all fields', () {
        final json = statusCompleted.toJson();
        final deserialized = UserFeedDecoratorStatus.fromJson(json);
        expect(deserialized, equals(statusCompleted));
      });

      test('works correctly with null lastShownAt', () {
        final json = statusNeverShown.toJson();
        final deserialized = UserFeedDecoratorStatus.fromJson(json);
        expect(deserialized, equals(statusNeverShown));
      });
    });

    group('canBeShown', () {
      const daysBetweenViews = 7;

      test('returns false if isCompleted is true', () {
        expect(
          statusCompleted.canBeShown(daysBetweenViews: daysBetweenViews),
          isFalse,
        );
      });

      test('returns true if lastShownAt is null', () {
        expect(
          statusNeverShown.canBeShown(daysBetweenViews: daysBetweenViews),
          isTrue,
        );
      });

      test('returns false if shown within the cooldown period', () {
        final statusShownRecently = UserFeedDecoratorStatus(
          isCompleted: false,
          lastShownAt: now.subtract(const Duration(days: daysBetweenViews - 1)),
        );
        expect(
          statusShownRecently.canBeShown(daysBetweenViews: daysBetweenViews),
          isFalse,
        );
      });

      test('returns true if shown exactly on the cooldown boundary', () {
        final statusShownOnBoundary = UserFeedDecoratorStatus(
          isCompleted: false,
          lastShownAt: now.subtract(const Duration(days: daysBetweenViews)),
        );
        expect(
          statusShownOnBoundary.canBeShown(daysBetweenViews: daysBetweenViews),
          isTrue,
        );
      });

      test('returns true if shown outside the cooldown period', () {
        final statusShownLongAgo = UserFeedDecoratorStatus(
          isCompleted: false,
          lastShownAt: now.subtract(const Duration(days: daysBetweenViews + 1)),
        );
        expect(
          statusShownLongAgo.canBeShown(daysBetweenViews: daysBetweenViews),
          isTrue,
        );
      });
    });
  });
}
