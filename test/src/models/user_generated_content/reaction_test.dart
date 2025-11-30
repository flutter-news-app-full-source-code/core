import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('Reaction', () {
    // Use the first item from the fixtures as the test subject.
    final reactionFixture = reactionsFixturesData.first;

    group('constructor', () {
      test('returns correct instance', () {
        expect(reactionFixture, isA<Reaction>());
      });
    });

    group('fromJson/toJson', () {
      test('round trip with all fields populated', () {
        final json = reactionFixture.toJson();
        final result = Reaction.fromJson(json);
        expect(result, equals(reactionFixture));
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newReactionType = ReactionType.insightful;

        final updatedReaction = reactionFixture.copyWith(
          reactionType: newReactionType,
        );

        expect(updatedReaction.reactionType, newReactionType);
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final reaction1 = reactionsFixturesData.first.copyWith();
        final reaction2 = reactionsFixturesData.first.copyWith();
        expect(reaction1, equals(reaction2));
      });

      test('instances with different properties are not equal', () {
        final reaction1 = reactionsFixturesData[0];
        final reaction2 = reactionsFixturesData[1];
        expect(reaction1, isNot(equals(reaction2)));
      });
    });

    test('props list should contain all relevant fields', () {
      expect(reactionFixture.props, equals([reactionFixture.reactionType]));
    });
  });
}
