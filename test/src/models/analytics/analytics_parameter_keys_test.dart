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
      expect(AnalyticsParameterKeys.browserType, 'browserType');
      expect(AnalyticsParameterKeys.adProvider, 'adProvider');
      expect(AnalyticsParameterKeys.adType, 'adType');
      expect(AnalyticsParameterKeys.adPlacement, 'adPlacement');
      expect(AnalyticsParameterKeys.shareMedium, 'shareMedium');
      expect(AnalyticsParameterKeys.searchQuery, 'searchQuery');
      expect(AnalyticsParameterKeys.searchResultCount, 'searchResultCount');
      expect(AnalyticsParameterKeys.fromRole, 'fromRole');
      expect(AnalyticsParameterKeys.toRole, 'toRole');
      expect(AnalyticsParameterKeys.feedback, 'feedback');
      expect(AnalyticsParameterKeys.baseTheme, 'baseTheme');
      expect(AnalyticsParameterKeys.accentTheme, 'accentTheme');
      expect(AnalyticsParameterKeys.languageCode, 'languageCode');
      expect(AnalyticsParameterKeys.triggerEvent, 'triggerEvent');
      expect(AnalyticsParameterKeys.productId, 'productId');
      expect(AnalyticsParameterKeys.price, 'price');
      expect(AnalyticsParameterKeys.currency, 'currency');
      expect(AnalyticsParameterKeys.filterId, 'filterId');
      expect(AnalyticsParameterKeys.errorCode, 'errorCode');
      expect(AnalyticsParameterKeys.rewardAmount, 'rewardAmount');
      expect(AnalyticsParameterKeys.density, 'density');
      expect(AnalyticsParameterKeys.reason, 'reason');
      expect(AnalyticsParameterKeys.trigger, 'trigger');
      expect(AnalyticsParameterKeys.isFirstPrompt, 'isFirstPrompt');
      expect(AnalyticsParameterKeys.feedbackDetails, 'feedbackDetails');
      expect(AnalyticsParameterKeys.isPinned, 'isPinned');
      expect(AnalyticsParameterKeys.deliveryTypes, 'deliveryTypes');
      expect(AnalyticsParameterKeys.criteriaSummary, 'criteriaSummary');
    });
  });
}
