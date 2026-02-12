import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InitialPersonalizationConfig', () {
    const initialPersonalizationConfig = InitialPersonalizationConfig(
      isEnabled: true,
      isSkippable: true,
      isCountrySelectionEnabled: true,
      isTopicSelectionEnabled: true,
      isSourceSelectionEnabled: true,
      minSelectionsRequired: 3,
    );

    test('can be instantiated', () {
      expect(initialPersonalizationConfig, isA<InitialPersonalizationConfig>());
    });

    test('supports value equality', () {
      const anotherConfig = InitialPersonalizationConfig(
        isEnabled: true,
        isCountrySelectionEnabled: true,
        isTopicSelectionEnabled: true,
        isSourceSelectionEnabled: true,
        minSelectionsRequired: 3,
        isSkippable: true,
      );
      expect(initialPersonalizationConfig, equals(anotherConfig));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = initialPersonalizationConfig.copyWith(
        isEnabled: false,
        minSelectionsRequired: 5,
        isSkippable: false,
      );

      expect(updatedConfig.isEnabled, false);
      expect(updatedConfig.minSelectionsRequired, 5);
      expect(updatedConfig.isSkippable, isFalse);
    });

    test('copyWith returns the same instance if no arguments are provided', () {
      final copiedConfig = initialPersonalizationConfig.copyWith();
      expect(copiedConfig, equals(initialPersonalizationConfig));
    });

    test('can be created from JSON and converted to JSON', () {
      final json = initialPersonalizationConfig.toJson();
      final fromJson = InitialPersonalizationConfig.fromJson(json);
      expect(fromJson, equals(initialPersonalizationConfig));
    });
  });
}
