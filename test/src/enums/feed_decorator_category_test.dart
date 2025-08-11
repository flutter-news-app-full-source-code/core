import 'package:core/src/enums/feed_decorator_category.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDecoratorCategory', () {
    test('has correct values', () {
      expect(
        FeedDecoratorCategory.values,
        containsAll([
          FeedDecoratorCategory.callToAction,
          FeedDecoratorCategory.contentCollection,
        ]),
      );
    });

    test('has correct string values', () {
      expect(FeedDecoratorCategory.callToAction.name, 'callToAction');
      expect(
        FeedDecoratorCategory.contentCollection.name,
        'contentCollection',
      );
    });

    test('can be created from string values', () {
      expect(
        FeedDecoratorCategory.values.byName('callToAction'),
        FeedDecoratorCategory.callToAction,
      );
      expect(
        FeedDecoratorCategory.values.byName('contentCollection'),
        FeedDecoratorCategory.contentCollection,
      );
    });

    test('has correct toString representation', () {
      expect(
        FeedDecoratorCategory.callToAction.toString(),
        'FeedDecoratorCategory.callToAction',
      );
      expect(
        FeedDecoratorCategory.contentCollection.toString(),
        'FeedDecoratorCategory.contentCollection',
      );
    });
  });
}
