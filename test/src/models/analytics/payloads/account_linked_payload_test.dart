import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AccountLinkedPayload', () {
    const payloadWithLimit = AccountLinkedPayload(
      trigger: AccountLinkTrigger.limitBottomSheet,
      limitType: LimitedAction.bookmarkHeadline,
    );

    const payloadWithoutLimit = AccountLinkedPayload(
      trigger: AccountLinkTrigger.accountPage,
    );

    group('toMap', () {
      test('should correctly serialize to a map with limitType', () {
        final map = payloadWithLimit.toMap();
        expect(map, {
          AnalyticsParameterKeys.trigger:
              AccountLinkTrigger.limitBottomSheet.name,
          AnalyticsParameterKeys.limitType: LimitedAction.bookmarkHeadline.name,
        });
      });

      test('should correctly serialize to a map without limitType', () {
        final map = payloadWithoutLimit.toMap();
        expect(map, {AnalyticsParameterKeys.trigger: 'accountPage'});
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = AccountLinkedPayload(
          trigger: AccountLinkTrigger.feedDecorator,
        );
        const instance2 = AccountLinkedPayload(
          trigger: AccountLinkTrigger.feedDecorator,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        expect(payloadWithLimit, isNot(equals(payloadWithoutLimit)));
      });

      test('props list should contain all relevant fields', () {
        expect(payloadWithLimit.props, [
          payloadWithLimit.trigger,
          payloadWithLimit.limitType,
        ]);
      });
    });
  });
}
