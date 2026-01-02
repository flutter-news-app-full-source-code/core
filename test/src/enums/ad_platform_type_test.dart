import 'package:core/src/enums/ad_platform_type.dart';
import 'package:test/test.dart';

void main() {
  group('AdPlatformType', () {
    test('has correct string values', () {
      expect(AdPlatformType.admob.name, 'admob');
    });

    test('can be created from string values', () {
      expect(AdPlatformType.values.byName('admob'), AdPlatformType.admob);
    });

    test('has correct toString representation', () {
      expect(AdPlatformType.admob.toString(), 'AdPlatformType.admob');
    });
  });
}
