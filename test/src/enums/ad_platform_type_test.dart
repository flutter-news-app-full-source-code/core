import 'package:core/src/enums/ad_platform_type.dart';
import 'package:test/test.dart';

void main() {
  group('AdPlatformType', () {
    test('has correct string values', () {
      expect(AdPlatformType.admob.name, 'admob');
      expect(AdPlatformType.demo.name, 'demo');
    });

    test('can be created from string values', () {
      expect(AdPlatformType.values.byName('admob'), AdPlatformType.admob);
      expect(AdPlatformType.values.byName('demo'), AdPlatformType.demo);
    });

    test('has correct toString representation', () {
      expect(AdPlatformType.admob.toString(), 'AdPlatformType.admob');
      expect(AdPlatformType.demo.toString(), 'AdPlatformType.demo');
    });
  });
}
