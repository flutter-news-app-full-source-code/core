import 'package:core/src/enums/app_accent_theme.dart';
import 'package:test/test.dart';

void main() {
  group('AppAccentTheme', () {
    test('has correct string values', () {
      expect(AppAccentTheme.defaultBlue.name, 'defaultBlue');
      expect(AppAccentTheme.newsRed.name, 'newsRed');
      expect(AppAccentTheme.graphiteGray.name, 'graphiteGray');
    });

    test('can be created from string values', () {
      expect(
        AppAccentTheme.values.byName('defaultBlue'),
        AppAccentTheme.defaultBlue,
      );
      expect(AppAccentTheme.values.byName('newsRed'), AppAccentTheme.newsRed);
      expect(
        AppAccentTheme.values.byName('graphiteGray'),
        AppAccentTheme.graphiteGray,
      );
    });

    test('has correct toString representation', () {
      expect(
        AppAccentTheme.defaultBlue.toString(),
        'AppAccentTheme.defaultBlue',
      );
      expect(AppAccentTheme.newsRed.toString(), 'AppAccentTheme.newsRed');
      expect(
        AppAccentTheme.graphiteGray.toString(),
        'AppAccentTheme.graphiteGray',
      );
    });
  });
}
