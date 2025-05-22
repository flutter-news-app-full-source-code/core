import 'package:ht_shared/src/models/feed_decorator/engagement_content_type.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementContentType', () {
    test('has correct string values for JSON serialization', () {
      expect(EngagementContentType.signUp.name, 'signUp');
      expect(EngagementContentType.upgrade.name, 'upgrade');
      expect(EngagementContentType.feedback.name, 'feedback');
      expect(EngagementContentType.survey.name, 'survey');
      expect(EngagementContentType.rateApp.name, 'rateApp');
      expect(EngagementContentType.shareApp.name, 'shareApp');
      expect(EngagementContentType.custom.name, 'custom');
    });

    test('can be created from string values', () {
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

    test('has correct toString representation', () {
      expect(
        EngagementContentType.signUp.toString(),
        'EngagementContentType.signUp',
      );
      expect(
        EngagementContentType.upgrade.toString(),
        'EngagementContentType.upgrade',
      );
      expect(
        EngagementContentType.feedback.toString(),
        'EngagementContentType.feedback',
      );
      expect(
        EngagementContentType.survey.toString(),
        'EngagementContentType.survey',
      );
      expect(
        EngagementContentType.rateApp.toString(),
        'EngagementContentType.rateApp',
      );
      expect(
        EngagementContentType.shareApp.toString(),
        'EngagementContentType.shareApp',
      );
      expect(
        EngagementContentType.custom.toString(),
        'EngagementContentType.custom',
      );
    });
  });
}
