import 'package:ht_shared/src/models/user_settings/app_text_scale_factor.dart';
import 'package:test/test.dart';

void main() {
  group('AppTextScaleFactor', () {
    test('has correct string values', () {
      expect(AppTextScaleFactor.small.name, 'small');
      expect(AppTextScaleFactor.medium.name, 'medium');
      expect(AppTextScaleFactor.large.name, 'large');
      expect(AppTextScaleFactor.extraLarge.name, 'extraLarge');
    });

    test('can be created from string values', () {
      expect(
        AppTextScaleFactor.values.byName('small'),
        AppTextScaleFactor.small,
      );
      expect(
        AppTextScaleFactor.values.byName('medium'),
        AppTextScaleFactor.medium,
      );
      expect(
        AppTextScaleFactor.values.byName('large'),
        AppTextScaleFactor.large,
      );
      expect(
        AppTextScaleFactor.values.byName('extraLarge'),
        AppTextScaleFactor.extraLarge,
      );
    });

    test('has correct toString representation', () {
      expect(AppTextScaleFactor.small.toString(), 'AppTextScaleFactor.small');
      expect(AppTextScaleFactor.medium.toString(), 'AppTextScaleFactor.medium');
      expect(AppTextScaleFactor.large.toString(), 'AppTextScaleFactor.large');
      expect(
        AppTextScaleFactor.extraLarge.toString(),
        'AppTextScaleFactor.extraLarge',
      );
    });
  });
}
