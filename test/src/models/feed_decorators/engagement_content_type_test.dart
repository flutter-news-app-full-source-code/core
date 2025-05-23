import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementContentType', () {
    test('has all expected values', () {
      expect(
        EngagementContentType.values,
        containsAll([
          EngagementContentType.signUp,
          EngagementContentType.upgrade,
          EngagementContentType.feedback,
          EngagementContentType.survey,
          EngagementContentType.rateApp,
          EngagementContentType.shareApp,
          EngagementContentType.custom,
        ]),
      );
    });

    test('string representation (name) matches expected camelCase', () {
      expect(EngagementContentType.signUp.name, 'signUp');
      expect(EngagementContentType.upgrade.name, 'upgrade');
      expect(EngagementContentType.feedback.name, 'feedback');
      expect(EngagementContentType.survey.name, 'survey');
      expect(EngagementContentType.rateApp.name, 'rateApp');
      expect(EngagementContentType.shareApp.name, 'shareApp');
      expect(EngagementContentType.custom.name, 'custom');
    });

    test('can be created from string using values.byName', () {
      expect(
        EngagementContentType.values.byName('signUp'),
        EngagementContentType.signUp,
      );
      expect(
        EngagementContentType.values.byName('upgrade'),
        EngagementContentType.upgrade,
      );
      expect(
        EngagementContentType.values.byName('feedback'),
        EngagementContentType.feedback,
      );
      expect(
        EngagementContentType.values.byName('survey'),
        EngagementContentType.survey,
      );
      expect(
        EngagementContentType.values.byName('rateApp'),
        EngagementContentType.rateApp,
      );
      expect(
        EngagementContentType.values.byName('shareApp'),
        EngagementContentType.shareApp,
      );
      expect(
        EngagementContentType.values.byName('custom'),
        EngagementContentType.custom,
      );
    });

    test('values.byName throws ArgumentError for unknown value', () {
      expect(
        () => EngagementContentType.values.byName('unknownType'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
