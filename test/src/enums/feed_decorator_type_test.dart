import 'package:core/src/enums/feed_decorator_type.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDecoratorType', () {
    test('has correct values', () {
      expect(
        FeedDecoratorType.values,
        containsAll([
          FeedDecoratorType.linkAccount,
          FeedDecoratorType.upgrade,
          FeedDecoratorType.rateApp,
          FeedDecoratorType.enableNotifications,
          FeedDecoratorType.suggestedTopics,
          FeedDecoratorType.suggestedSources,
        ]),
      );
    });

    test('has correct string values', () {
      expect(FeedDecoratorType.linkAccount.name, 'linkAccount');
      expect(FeedDecoratorType.upgrade.name, 'upgrade');
      expect(FeedDecoratorType.rateApp.name, 'rateApp');
      expect(
        FeedDecoratorType.enableNotifications.name,
        'enableNotifications',
      );
      expect(FeedDecoratorType.suggestedTopics.name, 'suggestedTopics');
      expect(FeedDecoratorType.suggestedSources.name, 'suggestedSources');
    });

    test('can be created from string values', () {
      expect(
        FeedDecoratorType.values.byName('linkAccount'),
        FeedDecoratorType.linkAccount,
      );
      expect(
        FeedDecoratorType.values.byName('upgrade'),
        FeedDecoratorType.upgrade,
      );
      expect(
        FeedDecoratorType.values.byName('rateApp'),
        FeedDecoratorType.rateApp,
      );
      expect(
        FeedDecoratorType.values.byName('enableNotifications'),
        FeedDecoratorType.enableNotifications,
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
        FeedDecoratorType.upgrade.toString(),
        'FeedDecoratorType.upgrade',
      );
      expect(
        FeedDecoratorType.rateApp.toString(),
        'FeedDecoratorType.rateApp',
      );
      expect(
        FeedDecoratorType.enableNotifications.toString(),
        'FeedDecoratorType.enableNotifications',
      );
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
