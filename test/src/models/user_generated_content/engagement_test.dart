import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('Engagement', () {
    final now = DateTime.now();
    // Use the first item from the fixtures as the test subject.
    final engagementFixture = getEngagementsFixturesData(
      now: now,
      languageCode: 'en',
    ).first;

    group('constructor', () {
      test('returns correct instance', () {
        expect(engagementFixture, isA<Engagement>());
      });

      test('returns correct instance with populated comment', () {
        // The first fixture item should have a comment
        expect(engagementFixture.comment, isNotNull);
      });

      test('returns correct instance with null comment', () {
        // The second fixture item should have a null comment
        final engagementWithoutComment = getEngagementsFixturesData(
          now: now,
        )[1];
        expect(engagementWithoutComment.comment, isNull);
      });
    });

    group('fromJson/toJson', () {
      test('round trip with all fields populated', () {
        final json = engagementFixture.toJson();
        final result = Engagement.fromJson(json);
        expect(result, equals(engagementFixture));
      });

      test('round trip with null comment', () {
        final engagementWithoutComment = getEngagementsFixturesData(
          now: now,
        )[1];
        final json = engagementWithoutComment.toJson();
        final result = Engagement.fromJson(json);
        expect(result, equals(engagementWithoutComment));
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        final newReaction = reactionsFixturesData[2];

        final updatedEngagement = engagementFixture.copyWith(
          reaction: newReaction,
        );

        expect(updatedEngagement.reaction, newReaction);
        // Verify other fields remain unchanged
        expect(updatedEngagement.entityId, engagementFixture.entityId);
        expect(updatedEngagement.comment, engagementFixture.comment);
      });

      test('returns an identical instance if no updates provided', () {
        final copiedEngagement = engagementFixture.copyWith();
        expect(copiedEngagement, engagementFixture);
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final engagement1 = getEngagementsFixturesData(
          now: now,
          languageCode: 'en',
        ).first;
        final engagement2 = getEngagementsFixturesData(
          now: now,
          languageCode: 'en',
        ).first;
        expect(engagement1, equals(engagement2));
      });

      test('instances with different properties are not equal', () {
        final engagement1 = getEngagementsFixturesData(now: now)[0];
        final engagement2 = getEngagementsFixturesData(now: now)[1];
        expect(engagement1, isNot(equals(engagement2)));
      });
    });

    test('props list should contain all relevant fields', () {
      expect(engagementFixture.props, [
        engagementFixture.entityId,
        engagementFixture.entityType,
        engagementFixture.reaction,
        engagementFixture.comment,
      ]);
    });
  });
}
