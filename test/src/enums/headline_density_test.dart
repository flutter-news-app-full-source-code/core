import 'package:core/src/enums/headline_density.dart';
import 'package:test/test.dart';

void main() {
  group('HeadlineDensity', () {
    test('has correct values', () {
      expect(
        HeadlineDensity.values,
        containsAll([
          HeadlineDensity.compact,
          HeadlineDensity.standard,
          HeadlineDensity.comfortable,
        ]),
      );
    });

    test('has correct string values', () {
      expect(HeadlineDensity.compact.name, 'compact');
      expect(HeadlineDensity.standard.name, 'standard');
      expect(HeadlineDensity.comfortable.name, 'comfortable');
    });

    test('can be created from string values', () {
      expect(
        HeadlineDensity.values.byName('compact'),
        HeadlineDensity.compact,
      );
      expect(
        HeadlineDensity.values.byName('standard'),
        HeadlineDensity.standard,
      );
      expect(
        HeadlineDensity.values.byName('comfortable'),
        HeadlineDensity.comfortable,
      );
    });

    test('has correct toString representation', () {
      expect(
        HeadlineDensity.compact.toString(),
        'HeadlineDensity.compact',
      );
      expect(
        HeadlineDensity.standard.toString(),
        'HeadlineDensity.standard',
      );
      expect(
        HeadlineDensity.comfortable.toString(),
        'HeadlineDensity.comfortable',
      );
    });
  });
}
