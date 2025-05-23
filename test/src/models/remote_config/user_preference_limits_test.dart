import 'package:ht_shared/ht_shared.dart'; // Import the barrel file
import 'package:test/test.dart';

void main() {
  group('UserPreferenceLimits', () {
    const userPreferenceLimits = UserPreferenceLimits(
      guestFollowedItemsLimit: 5,
      guestSavedHeadlinesLimit: 10,
      authenticatedFollowedItemsLimit: 15,
      authenticatedSavedHeadlinesLimit: 30,
      premiumFollowedItemsLimit: 30,
      premiumSavedHeadlinesLimit: 100,
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(userPreferenceLimits, isA<UserPreferenceLimits>());
        expect(userPreferenceLimits.guestFollowedItemsLimit, 5);
        expect(userPreferenceLimits.guestSavedHeadlinesLimit, 10);
        expect(userPreferenceLimits.authenticatedFollowedItemsLimit, 15);
        expect(userPreferenceLimits.authenticatedSavedHeadlinesLimit, 30);
        expect(userPreferenceLimits.premiumFollowedItemsLimit, 30);
        expect(userPreferenceLimits.premiumSavedHeadlinesLimit, 100);
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = {
          'guest_followed_items_limit': 5,
          'guest_saved_headlines_limit': 10,
          'authenticated_followed_items_limit': 15,
          'authenticated_saved_headlines_limit': 30,
          'premium_followed_items_limit': 30,
          'premium_saved_headlines_limit': 100,
        };

        final result = UserPreferenceLimits.fromJson(json);

        expect(result, userPreferenceLimits);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = userPreferenceLimits.toJson();

        expect(json['guest_followed_items_limit'], 5);
        expect(json['guest_saved_headlines_limit'], 10);
        expect(json['authenticated_followed_items_limit'], 15);
        expect(json['authenticated_saved_headlines_limit'], 30);
        expect(json['premium_followed_items_limit'], 30);
        expect(json['premium_saved_headlines_limit'], 100);
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        const limits1 = UserPreferenceLimits(
          guestFollowedItemsLimit: 5,
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        const limits2 = UserPreferenceLimits(
          guestFollowedItemsLimit: 5,
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        expect(limits1, limits2);
      });

      test('instances with different properties are not equal', () {
        const limits1 = UserPreferenceLimits(
          guestFollowedItemsLimit: 5,
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        const limits2 = UserPreferenceLimits(
          guestFollowedItemsLimit: 6, // Different limit
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        expect(limits1, isNot(equals(limits2)));
      });
    });
  });
}
