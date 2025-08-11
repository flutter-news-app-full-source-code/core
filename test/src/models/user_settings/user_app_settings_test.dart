import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserAppSettings', () {
    final userAppSettingsFixture = userAppSettingsFixturesData.first;

    test('supports value equality', () {
      final settings1 = userAppSettingsFixture.copyWith();
      final settings2 = userAppSettingsFixture.copyWith();
      expect(settings1, equals(settings2));
    });

    test('props are correct', () {
      expect(
        userAppSettingsFixture.props,
        equals([
          userAppSettingsFixture.id,
          userAppSettingsFixture.displaySettings,
          userAppSettingsFixture.language,
          userAppSettingsFixture.feedPreferences,
        ]),
      );
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        final original = userAppSettingsFixture;
        expect(original.copyWith(), equals(original));
      });

      test('replaces non-null values', () {
        final original = userAppSettingsFixture;
        final newDisplaySettings = original.displaySettings.copyWith(
          accentTheme: AppAccentTheme.newsRed,
        );
        final newLanguage = Language(
          id: 'lang-es',
          code: 'es',
          name: 'Spanish',
          nativeName: 'Español',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          status: ContentStatus.active,
        );
        final newFeedPreferences = original.feedPreferences.copyWith(
          headlineDensity: HeadlineDensity.compact,
        );

        final copied = original.copyWith(
          displaySettings: newDisplaySettings,
          language: newLanguage,
          feedPreferences: newFeedPreferences,
        );

        expect(copied.id, original.id);
        expect(copied.displaySettings, newDisplaySettings);
        expect(copied.language, newLanguage);
        expect(copied.feedPreferences, newFeedPreferences);
      });
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final original = userAppSettingsFixture;
        final json = original.toJson();
        final reconstructed = UserAppSettings.fromJson(json);
        expect(reconstructed, equals(original));
      });
    });
  });
}
