import 'package:core/src/enums/chart_time_frame.dart';
import 'package:test/test.dart';

void main() {
  group('ChartTimeFrame', () {
    test('has correct values', () {
      expect(
        ChartTimeFrame.values,
        containsAll([
          ChartTimeFrame.week,
          ChartTimeFrame.month,
          ChartTimeFrame.year,
        ]),
      );
    });

    test('has correct string names', () {
      expect(ChartTimeFrame.week.name, 'week');
      expect(ChartTimeFrame.month.name, 'month');
      expect(ChartTimeFrame.year.name, 'year');
    });

    test('can be created from string names', () {
      expect(ChartTimeFrame.values.byName('week'), ChartTimeFrame.week);
    });
  });
}
