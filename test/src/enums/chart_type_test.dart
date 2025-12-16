import 'package:core/src/enums/chart_type.dart';
import 'package:test/test.dart';

void main() {
  group('ChartType', () {
    test('has correct values', () {
      expect(ChartType.values, containsAll([ChartType.line, ChartType.bar]));
    });

    test('has correct string names', () {
      expect(ChartType.line.name, 'line');
      expect(ChartType.bar.name, 'bar');
    });

    test('can be created from string names', () {
      expect(ChartType.values.byName('line'), ChartType.line);
    });
  });
}
