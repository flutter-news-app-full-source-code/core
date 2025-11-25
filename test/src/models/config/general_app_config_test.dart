import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('GeneralAppConfig', () {
    final generalAppConfigFixture = remoteConfigsFixturesData.first.app.general;
    final json = generalAppConfigFixture.toJson();

    test('can be instantiated', () {
      expect(generalAppConfigFixture, isA<GeneralAppConfig>());
    });

    test('supports value equality', () {
      final anotherConfig = remoteConfigsFixturesData.first.app.general;
      expect(generalAppConfigFixture, equals(anotherConfig));
    });

    test('props are correct', () {
      expect(
        generalAppConfigFixture.props,
        equals([
          generalAppConfigFixture.termsOfServiceUrl,
          generalAppConfigFixture.privacyPolicyUrl,
        ]),
      );
    });

    test('can be created from JSON', () {
      final fromJson = GeneralAppConfig.fromJson(json);
      expect(fromJson, equals(generalAppConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = generalAppConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = generalAppConfigFixture.copyWith(
        termsOfServiceUrl: 'https://example.com/new-terms',
      );

      expect(updatedConfig.termsOfServiceUrl, 'https://example.com/new-terms');
      expect(
        updatedConfig.privacyPolicyUrl,
        equals(generalAppConfigFixture.privacyPolicyUrl),
      );
      expect(updatedConfig, isNot(equals(generalAppConfigFixture)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        final copiedConfig = generalAppConfigFixture.copyWith();
        expect(copiedConfig, equals(generalAppConfigFixture));
      },
    );
  });
}
