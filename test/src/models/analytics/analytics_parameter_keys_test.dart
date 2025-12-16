import 'package:core/src/models/analytics/analytics_parameter_keys.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsParameterKeys', () {
    test('constants have correct string values', () {
      expect(AnalyticsParameterKeys.authMethod, 'authMethod');
      expect(AnalyticsParameterKeys.contentId, 'contentId');
      expect(AnalyticsParameterKeys.contentType, 'contentType');
      expect(AnalyticsParameterKeys.reactionType, 'reactionType');
      expect(AnalyticsParameterKeys.limitType, 'limitType');
      expect(AnalyticsParameterKeys.ctaType, 'ctaType');
      expect(AnalyticsParameterKeys.durationInSeconds, 'durationInSeconds');
      expect(AnalyticsParameterKeys.criteriaSummary, 'criteriaSummary');
    });
  });
}
