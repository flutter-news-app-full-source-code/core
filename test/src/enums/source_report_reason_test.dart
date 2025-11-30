import 'package:core/src/enums/source_report_reason.dart';
import 'package:test/test.dart';

void main() {
  group('SourceReportReason', () {
    test('has correct values', () {
      expect(
        SourceReportReason.values,
        containsAll([
          SourceReportReason.lowQualityJournalism,
          SourceReportReason.highAdDensity,
          SourceReportReason.frequentPaywalls,
          SourceReportReason.impersonation,
          SourceReportReason.spreadsMisinformation,
        ]),
      );
    });

    test('has correct string values', () {
      expect(
        SourceReportReason.lowQualityJournalism.name,
        'lowQualityJournalism',
      );
      expect(SourceReportReason.highAdDensity.name, 'highAdDensity');
      expect(SourceReportReason.frequentPaywalls.name, 'frequentPaywalls');
      expect(SourceReportReason.impersonation.name, 'impersonation');
      expect(
        SourceReportReason.spreadsMisinformation.name,
        'spreadsMisinformation',
      );
    });

    test('can be created from string values', () {
      expect(
        SourceReportReason.values.byName('lowQualityJournalism'),
        SourceReportReason.lowQualityJournalism,
      );
      expect(
        SourceReportReason.values.byName('highAdDensity'),
        SourceReportReason.highAdDensity,
      );
    });
  });
}
