import 'package:core/src/enums/comment_status.dart';
import 'package:test/test.dart';

void main() {
  group('CommentStatus', () {
    test('has correct values', () {
      expect(
        CommentStatus.values,
        containsAll([
          CommentStatus.pendingReview,
          CommentStatus.approved,
          CommentStatus.rejected,
          CommentStatus.flaggedByAI,
          CommentStatus.hiddenByUser,
        ]),
      );
    });

    test('has correct string values', () {
      expect(CommentStatus.pendingReview.name, 'pendingReview');
      expect(CommentStatus.approved.name, 'approved');
      expect(CommentStatus.rejected.name, 'rejected');
      expect(CommentStatus.flaggedByAI.name, 'flaggedByAI');
      expect(CommentStatus.hiddenByUser.name, 'hiddenByUser');
    });

    test('can be created from string values', () {
      expect(
        CommentStatus.values.byName('pendingReview'),
        CommentStatus.pendingReview,
      );
      expect(CommentStatus.values.byName('approved'), CommentStatus.approved);
      expect(CommentStatus.values.byName('rejected'), CommentStatus.rejected);
      expect(
        CommentStatus.values.byName('flaggedByAI'),
        CommentStatus.flaggedByAI,
      );
    });
  });
}
