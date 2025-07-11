import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('PaginationOptions', () {
    test('can be instantiated with values', () {
      const options = PaginationOptions(cursor: 'abc', limit: 10);
      expect(options.cursor, 'abc');
      expect(options.limit, 10);
    });

    test('can be instantiated with null values', () {
      const options = PaginationOptions();
      expect(options.cursor, isNull);
      expect(options.limit, isNull);
    });

    test('supports value equality', () {
      const options1 = PaginationOptions(cursor: 'abc', limit: 10);
      const options2 = PaginationOptions(cursor: 'abc', limit: 10);
      const options3 = PaginationOptions(cursor: 'def', limit: 10);
      const options4 = PaginationOptions(cursor: 'abc', limit: 20);

      expect(options1, equals(options2));
      expect(options1, isNot(equals(options3)));
      expect(options1, isNot(equals(options4)));
    });

    test('props list is correct', () {
      const options = PaginationOptions(cursor: 'abc', limit: 10);
      expect(options.props, equals(['abc', 10]));
    });

    test('props list handles null values correctly', () {
      const options = PaginationOptions();
      expect(options.props, equals([null, null]));
    });
  });
}
