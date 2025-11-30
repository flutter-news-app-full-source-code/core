import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AppReview', () {
    final now = DateTime.now();
    final appReviewFixtures = getAppReviewsFixturesData(now: now);

    // A positive review where a store review was requested.
    final positiveReview = appReviewFixtures.firstWhere(
      (r) => r.initialFeedback == InitialAppReviewFeedback.positive,
    );

    // A negative review with a reason.
    final negativeReviewWithReason = appReviewFixtures.firstWhere(
      (r) => r.negativeFeedbackHistory.any((h) => h.reason != null),
    );

    // A negative review without a reason.
    final negativeReviewWithoutReason = appReviewFixtures.firstWhere(
      (r) =>
          r.initialFeedback == InitialAppReviewFeedback.negative &&
          r.negativeFeedbackHistory.every((h) => h.reason == null),
    );

    group('constructor', () {
      test('returns correct instance for positive review', () {
        expect(positiveReview, isA<AppReview>());
        expect(positiveReview.wasStoreReviewRequested, isTrue);
        // A positive review can still have a history if the user previously gave negative feedback.
      });

      test('returns correct instance for negative review with reason', () {
        expect(negativeReviewWithReason, isA<AppReview>());
        expect(negativeReviewWithReason.wasStoreReviewRequested, isFalse);
        expect(negativeReviewWithReason.negativeFeedbackHistory, isNotEmpty);
      });
    });

    group('fromJson/toJson', () {
      test('round trip with positive review', () {
        final json = positiveReview.toJson();
        final result = AppReview.fromJson(json);
        expect(result, equals(positiveReview));
      });

      test('round trip with negative review with reason', () {
        final json = negativeReviewWithReason.toJson();
        final result = AppReview.fromJson(json);
        expect(result, equals(negativeReviewWithReason));
      });

      test('round trip with negative review without reason', () {
        final json = negativeReviewWithoutReason.toJson();
        final result = AppReview.fromJson(json);
        expect(result, equals(negativeReviewWithoutReason));
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        final newTimestamp = now.add(const Duration(days: 1));
        final newHistory = [
          ...negativeReviewWithReason.negativeFeedbackHistory,
          NegativeFeedback(
            providedAt: newTimestamp,
            reason: 'This is a new reason.',
          ),
        ];

        final updatedReview = negativeReviewWithReason.copyWith(
          updatedAt: newTimestamp,
          negativeFeedbackHistory: newHistory,
        );

        expect(updatedReview.updatedAt, newTimestamp);
        expect(updatedReview.negativeFeedbackHistory, newHistory);
        // Verify other fields remain unchanged
        expect(updatedReview.id, negativeReviewWithReason.id);
        expect(updatedReview.userId, negativeReviewWithReason.userId);
        expect(updatedReview.createdAt, negativeReviewWithReason.createdAt);
      });

      test('correctly uses initialFeedback in copyWith', () {
        final updatedReview = positiveReview.copyWith(
          initialFeedback: InitialAppReviewFeedback.negative,
        );

        expect(
          updatedReview.initialFeedback,
          InitialAppReviewFeedback.negative,
        );
        // Ensure other properties are copied correctly
        expect(updatedReview.id, positiveReview.id);
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final review1 = getAppReviewsFixturesData(now: now).first;
        final review2 = getAppReviewsFixturesData(now: now).first;
        expect(review1, equals(review2));
      });

      test('instances with different properties are not equal', () {
        final review1 = getAppReviewsFixturesData(now: now)[0];
        final review2 = getAppReviewsFixturesData(now: now)[1];
        expect(review1, isNot(equals(review2)));
      });
    });

    test('props list should contain all relevant fields', () {
      expect(positiveReview.props, [
        positiveReview.id,
        positiveReview.userId,
        positiveReview.initialFeedback,
        positiveReview.createdAt,
        positiveReview.updatedAt,
        positiveReview.wasStoreReviewRequested,
        positiveReview.negativeFeedbackHistory,
      ]);
    });
  });
}
