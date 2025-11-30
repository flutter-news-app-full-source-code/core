import 'package:core/src/enums/initial_app_review_feedback.dart';
import 'package:test/test.dart';

void main() {
  group('InitialAppReviewFeedback', () {
    test('has correct string names', () {
      expect(InitialAppReviewFeedback.positive.name, 'positive');
      expect(InitialAppReviewFeedback.negative.name, 'negative');
    });

    test('can be created from string names', () {
      expect(
        InitialAppReviewFeedback.values.byName('positive'),
        InitialAppReviewFeedback.positive,
      );
      expect(
        InitialAppReviewFeedback.values.byName('negative'),
        InitialAppReviewFeedback.negative,
      );
    });
  });
}
