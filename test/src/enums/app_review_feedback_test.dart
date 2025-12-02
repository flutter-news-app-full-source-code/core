import 'package:core/src/enums/app_review_feedback.dart';
import 'package:test/test.dart';

void main() {
  group('AppReviewFeedback', () {
    test('has correct string names', () {
      expect(AppReviewFeedback.positive.name, 'positive');
      expect(AppReviewFeedback.negative.name, 'negative');
    });

    test('can be created from string names', () {
      expect(
        AppReviewFeedback.values.byName('positive'),
        AppReviewFeedback.positive,
      );
      expect(
        AppReviewFeedback.values.byName('negative'),
        AppReviewFeedback.negative,
      );
    });
  });
}
