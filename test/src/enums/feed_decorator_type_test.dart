import 'package:core/src/enums/feed_decorator_type.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDecoratorType', () {
    test('has correct values', () {
      expect(
        FeedDecoratorType.values,
        containsAll([
          FeedDecoratorType.linkAccount,
          FeedDecoratorType.unlockRewards,
          FeedDecoratorType.rateApp,
          FeedDecoratorType.suggestedTopics,
          FeedDecoratorType.suggestedSources,
        ]),
      );
    });

    test('has correct string values', () {
      expect(FeedDecoratorType.linkAccount.name, 'linkAccount');
      expect(FeedDecoratorType.unlockRewards.name, 'unlockRewards');
      expect(FeedDecoratorType.rateApp.name, 'rateApp');
      expect(FeedDecoratorType.suggestedTopics.name, 'suggestedTopics');
      expect(FeedDecoratorType.suggestedSources.name, 'suggestedSources');
    });

    test('can be created from string values', () {
      expect(
        FeedDecoratorType.values.byName('linkAccount'),
        FeedDecoratorType.linkAccount,
      );
      expect(
        FeedDecoratorType.values.byName('unlockRewards'),
        FeedDecoratorType.unlockRewards,
      );
      expect(
        FeedDecoratorType.values.byName('rateApp'),
        FeedDecoratorType.rateApp,
      );
      expect(
        FeedDecoratorType.values.byName('suggestedTopics'),
        FeedDecoratorType.suggestedTopics,
      );
      expect(
        FeedDecoratorType.values.byName('suggestedSources'),
        FeedDecoratorType.suggestedSources,
      );
    });

    test('has correct toString representation', () {
      expect(
        FeedDecoratorType.linkAccount.toString(),
        'FeedDecoratorType.linkAccount',
      );
      expect(
        FeedDecoratorType.unlockRewards.toString(),
        'FeedDecoratorType.unlockRewards',
      );
      expect(FeedDecoratorType.rateApp.toString(), 'FeedDecoratorType.rateApp');
      expect(
        FeedDecoratorType.suggestedTopics.toString(),
        'FeedDecoratorType.suggestedTopics',
      );
      expect(
        FeedDecoratorType.suggestedSources.toString(),
        'FeedDecoratorType.suggestedSources',
      );
    });
  });
}
