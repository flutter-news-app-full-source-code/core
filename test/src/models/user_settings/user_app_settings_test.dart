// ignore_for_file: inference_failure_on_collection_literal

import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('UserAppSettings', () {
    const userId = 'test-user-id';
    const defaultDisplaySettings = DisplaySettings();
    const defaultLanguage = 'en';

    // Helper function to create a sample JSON map
    Map<String, dynamic> createJson({
      required String id,
      Map<String, dynamic>? displaySettings,
      String? language,
    }) {
      return {
        'id': id,
        'displaySettings': displaySettings ?? defaultDisplaySettings.toJson(),
        'language': language ?? defaultLanguage,
      };
    }

    // Helper function to create a sample UserAppSettings object
    UserAppSettings createSubject({
      required String id,
      DisplaySettings? displaySettings,
      AppLanguage? language,
    }) {
      return UserAppSettings(
        id: id,
        displaySettings: displaySettings,
        language: language,
      );
    }

    test('supports value equality', () {
      expect(createSubject(id: userId), equals(createSubject(id: userId)));
      expect(
        createSubject(
          id: userId,
          displaySettings: const DisplaySettings(baseTheme: AppBaseTheme.dark),
          language: 'fr',
        ),
        equals(
          createSubject(
            id: userId,
            displaySettings: const DisplaySettings(
              baseTheme: AppBaseTheme.dark,
            ),
            language: 'fr',
          ),
        ),
      );
    });

    test('props are correct', () {
      const customDisplaySettings = DisplaySettings(
        accentTheme: AppAccentTheme.newsRed,
      );
      const customLanguage = 'es';
      const defaultFeedPreferences = FeedDisplayPreferences();
      expect(
        createSubject(
          id: userId,
          displaySettings: customDisplaySettings,
          language: customLanguage,
        ).props,
        equals([
          userId,
          customDisplaySettings,
          customLanguage,
          defaultFeedPreferences,
          const {}, // engagementShownCounts
          const {}, // engagementLastShownTimestamps
        ]),
      );
    });

    test('can be instantiated with default values for nested objects', () {
      const settings = UserAppSettings(id: userId);
      expect(settings.id, userId);
      expect(settings.displaySettings, defaultDisplaySettings);
      expect(settings.language, defaultLanguage);
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        final original = createSubject(id: userId);
        expect(original.copyWith(), equals(original));
      });

      test('retains old values if null is provided', () {
        final original = createSubject(
          id: userId,
          displaySettings: const DisplaySettings(baseTheme: AppBaseTheme.dark),
          language: 'fr',
        );
        expect(original.copyWith(), equals(original));
      });

      test('replaces non-null values', () {
        final original = createSubject(id: userId);
        const newDisplaySettings = DisplaySettings(
          accentTheme: AppAccentTheme.newsRed,
        );
        const newLanguage = 'es';

        final copied = original.copyWith(
          displaySettings: newDisplaySettings,
          language: newLanguage,
        );

        expect(copied.id, original.id); // ID should remain the same
        expect(copied.displaySettings, newDisplaySettings);
        expect(copied.language, newLanguage);

        // Test changing only the ID (though less common for this model)
        const newId = 'new-user-id';
        final copiedWithNewId = original.copyWith(id: newId);
        expect(copiedWithNewId.id, newId);
        expect(copiedWithNewId.displaySettings, original.displaySettings);
        expect(copiedWithNewId.language, original.language);
      });
    });

    group('fromJson/toJson', () {
      test('works correctly with default nested values', () {
        final json = createJson(id: userId);
        expect(
          UserAppSettings.fromJson(json),
          equals(createSubject(id: userId)),
        );
      });

      test('works correctly with custom nested values', () {
        const customDisplaySettings = DisplaySettings(
          baseTheme: AppBaseTheme.dark,
          accentTheme: AppAccentTheme.newsRed,
          fontFamily: 'Roboto',
          textScaleFactor: AppTextScaleFactor.large,
          fontWeight: AppFontWeight.bold,
        );
        const customLanguage = 'fr';

        final json = createJson(
          id: userId,
          displaySettings: customDisplaySettings.toJson(),
          language: customLanguage,
        );

        final expected = createSubject(
          id: userId,
          displaySettings: customDisplaySettings,
          language: customLanguage,
        );

        expect(UserAppSettings.fromJson(json), equals(expected));
      });

      test('round trip', () {
        final original = createSubject(
          id: userId,
          displaySettings: const DisplaySettings(
            baseTheme: AppBaseTheme.light,
            accentTheme: AppAccentTheme.graphiteGray,
            fontFamily: 'OpenSans',
            textScaleFactor: AppTextScaleFactor.extraLarge,
            fontWeight: AppFontWeight.bold,
          ),
          language: 'es',
        );
        final json = original.toJson();
        final reconstructed = UserAppSettings.fromJson(json);
        expect(reconstructed, equals(original));
      });
    });
  });
}
