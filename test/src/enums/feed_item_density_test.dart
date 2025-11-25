import 'package:core/src/enums/feed_item_density.dart';
import 'package:test/test.dart';

void main() {
  group('FeedItemDensity', () {
    test('has correct values', () {
      expect(
        FeedItemDensity.values,
        containsAll([
          FeedItemDensity.compact,
          FeedItemDensity.standard,
          FeedItemDensity.comfortable,
        ]),
      );
    });

    test('has correct string values', () {
      expect(FeedItemDensity.compact.name, 'compact');
      expect(FeedItemDensity.standard.name, 'standard');
      expect(FeedItemDensity.comfortable.name, 'comfortable');
    });

    test('can be created from string values', () {
      expect(FeedItemDensity.values.byName('compact'), FeedItemDensity.compact);
      expect(
        FeedItemDensity.values.byName('standard'),
        FeedItemDensity.standard,
      );
      expect(
        FeedItemDensity.values.byName('comfortable'),
        FeedItemDensity.comfortable,
      );
    });

    test('has correct toString representation', () {
      expect(FeedItemDensity.compact.toString(), 'FeedItemDensity.compact');
      expect(FeedItemDensity.standard.toString(), 'FeedItemDensity.standard');
      expect(
        FeedItemDensity.comfortable.toString(),
        'FeedItemDensity.comfortable',
      );
    });
  });
}
