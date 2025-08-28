import 'package:core/src/enums/in_article_ad_slot_type.dart';
import 'package:test/test.dart';

void main() {
  group('InArticleAdSlotType', () {
    test('has correct string values', () {
      expect(
        InArticleAdSlotType.belowMainArticleImage.name,
        'belowMainArticleImage',
      );
      expect(
        InArticleAdSlotType.aboveArticleContinueReadingButton.name,
        'aboveArticleContinueReadingButton',
      );
      expect(
        InArticleAdSlotType.belowArticleContinueReadingButton.name,
        'belowArticleContinueReadingButton',
      );
    });

    test('can be created from string values', () {
      expect(
        InArticleAdSlotType.values.byName('belowMainArticleImage'),
        InArticleAdSlotType.belowMainArticleImage,
      );
      expect(
        InArticleAdSlotType.values.byName('aboveArticleContinueReadingButton'),
        InArticleAdSlotType.aboveArticleContinueReadingButton,
      );
      expect(
        InArticleAdSlotType.values.byName('belowArticleContinueReadingButton'),
        InArticleAdSlotType.belowArticleContinueReadingButton,
      );
    });

    test('has correct toString representation', () {
      expect(
        InArticleAdSlotType.belowMainArticleImage.toString(),
        'InArticleAdSlotType.belowMainArticleImage',
      );
      expect(
        InArticleAdSlotType.aboveArticleContinueReadingButton.toString(),
        'InArticleAdSlotType.aboveArticleContinueReadingButton',
      );
      expect(
        InArticleAdSlotType.belowArticleContinueReadingButton.toString(),
        'InArticleAdSlotType.belowArticleContinueReadingButton',
      );
    });
  });
}
