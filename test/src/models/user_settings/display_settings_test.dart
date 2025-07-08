import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('DisplaySettings', () {
    // Helper function to create a sample JSON map
    Map<String, dynamic> createJson({
      String baseTheme = 'system',
      String accentTheme = 'defaultBlue',
      String fontFamily = 'SystemDefault',
      String textScaleFactor = 'medium',
      String fontWeight = 'regular',
    }) {
      return {
        'baseTheme': baseTheme,
        'accentTheme': accentTheme,
        'fontFamily': fontFamily,
        'textScaleFactor': textScaleFactor,
        'fontWeight': fontWeight,
      };
    }

    // Helper function to create a sample DisplaySettings object
    DisplaySettings createSubject({
      AppBaseTheme baseTheme = AppBaseTheme.system,
      AppAccentTheme accentTheme = AppAccentTheme.defaultBlue,
      String fontFamily = 'SystemDefault',
      AppTextScaleFactor textScaleFactor = AppTextScaleFactor.medium,
      AppFontWeight fontWeight = AppFontWeight.regular,
    }) {
      return DisplaySettings(
        baseTheme: baseTheme,
        accentTheme: accentTheme,
        fontFamily: fontFamily,
        textScaleFactor: textScaleFactor,
        fontWeight: fontWeight,
      );
    }

    test('supports value equality', () {
      expect(createSubject(), equals(createSubject()));
    });

    test('props are correct', () {
      expect(
        createSubject().props,
        equals([
          AppBaseTheme.system,
          AppAccentTheme.defaultBlue,
          'SystemDefault',
          AppTextScaleFactor.medium,
          AppFontWeight.regular,
        ]),
      );
    });

    test('can be instantiated with default values', () {
      final settings = createSubject();
      expect(settings.baseTheme, AppBaseTheme.system);
      expect(settings.accentTheme, AppAccentTheme.defaultBlue);
      expect(settings.fontFamily, 'SystemDefault');
      expect(settings.textScaleFactor, AppTextScaleFactor.medium);
      expect(settings.fontWeight, AppFontWeight.regular);
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        expect(createSubject().copyWith(), equals(createSubject()));
      });

      test('retains old values if null is provided', () {
        expect(createSubject().copyWith(), equals(createSubject()));
      });

      test('replaces non-null values', () {
        expect(
          createSubject().copyWith(
            baseTheme: AppBaseTheme.dark,
            accentTheme: AppAccentTheme.newsRed,
            fontFamily: 'Roboto',
            textScaleFactor: AppTextScaleFactor.large,
            fontWeight: AppFontWeight.bold,
          ),
          equals(
            createSubject(
              baseTheme: AppBaseTheme.dark,
              accentTheme: AppAccentTheme.newsRed,
              fontFamily: 'Roboto',
              textScaleFactor: AppTextScaleFactor.large,
              fontWeight: AppFontWeight.bold,
            ),
          ),
        );
      });
    });

    group('fromJson/toJson', () {
      test('works correctly', () {
        expect(DisplaySettings.fromJson(createJson()), equals(createSubject()));
      });

      test('handles different enum values', () {
        final json = createJson(
          baseTheme: 'light',
          accentTheme: 'graphiteGray',
          fontFamily: 'Merriweather',
          textScaleFactor: 'small',
          fontWeight: 'light',
        );
        final expected = createSubject(
          baseTheme: AppBaseTheme.light,
          accentTheme: AppAccentTheme.graphiteGray,
          fontFamily: 'Merriweather',
          textScaleFactor: AppTextScaleFactor.small,
          fontWeight: AppFontWeight.light,
        );
        expect(DisplaySettings.fromJson(json), equals(expected));
      });

      test('round trip', () {
        // Test with non-default values
        final original = createSubject(
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
