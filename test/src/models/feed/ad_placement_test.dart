import 'package:ht_shared/src/models/feed/ad_placement.dart';
import 'package:test/test.dart';

void main() {
  group('AdPlacement', () {
    test('has correct string values for JSON serialization', () {
      expect(
        AdPlacement.feedInlineStandardBanner.name,
        'feedInlineStandardBanner',
      );
      expect(
        AdPlacement.feedInlineNativeBanner.name,
        'feedInlineNativeBanner',
      );
    });

    test('can be created from string values', () {
      expect(
        AdPlacement.values.byName('feedInlineStandardBanner'),
        AdPlacement.feedInlineStandardBanner,
      );
      expect(
        AdPlacement.values.byName('feedInlineNativeBanner'),
        AdPlacement.feedInlineNativeBanner,
      );
    });

    test('has correct toString representation', () {
      expect(
        AdPlacement.feedInlineStandardBanner.toString(),
        'AdPlacement.feedInlineStandardBanner',
      );
      expect(
        AdPlacement.feedInlineNativeBanner.toString(),
        'AdPlacement.feedInlineNativeBanner',
      );
    });
  });
}
