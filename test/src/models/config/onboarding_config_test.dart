import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('OnboardingConfig', () {
    const onboardingConfig = OnboardingConfig(
      appTour: AppTourConfig(isEnabled: true, isSkippable: true),
      initialPersonalization: InitialPersonalizationConfig(
        isEnabled: true,
        isSkippable: true,
        isCountrySelectionEnabled: true,
        isTopicSelectionEnabled: true,
        isSourceSelectionEnabled: true,
        minSelectionsRequired: 3,
      ),
    );

    test('can be instantiated', () {
      expect(onboardingConfig, isA<OnboardingConfig>());
    });

    test('supports value equality', () {
      const anotherConfig = OnboardingConfig(
        appTour: AppTourConfig(isEnabled: true, isSkippable: true),
        initialPersonalization: InitialPersonalizationConfig(
          isEnabled: true,
          isCountrySelectionEnabled: true,
          isTopicSelectionEnabled: true,
          isSourceSelectionEnabled: true,
          minSelectionsRequired: 3,
          isSkippable: true,
        ),
      );
      expect(onboardingConfig, equals(anotherConfig));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = onboardingConfig.copyWith(
        appTour: const AppTourConfig(isEnabled: false, isSkippable: false),
      );

      expect(updatedConfig.appTour.isEnabled, isFalse);
      expect(
        updatedConfig.initialPersonalization,
        equals(onboardingConfig.initialPersonalization),
      );
    });

    test('copyWith returns the same instance if no arguments are provided', () {
      final copiedConfig = onboardingConfig.copyWith();
      expect(copiedConfig, equals(onboardingConfig));
    });

    test('can be created from JSON and converted to JSON', () {
      final json = onboardingConfig.toJson();
      final fromJson = OnboardingConfig.fromJson(json);
      expect(fromJson, equals(onboardingConfig));
    });
  });
}
