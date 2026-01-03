import 'package:core/src/enums/subscription/store_providers.dart';
import 'package:test/test.dart';

void main() {
  group('StoreProviders', () {
    test('has correct number of values', () {
      expect(StoreProviders.values.length, 2);
    });

    group('serialization', () {
      test('uses correct string values for json serialization', () {
        expect(StoreProviders.apple.name, 'apple');
        expect(StoreProviders.google.name, 'google');
      });

      test('can be created from string value for json deserialization', () {
        expect(StoreProviders.values.byName('apple'), StoreProviders.apple);
        expect(StoreProviders.values.byName('google'), StoreProviders.google);
      });

      test('throws ArgumentError for invalid string value', () {
        expect(
          () => StoreProviders.values.byName('invalid_provider'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
