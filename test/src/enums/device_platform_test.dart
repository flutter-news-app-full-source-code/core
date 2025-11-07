import 'package:core/src/enums/device_platform.dart';
import 'package:test/test.dart';

void main() {
  group('DevicePlatform', () {
    test('should contain the correct values', () {
      // Assert: The enum should have exactly two values.
      expect(DevicePlatform.values, hasLength(2));

      // Assert: The enum should contain 'ios' and 'android'.
      expect(DevicePlatform.values, contains(DevicePlatform.ios));
      expect(DevicePlatform.values, contains(DevicePlatform.android));
    });
  });
}
