import 'package:core/src/enums/subscription/access_tier.dart';
import 'package:test/test.dart';

void main() {
  group('AccessTier', () {
    test('has correct number of values', () {
      expect(AccessTier.values.length, 3);
    });

    group('serialization', () {
      test('uses correct string values', () {
        expect(AccessTier.guest.name, 'guest');
        expect(AccessTier.standard.name, 'standard');
        expect(AccessTier.premium.name, 'premium');
      });

      test('can be created from string value', () {
        expect(AccessTier.values.byName('guest'), AccessTier.guest);
        expect(AccessTier.values.byName('standard'), AccessTier.standard);
        expect(AccessTier.values.byName('premium'), AccessTier.premium);
      });

      test('throws ArgumentError for invalid string value', () {
        expect(
          () => AccessTier.values.byName('invalid_tier'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
