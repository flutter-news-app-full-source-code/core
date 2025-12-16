import 'package:core/src/enums/limited_action.dart';
import 'package:test/test.dart';

void main() {
  group('LimitedAction', () {
    test('has correct number of values', () {
      // This test is fragile and will need updates if the enum changes.
      expect(LimitedAction.values.length, 10);
    });

    test('has correct string names', () {
      expect(LimitedAction.bookmarkHeadline.name, 'bookmarkHeadline');
      expect(LimitedAction.submitReport.name, 'submitReport');
    });

    test('can be created from string names', () {
      expect(
        LimitedAction.values.byName('bookmarkHeadline'),
        LimitedAction.bookmarkHeadline,
      );
      expect(
        LimitedAction.values.byName('submitReport'),
        LimitedAction.submitReport,
      );
    });
  });
}
