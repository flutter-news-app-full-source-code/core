import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserConfig', () {
    final userConfigFixture = remoteConfigsFixturesData.first.user;
    final json = userConfigFixture.toJson();

    test('can be instantiated', () {
      expect(userConfigFixture, isA<UserConfig>());
    });

    test('supports value equality', () {
      final anotherConfig = remoteConfigsFixturesData.first.user;
      expect(userConfigFixture, equals(anotherConfig));
    });

    test('props are correct', () {
      expect(userConfigFixture.props, equals([userConfigFixture.limits]));
    });

    test('can be created from JSON', () {
      final fromJson = UserConfig.fromJson(json);
      expect(fromJson, equals(userConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = userConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final newLimits = userConfigFixture.limits.copyWith(
        savedHeadlines: {AppUserRole.guestUser: 999},
      );
      final updatedConfig = userConfigFixture.copyWith(limits: newLimits);

      expect(updatedConfig.limits, equals(newLimits));
      expect(updatedConfig, isNot(equals(userConfigFixture)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        final copiedConfig = userConfigFixture.copyWith();
        expect(copiedConfig, equals(userConfigFixture));
      },
    );
  });
}
