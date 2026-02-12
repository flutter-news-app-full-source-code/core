import 'package:core/src/models/config/app_tour_config.dart';
import 'package:test/test.dart';

void main() {
  group('AppTourConfig', () {
    const appTourConfig = AppTourConfig(isEnabled: true, isSkippable: true);

    test('can be instantiated', () {
      expect(appTourConfig, isA<AppTourConfig>());
    });

    test('supports value equality', () {
      const anotherConfig = AppTourConfig(isEnabled: true, isSkippable: true);
      expect(appTourConfig, equals(anotherConfig));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = appTourConfig.copyWith(
        isEnabled: false,
        isSkippable: false,
      );

      expect(updatedConfig.isEnabled, isFalse);
      expect(updatedConfig.isSkippable, isFalse);
    });

    test('copyWith returns the same instance if no arguments are provided', () {
      final copiedConfig = appTourConfig.copyWith();
      expect(copiedConfig, equals(appTourConfig));
    });

    test('can be created from JSON and converted to JSON', () {
      final json = appTourConfig.toJson();
      final fromJson = AppTourConfig.fromJson(json);
      expect(fromJson, equals(appTourConfig));
    });
  });
}
