import 'package:core/src/enums/reaction_type.dart';
import 'package:test/test.dart';

void main() {
  group('ReactionType', () {
    test('has correct values', () {
      expect(
        ReactionType.values,
        containsAll([
          ReactionType.like,
          ReactionType.insightful,
          ReactionType.amusing,
          ReactionType.sad,
          ReactionType.angry,
          ReactionType.skeptical,
        ]),
      );
    });

    test('has correct string values', () {
      expect(ReactionType.like.name, 'like');
      expect(ReactionType.insightful.name, 'insightful');
      expect(ReactionType.amusing.name, 'amusing');
      expect(ReactionType.sad.name, 'sad');
      expect(ReactionType.angry.name, 'angry');
      expect(ReactionType.skeptical.name, 'skeptical');
    });

    test('can be created from string values', () {
      expect(ReactionType.values.byName('like'), ReactionType.like);
      expect(ReactionType.values.byName('insightful'), ReactionType.insightful);
      expect(ReactionType.values.byName('amusing'), ReactionType.amusing);
      expect(ReactionType.values.byName('sad'), ReactionType.sad);
      expect(ReactionType.values.byName('angry'), ReactionType.angry);
      expect(ReactionType.values.byName('skeptical'), ReactionType.skeptical);
    });
  });
}
