import 'package:core/src/models/feed_decorators/ad.dart';
import 'package:test/test.dart';

void main() {
  group('AdPlacement', () {
    test('can be instantiated', () {
      expect(AdPlacement.feedInlineStandardBanner, isA<AdPlacement>());
    });

    test('has correct values', () {
      expect(AdPlacement.values, [
        AdPlacement.feedInlineStandardBanner,
        AdPlacement.feedInlineNativeBanner,
      ]);
    });
  });
}
