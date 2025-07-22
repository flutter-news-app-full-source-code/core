import 'package:core/src/enums/app_font_weight.dart';
import 'package:test/test.dart';

void main() {
  group('AppFontWeight', () {
    test('has correct string values', () {
      expect(AppFontWeight.light.name, 'light');
      expect(AppFontWeight.regular.name, 'regular');
      expect(AppFontWeight.bold.name, 'bold');
    });

    test('can be created from string values', () {
      expect(AppFontWeight.values.byName('light'), AppFontWeight.light);
      expect(AppFontWeight.values.byName('regular'), AppFontWeight.regular);
      expect(AppFontWeight.values.byName('bold'), AppFontWeight.bold);
    });

    test('has correct toString representation', () {
      expect(AppFontWeight.light.toString(), 'AppFontWeight.light');
      expect(AppFontWeight.regular.toString(), 'AppFontWeight.regular');
      expect(AppFontWeight.bold.toString(), 'AppFontWeight.bold');
    });
  });
}
