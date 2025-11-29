import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('Comment', () {
    final now = DateTime.now();
    final commentFixture = Comment(
      id: 'comment_1',
      headlineId: 'headline_1',
      userId: 'user_1',
      content: 'This is a test comment.',
      status: CommentStatus.approved,
      createdAt: now,
      updatedAt: now,
    );

    test('can be instantiated', () {
      expect(commentFixture, isA<Comment>());
    });

    test('supports value equality', () {
      final anotherComment = Comment(
        id: 'comment_1',
        headlineId: 'headline_1',
        userId: 'user_1',
        content: 'This is a test comment.',
        status: CommentStatus.approved,
        createdAt: now,
        updatedAt: now,
      );
      expect(commentFixture, equals(anotherComment));
    });

    test('can be created from JSON', () {
      final json = commentFixture.toJson();
      final fromJson = Comment.fromJson(json);
      expect(fromJson, equals(commentFixture));
    });

    test('can be converted to JSON', () {
      final json = commentFixture.toJson();
      final expectedJson = {
        'id': 'comment_1',
        'headlineId': 'headline_1',
        'userId': 'user_1',
        'content': 'This is a test comment.',
        'status': 'approved',
        'createdAt': now.toIso8601String(),
        'updatedAt': now.toIso8601String(),
      };
      expect(json, equals(expectedJson));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedComment = commentFixture.copyWith(
        content: 'This is an updated comment.',
        status: CommentStatus.rejected,
      );
      expect(updatedComment.content, 'This is an updated comment.');
      expect(updatedComment.status, CommentStatus.rejected);
      expect(updatedComment, isNot(equals(commentFixture)));
    });
  });
}
