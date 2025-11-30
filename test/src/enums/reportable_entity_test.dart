import 'package:core/src/enums/reportable_entity.dart';
import 'package:test/test.dart';

void main() {
  group('ReportableEntity', () {
    test('has correct values', () {
      expect(
        ReportableEntity.values,
        containsAll([
          ReportableEntity.headline,
          ReportableEntity.source,
          ReportableEntity.engagement,
        ]),
      );
    });

    test('has correct string values', () {
      expect(ReportableEntity.headline.name, 'headline');
      expect(ReportableEntity.source.name, 'source');
      expect(ReportableEntity.engagement.name, 'engagement');
    });

    test('can be created from string values', () {
      expect(
        ReportableEntity.values.byName('headline'),
        ReportableEntity.headline,
      );
      expect(ReportableEntity.values.byName('source'), ReportableEntity.source);
      expect(
        ReportableEntity.values.byName('engagement'),
        ReportableEntity.engagement,
      );
    });
  });
}
