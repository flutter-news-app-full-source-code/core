import 'package:core/src/enums/subscription/store_provider.dart';
import 'package:test/test.dart';

void main() {
  group('StoreProvider', () {
    test('has correct number of values', () {
      expect(StoreProvider.values.length, 3);
    });

    group('serialization', () {
      test('uses correct string values for json serialization', () {
        expect(StoreProvider.apple.name, 'apple');
        expect(StoreProvider.google.name, 'google');
        expect(StoreProvider.stripe.name, 'stripe');
      });

      test('can be created from string value for json deserialization', () {
        expect(StoreProvider.values.byName('apple'), StoreProvider.apple);
        expect(StoreProvider.values.byName('google'), StoreProvider.google);
        expect(StoreProvider.values.byName('stripe'), StoreProvider.stripe);
      });

      test('throws ArgumentError for invalid string value', () {
        expect(
          () => StoreProvider.values.byName('invalid_provider'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
