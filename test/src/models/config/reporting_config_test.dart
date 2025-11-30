import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ReportingConfig', () {
    final reportingConfigFixture =
        remoteConfigsFixturesData.first.features.community.reporting;
    final json = reportingConfigFixture.toJson();

    test('can be instantiated', () {
      expect(reportingConfigFixture, isA<ReportingConfig>());
      expect(reportingConfigFixture.enabled, isTrue);
    });

    test('supports value equality', () {
      final anotherConfig =
          remoteConfigsFixturesData.first.features.community.reporting;
      expect(reportingConfigFixture, equals(anotherConfig));
    });

    test('can be created from JSON', () {
      final fromJson = ReportingConfig.fromJson(json);
      expect(fromJson, equals(reportingConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = reportingConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = reportingConfigFixture.copyWith(
        enabled: false,
        headlineReportingEnabled: false,
      );

      expect(updatedConfig.enabled, isFalse);
      expect(updatedConfig.headlineReportingEnabled, isFalse);
      expect(updatedConfig, isNot(equals(reportingConfigFixture)));
    });
  });
}
