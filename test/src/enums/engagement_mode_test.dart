import 'package:core/src/enums/engagement_mode.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementMode', () {
    test('has correct values', () {
      expect(
        EngagementMode.values,
        containsAll([
          EngagementMode.reactionsOnly,
          EngagementMode.reactionsAndComments,
        ]),
      );
    });

    test('has correct string values', () {
      expect(EngagementMode.reactionsOnly.name, 'reactionsOnly');
      expect(EngagementMode.reactionsAndComments.name, 'reactionsAndComments');
    });

    test('can be created from string values', () {
      expect(
        EngagementMode.values.byName('reactionsOnly'),
        EngagementMode.reactionsOnly,
      );
    });
  });
}
