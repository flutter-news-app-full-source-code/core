import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDecoratorConfig', () {
    final remoteConfig = remoteConfigsFixturesData.first;
    final rateAppDecorator =
        remoteConfig.features.feed.decorators[FeedDecoratorType.rateApp]!;
    final suggestedTopicsDecorator = remoteConfig
        .features
        .feed
        .decorators[FeedDecoratorType.suggestedTopics]!;

    test('can be instantiated', () {
      expect(rateAppDecorator, isA<FeedDecoratorConfig>());
      expect(suggestedTopicsDecorator, isA<FeedDecoratorConfig>());
    });

    test('supports value equality', () {
      final guestRoleConfig = rateAppDecorator.visibleTo[AccessTier.guest]!;
      final standardRoleConfig =
          rateAppDecorator.visibleTo[AccessTier.standard]!;

      expect(
        rateAppDecorator,
        equals(
          FeedDecoratorConfig(
            category: FeedDecoratorCategory.callToAction,
            enabled: true,
            visibleTo: {
              AccessTier.guest: guestRoleConfig,
              AccessTier.standard: standardRoleConfig,
            },
          ),
        ),
      );
    });

    group('copyWith', () {
      test('returns the same object if no changes are made', () {
        expect(rateAppDecorator.copyWith(), equals(rateAppDecorator));
      });

      test('throws an assertion error if category is changed to '
          'contentCollection without itemsToDisplay', () {
        expect(
          () => rateAppDecorator.copyWith(
            category: FeedDecoratorCategory.contentCollection,
          ),
          throwsA(isA<AssertionError>()),
        );
      });

      test('returns a new object with updated enabled status', () {
        final updatedConfig = rateAppDecorator.copyWith(enabled: false);
        expect(updatedConfig, isNot(equals(rateAppDecorator)));
        expect(updatedConfig.enabled, isFalse);
      });

      test('returns a new object with updated visibleTo map', () {
        final newVisibleTo = Map<AccessTier, FeedDecoratorRoleConfig>.from(
          rateAppDecorator.visibleTo,
        )..remove(AccessTier.guest);
        final updatedConfig = rateAppDecorator.copyWith(
          visibleTo: newVisibleTo,
        );
        expect(updatedConfig, isNot(equals(rateAppDecorator)));
        expect(updatedConfig.visibleTo, equals(newVisibleTo));
      });

      test('returns a new object with updated itemsToDisplay', () {
        final updatedConfig = suggestedTopicsDecorator.copyWith(
          itemsToDisplay: 10,
        );
        expect(updatedConfig, isNot(equals(suggestedTopicsDecorator)));
        expect(updatedConfig.itemsToDisplay, 10);
      });
    });

    test('props are correct', () {
      final guestRoleConfig = rateAppDecorator.visibleTo[AccessTier.guest]!;
      final standardRoleConfig =
          rateAppDecorator.visibleTo[AccessTier.standard]!;
      expect(
        rateAppDecorator.props,
        equals([
          FeedDecoratorCategory.callToAction,
          true,
          {
            AccessTier.guest: guestRoleConfig,
            AccessTier.standard: standardRoleConfig,
          },
          null,
        ]),
      );
    });

    group('fromJson', () {
      test('works correctly for callToAction', () {
        expect(
          FeedDecoratorConfig.fromJson(const {
            'category': 'callToAction',
            'enabled': true,
            'visibleTo': {
              'guest': {'daysBetweenViews': 14},
              'standard': {'daysBetweenViews': 30},
            },
          }),
          isA<FeedDecoratorConfig>(),
        );
      });

      test('works correctly for contentCollection', () {
        expect(
          FeedDecoratorConfig.fromJson(const {
            'category': 'contentCollection',
            'enabled': true,
            'itemsToDisplay': 5,
            'visibleTo': {
              'guest': {'daysBetweenViews': 7},
              'standard': {'daysBetweenViews': 14},
            },
          }),
          isA<FeedDecoratorConfig>(),
        );
      });
    });

    group('toJson', () {
      test('works correctly for callToAction', () {
        final guestRoleConfig = rateAppDecorator.visibleTo[AccessTier.guest]!;
        final standardRoleConfig =
            rateAppDecorator.visibleTo[AccessTier.standard]!;
        expect(
          rateAppDecorator.toJson(),
          equals({
            'category': 'callToAction',
            'enabled': true,
            'visibleTo': {
              'guest': guestRoleConfig.toJson(),
              'standard': standardRoleConfig.toJson(),
            },
            'itemsToDisplay': null,
          }),
        );
      });

      test('works correctly for contentCollection', () {
        final guestRoleConfig =
            suggestedTopicsDecorator.visibleTo[AccessTier.guest]!;
        final standardRoleConfig =
            suggestedTopicsDecorator.visibleTo[AccessTier.standard]!;
        expect(
          suggestedTopicsDecorator.toJson(),
          equals({
            'category': 'contentCollection',
            'enabled': true,
            'itemsToDisplay': 5,
            'visibleTo': {
              'guest': guestRoleConfig.toJson(),
              'standard': standardRoleConfig.toJson(),
            },
          }),
        );
      });
    });
  });
}
