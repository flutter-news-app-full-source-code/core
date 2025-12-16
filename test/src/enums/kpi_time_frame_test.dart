import 'package:core/src/enums/kpi_time_frame.dart';
import 'package:test/test.dart';

void main() {
  group('KpiTimeFrame', () {
    test('has correct values', () {
      expect(
        KpiTimeFrame.values,
        containsAll([
          KpiTimeFrame.day,
          KpiTimeFrame.week,
          KpiTimeFrame.month,
          KpiTimeFrame.year,
        ]),
      );
    });

    test('has correct string names', () {
      expect(KpiTimeFrame.day.name, 'day');
      expect(KpiTimeFrame.year.name, 'year');
    });

    test('can be created from string names', () {
      expect(KpiTimeFrame.values.byName('day'), KpiTimeFrame.day);
    });
  });
}
