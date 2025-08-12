import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDecoratorConfig', () {
    final remoteConfig = remoteConfigsFixturesData.first;
    final rateAppDecorator =
        remoteConfig.feedDecoratorConfig[FeedDecoratorType.rateApp]!;
    final suggestedTopicsDecorator =
        remoteConfig.feedDecoratorConfig[FeedDecoratorType.suggestedTopics]!;

    test('can be instantiated', () {
      expect(rateAppDecorator, isA<FeedDecoratorConfig>());
      expect(suggestedTopicsDecorator, isA<FeedDecoratorConfig>());
    });

    test('supports value equality', () {
      final guestRoleConfig =
          rateAppDecorator.visibleTo[AppUserRole.guestUser]!;
      final standardRoleConfig =
          rateAppDecorator.visibleTo[AppUserRole.standardUser]!;
      final premiumRoleConfig =
          rateAppDecorator.visibleTo[AppUserRole.premiumUser]!;

      expect(
        rateAppDecorator,
        equals(
          FeedDecoratorConfig(
            category: FeedDecoratorCategory.callToAction,
            enabled: true,
            visibleTo: {
              AppUserRole.guestUser: guestRoleConfig,
              AppUserRole.standardUser: standardRoleConfig,
              AppUserRole.premiumUser: premiumRoleConfig,
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
        final newVisibleTo = Map<AppUserRole, FeedDecoratorRoleConfig>.from(
          rateAppDecorator.visibleTo,
        )..remove(AppUserRole.guestUser);
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
      final guestRoleConfig =
          rateAppDecorator.visibleTo[AppUserRole.guestUser]!;
      final standardRoleConfig =
          rateAppDecorator.visibleTo[AppUserRole.standardUser]!;
      final premiumRoleConfig =
          rateAppDecorator.visibleTo[AppUserRole.premiumUser]!;
      expect(
        rateAppDecorator.props,
        equals([
          FeedDecoratorCategory.callToAction,
          true,
          {
            AppUserRole.guestUser: guestRoleConfig,
            AppUserRole.standardUser: standardRoleConfig,
            AppUserRole.premiumUser: premiumRoleConfig,
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
              'guestUser': {'daysBetweenViews': 14},
              'standardUser': {'daysBetweenViews': 30},
              'premiumUser': {'daysBetweenViews': 60},
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
              'guestUser': {'daysBetweenViews': 7},
              'standardUser': {'daysBetweenViews': 14},
            },
          }),
          isA<FeedDecoratorConfig>(),
        );
      });
    });

    group('toJson', () {
      test('works correctly for callToAction', () {
        final guestRoleConfig =
            rateAppDecorator.visibleTo[AppUserRole.guestUser]!;
        final standardRoleConfig =
            rateAppDecorator.visibleTo[AppUserRole.standardUser]!;
        final premiumRoleConfig =
            rateAppDecorator.visibleTo[AppUserRole.premiumUser]!;
        expect(
          rateAppDecorator.toJson(),
          equals({
            'category': 'callToAction',
            'enabled': true,
            'visibleTo': {
              'guestUser': guestRoleConfig.toJson(),
              'standardUser': standardRoleConfig.toJson(),
              'premiumUser': premiumRoleConfig.toJson(),
            },
            'itemsToDisplay': null,
          }),
        );
      });

      test('works correctly for contentCollection', () {
        final guestRoleConfig =
            suggestedTopicsDecorator.visibleTo[AppUserRole.guestUser]!;
        final standardRoleConfig =
            suggestedTopicsDecorator.visibleTo[AppUserRole.standardUser]!;
        expect(
          suggestedTopicsDecorator.toJson(),
          equals({
            'category': 'contentCollection',
            'enabled': true,
            'itemsToDisplay': 5,
            'visibleTo': {
              'guestUser': guestRoleConfig.toJson(),
              'standardUser': standardRoleConfig.toJson(),
            },
          }),
        );
      });
    });
  });
}
