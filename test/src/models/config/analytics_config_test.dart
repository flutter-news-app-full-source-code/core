import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsConfig Model', () {
    // Use the analytics config from the remote config fixtures.
    final analyticsConfigFixture =
        remoteConfigsFixturesData.first.features.analytics;
    final json = analyticsConfigFixture.toJson();

    group('Serialization', () {
      test('should correctly deserialize from JSON', () {
        final fromJson = AnalyticsConfig.fromJson(json);
        expect(fromJson, equals(analyticsConfigFixture));
      });

      test('should correctly serialize to JSON', () {
        final toJson = analyticsConfigFixture.toJson();
        expect(toJson, equals(json));
      });
    });

    group('copyWith', () {
      test('should create a copy with updated values', () {
        const updatedProvider = AnalyticsProvider.mixpanel;
        const updatedDisabledEvents = {AnalyticsEvent.userLogin};

        final copiedConfig = analyticsConfigFixture.copyWith(
          activeProvider: updatedProvider,
          disabledEvents: updatedDisabledEvents,
        );

        expect(copiedConfig.enabled, analyticsConfigFixture.enabled);
        expect(copiedConfig.activeProvider, updatedProvider);
        expect(copiedConfig.disabledEvents, updatedDisabledEvents);
        expect(
          copiedConfig.eventSamplingRates,
          analyticsConfigFixture.eventSamplingRates,
        );
      });

      test('should create an identical copy if no values are provided', () {
        final copiedConfig = analyticsConfigFixture.copyWith();
        expect(copiedConfig, equals(analyticsConfigFixture));
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final config1 = analyticsConfigFixture.copyWith();
        final config2 = analyticsConfigFixture.copyWith();
        expect(config1, equals(config2));
      });

      test('should not equate instances with different properties', () {
        final config1 = analyticsConfigFixture.copyWith();
        final config2 = analyticsConfigFixture.copyWith(enabled: false);
        final config3 = analyticsConfigFixture.copyWith(
          activeProvider: AnalyticsProvider.demo,
        );
        expect(config1, isNot(equals(config2)));
        expect(config1, isNot(equals(config3)));
      });

      test('props list should contain all relevant fields', () {
        expect(
          analyticsConfigFixture.props,
          equals([
            analyticsConfigFixture.enabled,
            analyticsConfigFixture.activeProvider,
            analyticsConfigFixture.disabledEvents,
            analyticsConfigFixture.eventSamplingRates,
          ]),
        );
      });
    });
  });
}
