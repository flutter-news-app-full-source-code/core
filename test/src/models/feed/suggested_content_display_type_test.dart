import 'package:ht_shared/src/models/feed/suggested_content_display_type.dart';
import 'package:test/test.dart';

void main() {
  group('SuggestedContentDisplayType', () {
    test('has correct string values for JSON serialization', () {
      expect(
        SuggestedContentDisplayType.horizontalCardList.name,
        'horizontalCardList',
      );
      expect(
        SuggestedContentDisplayType.verticalCardList.name,
        'verticalCardList',
      );
      expect(SuggestedContentDisplayType.grid.name, 'grid');
      expect(
        SuggestedContentDisplayType.singlePromotionalCard.name,
        'singlePromotionalCard',
      );
      expect(SuggestedContentDisplayType.textList.name, 'textList');
    });

    test('can be created from string values', () {
      expect(
        SuggestedContentDisplayType.values.byName('horizontalCardList'),
        SuggestedContentDisplayType.horizontalCardList,
      );
      expect(
        SuggestedContentDisplayType.values.byName('verticalCardList'),
        SuggestedContentDisplayType.verticalCardList,
      );
      expect(
        SuggestedContentDisplayType.values.byName('grid'),
        SuggestedContentDisplayType.grid,
      );
      expect(
        SuggestedContentDisplayType.values.byName('singlePromotionalCard'),
        SuggestedContentDisplayType.singlePromotionalCard,
      );
      expect(
        SuggestedContentDisplayType.values.byName('textList'),
        SuggestedContentDisplayType.textList,
      );
    });

    test('has correct toString representation', () {
      expect(
        SuggestedContentDisplayType.horizontalCardList.toString(),
        'SuggestedContentDisplayType.horizontalCardList',
      );
      expect(
        SuggestedContentDisplayType.verticalCardList.toString(),
        'SuggestedContentDisplayType.verticalCardList',
      );
      expect(
        SuggestedContentDisplayType.grid.toString(),
        'SuggestedContentDisplayType.grid',
      );
      expect(
        SuggestedContentDisplayType.singlePromotionalCard.toString(),
        'SuggestedContentDisplayType.singlePromotionalCard',
      );
      expect(
        SuggestedContentDisplayType.textList.toString(),
        'SuggestedContentDisplayType.textList',
      );
    });
  });
}
