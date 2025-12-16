import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AppReviewPromptRespondedPayload', () {
    const payloadWithDetails = AppReviewPromptRespondedPayload(
      feedback: AppReviewFeedback.negative,
      isFirstPrompt: true,
      feedbackDetails: 'It crashed.',
    );

    const payloadWithoutDetails = AppReviewPromptRespondedPayload(
      feedback: AppReviewFeedback.positive,
      isFirstPrompt: false,
    );

    group('toMap', () {
      test('should correctly serialize to a map with feedbackDetails', () {
        final map = payloadWithDetails.toMap();
        expect(map, {
          AnalyticsParameterKeys.feedback: AppReviewFeedback.negative.name,
          AnalyticsParameterKeys.isFirstPrompt: true,
          AnalyticsParameterKeys.feedbackDetails: 'It crashed.',
        });
      });

      test('should correctly serialize to a map without feedbackDetails', () {
        final map = payloadWithoutDetails.toMap();
        expect(map, {
          AnalyticsParameterKeys.feedback: AppReviewFeedback.positive.name,
          AnalyticsParameterKeys.isFirstPrompt: false,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payloadWithDetails;
        const instance2 = AppReviewPromptRespondedPayload(
          feedback: AppReviewFeedback.negative,
          isFirstPrompt: true,
          feedbackDetails: 'It crashed.',
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        expect(payloadWithDetails, isNot(equals(payloadWithoutDetails)));
      });

      test('props list should contain all relevant fields', () {
        expect(payloadWithDetails.props, [
          payloadWithDetails.feedback,
          payloadWithDetails.isFirstPrompt,
          payloadWithDetails.feedbackDetails,
        ]);
      });
    });
  });
}
