import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('RoleSpecificSettings', () {
    // Fixture derived from the main remote config fixture
    final roleSpecificSettingsFixture = remoteConfigsFixturesData
        .first
        .feedDecoratorConfig[FeedDecoratorType.rateApp]!
        .roleOverrides[AppUserRole.guestUser]!;

    test('can be instantiated', () {
      expect(roleSpecificSettingsFixture, isA<RoleSpecificSettings>());
    });

    test('supports value equality', () {
      const settings1 = RoleSpecificSettings(daysBetweenViews: 7);
      const settings2 = RoleSpecificSettings(daysBetweenViews: 7);
      const settings3 = RoleSpecificSettings(daysBetweenViews: 14);

      expect(settings1, equals(settings2));
      expect(settings1, isNot(equals(settings3)));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = roleSpecificSettingsFixture.toJson();
        final result = RoleSpecificSettings.fromJson(json);
        expect(result, equals(roleSpecificSettingsFixture));
      });
    });

    test('props are correct', () {
      expect(roleSpecificSettingsFixture.props, [
        roleSpecificSettingsFixture.daysBetweenViews,
      ]);
    });
  });
}
