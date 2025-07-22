import 'package:core/src/enums/sort_order.dart';
import 'package:test/test.dart';

void main() {
  group('SortOrder', () {
    test('has correct values', () {
      expect(SortOrder.values, containsAll([SortOrder.asc, SortOrder.desc]));
    });

    test('has correct string values', () {
      expect(SortOrder.asc.name, 'asc');
      expect(SortOrder.desc.name, 'desc');
    });

    test('can be created from string values', () {
      expect(SortOrder.values.byName('asc'), SortOrder.asc);
      expect(SortOrder.values.byName('desc'), SortOrder.desc);
    });
  });
}
