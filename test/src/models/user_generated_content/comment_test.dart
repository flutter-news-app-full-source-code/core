import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('Comment', () {
    // Use the first item from the fixtures as the test subject.
    final commentFixture = getHeadlineCommentsFixturesData().first;

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
        const newStatus = CommentStatus.rejected;

        final updatedComment = commentFixture.copyWith(
          content: newContent,
          status: newStatus,
        );

        expect(updatedComment.id, commentFixture.id);
        expect(updatedComment.content, newContent);
        expect(updatedComment.status, newStatus);
        // Verify other fields remain unchanged
        expect(updatedComment.userId, commentFixture.userId);
        expect(updatedComment.entityId, commentFixture.entityId);
        // The updatedAt timestamp should be different
        expect(
          updatedComment.updatedAt,
          isNot(equals(commentFixture.updatedAt)),
        );
      });

      test(
        'returns a new instance with a new timestamp if no updates provided',
        () {
          final copiedComment = commentFixture.copyWith();
          // Should be a new instance with a new `updatedAt` time
          expect(copiedComment, isNot(equals(commentFixture)));
          expect(copiedComment.id, commentFixture.id);
          expect(copiedComment.content, commentFixture.content);
        },
      );
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final comment1 = getHeadlineCommentsFixturesData().first;
        final comment2 = getHeadlineCommentsFixturesData().first;
        expect(comment1, equals(comment2));
      });

      test('instances with different properties are not equal', () {
        final comment1 = getHeadlineCommentsFixturesData().first;
        final comment2 = getHeadlineCommentsFixturesData()[1];
        expect(comment1, isNot(equals(comment2)));
      });
    });

    test('props list should contain all relevant fields', () {
      expect(
        commentFixture.props,
        equals([
          commentFixture.id,
          commentFixture.userId,
          commentFixture.entityId,
          commentFixture.entityType,
          commentFixture.language,
          commentFixture.content,
          commentFixture.status,
          commentFixture.createdAt,
          commentFixture.updatedAt,
        ]),
      );
    });
  });
}
