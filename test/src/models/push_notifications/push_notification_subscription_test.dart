import 'package:core/src/enums/push_notification_subscription_delivery_type.dart';
import 'package:core/src/fixtures/countries.dart';
import 'package:core/src/fixtures/sources.dart';
import 'package:core/src/fixtures/topics.dart';
import 'package:core/src/models/push_notifications/push_notification_subscription.dart';
import 'package:test/test.dart';

void main() {
  group('PushNotificationSubscription', () {
    // Use IDs from fixtures to ensure data integrity and consistency.
    const id = 'push-notification-subscription-id-1';
    const userId = 'user-id-1';
    const name = 'Tech News';
    final topics = [topicsFixturesData[0].id, topicsFixturesData[1].id];
    final sources = [sourcesFixturesData[0].id];
    final countries = [countriesFixturesData[0].id];
    const deliveryTypes = {
      PushNotificationSubscriptionDeliveryType.breakingOnly,
      PushNotificationSubscriptionDeliveryType.dailyDigest,
    };

    final subscription = PushNotificationSubscription(
      id: id,
      userId: userId,
      name: name,
      topics: topics,
      sources: sources,
      countries: countries,
      deliveryTypes: deliveryTypes,
    );

    final json = {
      'id': id,
      'userId': userId,
      'name': name,
      'topics': topics,
      'sources': sources,
      'countries': countries,
      'deliveryTypes': ['breakingOnly', 'dailyDigest'],
    };

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      final anotherSubscription = PushNotificationSubscription(
        id: id,
        userId: userId,
        name: name,
        topics: topics,
        sources: sources,
        countries: countries,
        deliveryTypes: deliveryTypes,
      );

      // Assert: The two instances should be equal.
      expect(subscription, equals(anotherSubscription));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields.
      expect(
        subscription.props,
        equals([id, userId, name, topics, sources, countries, deliveryTypes]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = PushNotificationSubscription.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(subscription));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = subscription.toJson();

      // Assert: The resulting map should match the original JSON map.
      // We sort the deliveryTypes list to ensure consistent comparison.
      (toJson['deliveryTypes'] as List).sort();
      (json['deliveryTypes'] as List).sort();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define the updated values.
      const newName = 'Updated Tech News';
      const newTopics = ['topic-3'];

      // Act: Create a copy with the updated values.
      final copiedSubscription = subscription.copyWith(
        name: newName,
        topics: newTopics,
      );

      // Assert: The new instance should have the updated values.
      expect(copiedSubscription.name, equals(newName));
      expect(copiedSubscription.topics, equals(newTopics));

      // Assert: The original instance should remain unchanged.
      expect(subscription.name, equals(name));
      expect(subscription.topics, equals(topics));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedSubscription = subscription.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedSubscription, equals(subscription));
      },
    );
  });
}
