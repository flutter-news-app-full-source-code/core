import 'package:core/core.dart';
import 'package:core/src/fixtures/ranked_list_cards.dart';
import 'package:test/test.dart';

void main() {
  group('RankedListCardData Model', () {
    final rankedListCardDataFixture = getRankedListCardsFixturesData().first;
    final rankedListCardDataJson = rankedListCardDataFixture.toJson();

    group('fromJson', () {
      test('should correctly deserialize from JSON', () {
        final fromJson = RankedListCardData.fromJson(rankedListCardDataJson);
        expect(fromJson, equals(rankedListCardDataFixture));
      });
    });

    group('toJson', () {
      test('should correctly serialize to JSON', () {
        final toJson = rankedListCardDataFixture.toJson();
        expect(toJson, equals(rankedListCardDataJson));
      });
    });

    group('copyWith', () {
      test('should return a new instance with updated values', () {
        final updatedCard = rankedListCardDataFixture.copyWith(
          label: 'A New Label',
          id: RankedListCardId.overviewHeadlinesMostLiked,
        );

        expect(updatedCard.label, 'A New Label');
        expect(updatedCard.id, RankedListCardId.overviewHeadlinesMostLiked);
        expect(
          updatedCard.timeFrames,
          equals(rankedListCardDataFixture.timeFrames),
        );
      });

      test('should return an identical instance if no values are provided', () {
        final copiedCard = rankedListCardDataFixture.copyWith();
        expect(copiedCard, equals(rankedListCardDataFixture));
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final instance1 = rankedListCardDataFixture;
        final instance2 = RankedListCardData.fromJson(
          rankedListCardDataFixture.toJson(),
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        final instance1 = rankedListCardDataFixture;
        final instance2 = RankedListCardData(
          id: RankedListCardId.overviewHeadlinesMostLiked, // Different ID
          label: rankedListCardDataFixture.label,
          timeFrames: rankedListCardDataFixture.timeFrames,
        );
        final instance3 = RankedListCardData(
          id: rankedListCardDataFixture.id,
          label: 'Different Label',
          timeFrames: rankedListCardDataFixture.timeFrames,
        );
        expect(instance1, isNot(equals(instance2)));
        expect(instance1, isNot(equals(instance3)));
      });

      test('props list should contain all relevant fields', () {
        expect(rankedListCardDataFixture.props, [
          rankedListCardDataFixture.id,
          rankedListCardDataFixture.label,
          rankedListCardDataFixture.timeFrames,
        ]);
      });
    });
  });
}
