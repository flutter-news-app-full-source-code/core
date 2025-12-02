import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('Comment', () {
    final now = DateTime.now();
    // Use the first item from the fixtures as the test subject.
    final commentFixture = getHeadlineCommentsFixturesData(
      now: now,
      languageCode: 'en',
    ).first;

    group('constructor', () {
      test('returns correct instance', () {
        expect(commentFixture, isA<Comment>());
      });
    });

    group('fromJson/toJson', () {
      test('round trip with all fields populated', () {
        final json = commentFixture.toJson();
        final result = Comment.fromJson(json);
        expect(result, equals(commentFixture));
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newContent = 'This is updated content.';
        const newStatus = ModerationStatus.resolved;

        final updatedComment = commentFixture.copyWith(
          content: newContent,
          status: newStatus,
        );

        expect(updatedComment.content, newContent);
        expect(updatedComment.status, newStatus);
        // Verify other fields remain unchanged
        expect(updatedComment.language, commentFixture.language);
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final comment1 = getHeadlineCommentsFixturesData(
          now: now,
          languageCode: 'en',
        ).first;
        final comment2 = getHeadlineCommentsFixturesData(
          now: now,
          languageCode: 'en',
        ).first;
        expect(comment1, equals(comment2));
      });

      test('instances with different properties are not equal', () {
        final comment1 = getHeadlineCommentsFixturesData(now: now).first;
        final comment2 = getHeadlineCommentsFixturesData(now: now)[1];
        expect(comment1, isNot(equals(comment2)));
      });
    });

    test('props list should contain all relevant fields', () {
      expect(
        commentFixture.props,
        equals([
          commentFixture.language,
          commentFixture.content,
          commentFixture.status,
        ]),
      );
    });
  });
}
