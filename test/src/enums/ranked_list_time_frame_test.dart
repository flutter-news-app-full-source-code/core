import 'package:core/src/enums/ranked_list_time_frame.dart';
import 'package:test/test.dart';

void main() {
  group('RankedListTimeFrame', () {
    test('has correct values', () {
      expect(
        RankedListTimeFrame.values,
        containsAll([
          RankedListTimeFrame.day,
          RankedListTimeFrame.week,
          RankedListTimeFrame.month,
          RankedListTimeFrame.year,
        ]),
      );
    });

    test('has correct string names', () {
      expect(RankedListTimeFrame.day.name, 'day');
      expect(RankedListTimeFrame.year.name, 'year');
    });

    test('can be created from string names', () {
      expect(RankedListTimeFrame.values.byName('day'), RankedListTimeFrame.day);
    });
  });
}
