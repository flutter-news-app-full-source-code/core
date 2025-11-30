import 'package:core/core.dart';

/// Generates a list of predefined app reviews for fixture data.
List<AppReview> getAppReviewsFixturesData({
  String languageCode = 'en',
  DateTime? now,
}) {
  final appReviews = <AppReview>[];
  final users = usersFixturesData;
  final referenceTime = now ?? DateTime.now();

  final reasonsByLang = <String, List<String>>{
    'en': [
      'The app is a bit slow when loading the main feed.',
      'I did not like the old layout.',
      'Still experiencing some lag on the search page.',
      'Crashes sometimes when I open a notification.',
    ],
    'ar': [
      'التطبيق بطيء بعض الشيء عند تحميل الواجهة الرئيسية.',
      'لم يعجبني التصميم القديم.',
      'لا أزال أواجه بعض البطء في صفحة البحث.',
      'يتوقف أحيانًا عند فتح إشعار.',
    ],
  };

  final resolvedLanguageCode = ['en', 'ar'].contains(languageCode)
      ? languageCode
      : 'en';
  final reasons = reasonsByLang[resolvedLanguageCode]!;

  for (var i = 0; i < users.length; i++) {
    final user = users[i];
    final createdAt = referenceTime.subtract(Duration(days: 30 - i));

    // Every 3rd user gives a positive review and is sent to the store.
    if (i % 3 == 0) {
      appReviews.add(
        AppReview(
          id: 'ar-pos-$i',
          userId: user.id,
          initialFeedback: InitialAppReviewFeedback.positive,
          createdAt: createdAt,
          updatedAt: createdAt.add(const Duration(minutes: 1)),
          storeReviewRequestedAt: createdAt.add(const Duration(minutes: 1)),
        ),
      );
    }
    // Every 5th user gives a negative review with a reason.
    else if (i % 5 == 0) {
      appReviews.add(
        AppReview(
          id: 'ar-neg-reason-$i',
          userId: user.id,
          initialFeedback: InitialAppReviewFeedback.negative,
          createdAt: createdAt,
          updatedAt: createdAt,
          negativeFeedbackHistory: [
            NegativeFeedback(providedAt: createdAt, reason: reasons[0]),
          ],
        ),
      );
    }
    // Other users give a negative review without a reason.
    else {
      appReviews.add(
        AppReview(
          id: 'ar-neg-$i',
          userId: user.id,
          initialFeedback: InitialAppReviewFeedback.negative,
          createdAt: createdAt,
          updatedAt: createdAt,
        ),
      );
    }
  }

  // Add a case where a user gave negative feedback, then was prompted again
  // later and gave positive feedback.
  final multiStageUser = users[1];
  final firstReviewTime = referenceTime.subtract(const Duration(days: 45));
  final secondReviewTime = referenceTime.subtract(const Duration(days: 5));

  // This would be an update to an existing record, but for fixtures we can
  // just show the final state.
  appReviews.add(
    AppReview(
      id: 'ar-multistage-final',
      userId: multiStageUser.id,
      initialFeedback: InitialAppReviewFeedback.positive,
      // createdAt would be from the first interaction
      createdAt: firstReviewTime,
      // updatedAt is from the most recent interaction
      updatedAt: secondReviewTime,
      // The reason from the first negative review might be cleared or kept,
      // depending on business logic. Here we assume it's cleared on positive.
      storeReviewRequestedAt: secondReviewTime,
      // The history might be kept for analytics, even after a positive review.
      negativeFeedbackHistory: [
        NegativeFeedback(providedAt: firstReviewTime, reason: reasons[1]),
      ],
    ),
  );

  // Add a case for a user who gave negative feedback multiple times.
  final persistentNegativeUser = users[2];
  final firstNegativeTime = referenceTime.subtract(const Duration(days: 60));
  final secondNegativeTime = referenceTime.subtract(const Duration(days: 20));
  appReviews.add(
    AppReview(
      id: 'ar-multi-neg',
      userId: persistentNegativeUser.id,
      initialFeedback: InitialAppReviewFeedback.negative,
      createdAt: firstNegativeTime,
      updatedAt: secondNegativeTime,
      negativeFeedbackHistory: [
        NegativeFeedback(providedAt: firstNegativeTime, reason: reasons[2]),
        NegativeFeedback(providedAt: secondNegativeTime, reason: reasons[3]),
      ],
    ),
  );

  return appReviews;
}
