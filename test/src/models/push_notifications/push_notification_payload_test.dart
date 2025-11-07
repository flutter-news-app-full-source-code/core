import 'package:core/src/models/push_notifications/push_notification_payload.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationPayload', () {
    const title = 'Breaking News';
    const body = 'This is a test breaking news notification.';
    const imageUrl = 'https://example.com/image.jpg';
    const data = <String, dynamic>{
      'contentType': 'headline',
      'id': 'headline-123',
    };

    const payload = PushNotificationPayload(
      title: title,
      body: body,
      imageUrl: imageUrl,
      data: data,
    );

    final json = <String, dynamic>{
      'title': title,
      'body': body,
      'imageUrl': imageUrl,
      'data': data,
    };

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      const anotherPayload = PushNotificationPayload(
        title: title,
        body: body,
        imageUrl: imageUrl,
        data: data,
      );

      // Assert: The two instances should be equal.
      expect(payload, equals(anotherPayload));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields.
      expect(payload.props, equals([title, body, imageUrl, data]));
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = PushNotificationPayload.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(payload));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = payload.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define the updated values.
      const newTitle = 'Updated News';
      const newBody = 'Updated body content.';

      // Act: Create a copy with the updated values.
      final copiedPayload = payload.copyWith(title: newTitle, body: newBody);

      // Assert: The new instance should have the updated values.
      expect(copiedPayload.title, equals(newTitle));
      expect(copiedPayload.body, equals(newBody));
      expect(copiedPayload.imageUrl, equals(imageUrl)); // Unchanged
      expect(copiedPayload.data, equals(data)); // Unchanged

      // Assert: The original instance should remain unchanged.
      expect(payload.title, equals(title));
      expect(payload.body, equals(body));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedPayload = payload.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedPayload, equals(payload));
      },
    );
  });
}
