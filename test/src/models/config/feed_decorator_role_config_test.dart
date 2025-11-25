import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDecoratorRoleConfig', () {
    final remoteConfig = remoteConfigsFixturesData.first;
    final rateAppDecorator =
        remoteConfig.features.feed.decorators[FeedDecoratorType.rateApp]!;
    final guestRoleConfig = rateAppDecorator.visibleTo[AppUserRole.guestUser]!;

    test('can be instantiated', () {
      expect(guestRoleConfig, isA<FeedDecoratorRoleConfig>());
    });

    test('supports value equality', () {
      expect(
        guestRoleConfig,
        equals(const FeedDecoratorRoleConfig(daysBetweenViews: 14)),
      );
    });

    test('props are correct', () {
      expect(guestRoleConfig.props, equals([14]));
    });

    group('copyWith', () {
      test('returns the same object if no changes are made', () {
        expect(guestRoleConfig.copyWith(), equals(guestRoleConfig));
      });

      test('returns a new object with updated daysBetweenViews', () {
        final updatedConfig = guestRoleConfig.copyWith(daysBetweenViews: 7);
        expect(updatedConfig, isNot(equals(guestRoleConfig)));
        expect(updatedConfig.daysBetweenViews, 7);
      });
    });

    group('fromJson', () {
      test('works correctly', () {
        expect(
          FeedDecoratorRoleConfig.fromJson(const {'daysBetweenViews': 3}),
          isA<FeedDecoratorRoleConfig>(),
        );
      });
    });

    group('toJson', () {
      test('works correctly', () {
        expect(guestRoleConfig.toJson(), equals({'daysBetweenViews': 14}));
      });
    });
  });
}
