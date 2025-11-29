import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('HeadlineReaction', () {
    final now = DateTime.now();
    final reactionFixture = HeadlineReaction(
      id: 'reaction_1',
      headlineId: 'headline_1',
      userId: 'user_1',
      reactionType: ReactionType.like,
      createdAt: now,
    );

    test('can be instantiated', () {
      expect(reactionFixture, isA<HeadlineReaction>());
    });

    test('supports value equality', () {
      final anotherReaction = HeadlineReaction(
        id: 'reaction_1',
        headlineId: 'headline_1',
        userId: 'user_1',
        reactionType: ReactionType.like,
        createdAt: now,
      );
      expect(reactionFixture, equals(anotherReaction));
    });

    test('can be created from JSON', () {
      final json = reactionFixture.toJson();
      final fromJson = HeadlineReaction.fromJson(json);
      expect(fromJson, equals(reactionFixture));
    });

    test('can be converted to JSON', () {
      final json = reactionFixture.toJson();
      final expectedJson = {
        'id': 'reaction_1',
        'headlineId': 'headline_1',
        'userId': 'user_1',
        'reactionType': 'like',
        'createdAt': now.toIso8601String(),
      };
      expect(json, equals(expectedJson));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedReaction = reactionFixture.copyWith(
        reactionType: ReactionType.insightful,
      );
      expect(updatedReaction.reactionType, ReactionType.insightful);
      expect(updatedReaction, isNot(equals(reactionFixture)));
    });
  });
}