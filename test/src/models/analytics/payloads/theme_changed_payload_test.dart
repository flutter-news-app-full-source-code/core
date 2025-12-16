import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ThemeChangedPayload', () {
    const payload = ThemeChangedPayload(
      baseTheme: AppBaseTheme.dark,
      accentTheme: AppAccentTheme.newsRed,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.baseTheme: AppBaseTheme.dark.name,
          AnalyticsParameterKeys.accentTheme: AppAccentTheme.newsRed.name,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = ThemeChangedPayload(
          baseTheme: AppBaseTheme.dark,
          accentTheme: AppAccentTheme.newsRed,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = ThemeChangedPayload(
          baseTheme: AppBaseTheme.light,
          accentTheme: AppAccentTheme.newsRed,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.baseTheme, payload.accentTheme]);
      });
    });
  });
}
