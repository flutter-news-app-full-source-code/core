import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('SortOption', () {
    test('can be instantiated with default order', () {
      const option = SortOption('name');
      expect(option.field, 'name');
      expect(option.order, SortOrder.asc);
    });

    test('can be instantiated with explicit order', () {
      const option = SortOption('date', SortOrder.desc);
      expect(option.field, 'date');
      expect(option.order, SortOrder.desc);
    });

    test('supports value equality', () {
      const option1 = SortOption('name', SortOrder.asc);
      const option2 = SortOption('name', SortOrder.asc);
      const option3 = SortOption('name', SortOrder.desc);
      const option4 = SortOption('date', SortOrder.asc);

      expect(option1, equals(option2));
      expect(option1, isNot(equals(option3)));
      expect(option1, isNot(equals(option4)));
    });

    test('props list is correct', () {
      const option = SortOption('name', SortOrder.desc);
      expect(option.props, equals(['name', SortOrder.desc]));
    });
  });
}
