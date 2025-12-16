import 'package:core/src/enums/ranked_list_card_id.dart';
import 'package:test/test.dart';

void main() {
  group('RankedListCardId', () {
    test('has correct values', () {
      expect(
        RankedListCardId.values,
        containsAll([
          RankedListCardId.overviewHeadlinesMostViewed,
          RankedListCardId.overviewHeadlinesMostLiked,
          RankedListCardId.overviewSourcesMostFollowed,
          RankedListCardId.overviewTopicsMostFollowed,
        ]),
      );
    });

    test('has correct string names', () {
      expect(
        RankedListCardId.overviewHeadlinesMostViewed.name,
        'overviewHeadlinesMostViewed',
      );
    });

    test('can be created from string names', () {
      expect(
        RankedListCardId.values.byName('overviewHeadlinesMostViewed'),
        RankedListCardId.overviewHeadlinesMostViewed,
      );
    });
  });
}
