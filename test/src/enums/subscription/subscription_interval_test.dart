import 'package:core/src/enums/subscription/subscription_interval.dart';
import 'package:test/test.dart';

void main() {
  group('SubscriptionInterval', () {
    test('has correct number of values', () {
      expect(SubscriptionInterval.values.length, 2);
    });

    group('serialization', () {
      test('uses correct string values', () {
        expect(SubscriptionInterval.month.name, 'month');
        expect(SubscriptionInterval.year.name, 'year');
      });

      test('can be created from string value', () {
        expect(
          SubscriptionInterval.values.byName('month'),
          SubscriptionInterval.month,
        );
        expect(
          SubscriptionInterval.values.byName('year'),
          SubscriptionInterval.year,
        );
      });

      test('throws ArgumentError for invalid string value', () {
        expect(
          () => SubscriptionInterval.values.byName('invalid_interval'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
