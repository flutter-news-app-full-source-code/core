import 'package:core/src/enums/dismissible_hint_type.dart';
import 'package:test/test.dart';

void main() {
  group('DismissibleHintType', () {
    test('should contain all expected values', () {
      const values = DismissibleHintType.values;
      expect(values, contains(DismissibleHintType.feedFilterTooltip));
      expect(values, contains(DismissibleHintType.saveArticleTooltip));
      expect(values.length, 2);
    });

    test('should have correct string representation', () {
      expect(
        DismissibleHintType.feedFilterTooltip.name,
        equals('feedFilterTooltip'),
      );
      expect(DismissibleHintType.saveArticleTooltip.name, 'saveArticleTooltip');
    });
  });
}
