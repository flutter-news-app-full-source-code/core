import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('DisplaySettings', () {
    // Derive the test subject from the main app settings fixture.
    final displaySettingsFixture = userAppSettingsFixturesData.first.displaySettings;

    test('supports value equality', () {
      final settings1 = displaySettingsFixture.copyWith();
      final settings2 = displaySettingsFixture.copyWith();
      expect(settings1, equals(settings2));
    });

    test('props are correct', () {
      expect(
        displaySettingsFixture.props,
        equals([
          displaySettingsFixture.baseTheme,
          displaySettingsFixture.accentTheme,
          displaySettingsFixture.fontFamily,
          displaySettingsFixture.textScaleFactor,
          displaySettingsFixture.fontWeight,
        ]),
      );
    });

    test('can be instantiated with default values from fixture', () {
      expect(displaySettingsFixture.baseTheme, AppBaseTheme.system);
      expect(displaySettingsFixture.accentTheme, AppAccentTheme.defaultBlue);
      expect(displaySettingsFixture.fontFamily, 'SystemDefault');
      expect(displaySettingsFixture.textScaleFactor, AppTextScaleFactor.medium);
      expect(displaySettingsFixture.fontWeight, AppFontWeight.regular);
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        expect(
          displaySettingsFixture.copyWith(),
          equals(displaySettingsFixture),
        );
      });

      test('replaces non-null values', () {
        final updatedSettings = displaySettingsFixture.copyWith(
          baseTheme: AppBaseTheme.dark,
          accentTheme: AppAccentTheme.newsRed,
          fontFamily: 'Roboto',
          textScaleFactor: AppTextScaleFactor.large,
          fontWeight: AppFontWeight.bold,
        );
        expect(updatedSettings.baseTheme, AppBaseTheme.dark);
        expect(updatedSettings.accentTheme, AppAccentTheme.newsRed);
        expect(updatedSettings.fontFamily, 'Roboto');
        expect(updatedSettings.textScaleFactor, AppTextScaleFactor.large);
        expect(updatedSettings.fontWeight, AppFontWeight.bold);
      });
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final original = displaySettingsFixture.copyWith(
          baseTheme: AppBaseTheme.dark,
          accentTheme: AppAccentTheme.newsRed,
          fontFamily: 'OpenSans',
          textScaleFactor: AppTextScaleFactor.extraLarge,
          fontWeight: AppFontWeight.bold,
        );
        final json = original.toJson();
        final reconstructed = DisplaySettings.fromJson(json);
        expect(reconstructed, equals(original));
      });
    });
  });
}
