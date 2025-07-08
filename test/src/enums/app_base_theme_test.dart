import 'package:ht_shared/src/enums/app_base_theme.dart';
import 'package:test/test.dart';

void main() {
  group('AppBaseTheme', () {
    test('has correct string values', () {
      expect(AppBaseTheme.light.name, 'light');
      expect(AppBaseTheme.dark.name, 'dark');
      expect(AppBaseTheme.system.name, 'system');
    });

    test('can be created from string values', () {
      expect(AppBaseTheme.values.byName('light'), AppBaseTheme.light);
      expect(AppBaseTheme.values.byName('dark'), AppBaseTheme.dark);
      expect(AppBaseTheme.values.byName('system'), AppBaseTheme.system);
    });

    test('has correct toString representation', () {
      expect(AppBaseTheme.light.toString(), 'AppBaseTheme.light');
      expect(AppBaseTheme.dark.toString(), 'AppBaseTheme.dark');
      expect(AppBaseTheme.system.toString(), 'AppBaseTheme.system');
    });
  });
}
