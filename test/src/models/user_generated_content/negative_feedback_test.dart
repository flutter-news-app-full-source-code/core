import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('NegativeFeedback', () {
    final now = DateTime.now();
    final feedbackWithReason = NegativeFeedback(
      providedAt: now,
      reason: 'The app is slow.',
    );
    final feedbackWithoutReason = NegativeFeedback(providedAt: now);

    group('constructor', () {
      test('instantiates correctly with a reason', () {
        expect(feedbackWithReason, isA<NegativeFeedback>());
        expect(feedbackWithReason.reason, isNotNull);
      });

      test('instantiates correctly without a reason', () {
        expect(feedbackWithoutReason, isA<NegativeFeedback>());
        expect(feedbackWithoutReason.reason, isNull);
      });
    });

    group('fromJson/toJson', () {
      test('round trip with reason', () {
        final json = feedbackWithReason.toJson();
        final result = NegativeFeedback.fromJson(json);
        expect(result, equals(feedbackWithReason));
      });

      test('round trip without reason', () {
        final json = feedbackWithoutReason.toJson();
        final result = NegativeFeedback.fromJson(json);
        expect(result, equals(feedbackWithoutReason));
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        final feedback1 = NegativeFeedback(providedAt: now, reason: 'Slow');
        final feedback2 = NegativeFeedback(providedAt: now, reason: 'Slow');
        expect(feedback1, equals(feedback2));
      });

      test('instances with different properties are not equal', () {
        final feedback1 = NegativeFeedback(providedAt: now, reason: 'Slow');
        final feedback2 = NegativeFeedback(providedAt: now, reason: 'Fast');
        expect(feedback1, isNot(equals(feedback2)));
      });
    });
  });
}
