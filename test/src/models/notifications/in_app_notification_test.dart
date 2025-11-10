import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InAppNotification', () {
    // Use the first item from the new fixtures as the main test subject.
    final notificationFixture = inAppNotificationsFixturesData.first;
    final json = notificationFixture.toJson();

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      final anotherNotification = notificationFixture.copyWith();

      // Assert: The two instances should be equal.
      expect(notificationFixture, equals(anotherNotification));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields for Equatable.
      expect(
        notificationFixture.props,
        equals([
          notificationFixture.id,
          notificationFixture.userId,
          notificationFixture.payload,
          notificationFixture.createdAt,
          notificationFixture.readAt,
        ]),
      );
    });

    test('isRead getter works correctly', () {
      // Arrange: Get a read and an unread notification from fixtures.
      final unreadNotification = inAppNotificationsFixturesData
          .firstWhere((n) => n.readAt == null)
          .copyWith();
      final readNotification = inAppNotificationsFixturesData
          .firstWhere((n) => n.readAt != null)
          .copyWith();

      // Assert: The getter should return the correct boolean value.
      expect(unreadNotification.isRead, isFalse);
      expect(readNotification.isRead, isTrue);
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = InAppNotification.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(notificationFixture));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = notificationFixture.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define a new readAt timestamp.
      final readTimestamp = DateTime.now();

      // Act: Create a copy, marking the notification as read.
      final copiedNotification = notificationFixture.copyWith(
        readAt: readTimestamp,
      );

      // Assert: The new instance should have the updated value.
      expect(copiedNotification.readAt, equals(readTimestamp));
      expect(copiedNotification.isRead, isTrue);

      // Assert: Unchanged properties remain the same.
      expect(copiedNotification.id, equals(notificationFixture.id));
      expect(copiedNotification.payload, equals(notificationFixture.payload));

      // Assert: The original instance remains unchanged.
      expect(notificationFixture.readAt, isNull);
      expect(notificationFixture.isRead, isFalse);
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedNotification = notificationFixture.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedNotification, equals(notificationFixture));
      },
    );
  });
}
