import 'package:core/src/enums/kpi_card_id.dart';
import 'package:test/test.dart';

void main() {
  group('KpiCardId', () {
    test('has correct number of values', () {
      // This test is fragile and will need updates if the enum changes.
      expect(KpiCardId.values.length, 21);
    });

    test('has correct string names', () {
      expect(KpiCardId.usersTotalRegistered.name, 'usersTotalRegistered');
      expect(
        KpiCardId.engagementsAppReviewsStoreRequests.name,
        'engagementsAppReviewsStoreRequests',
      );
    });

    test('can be created from string names', () {
      expect(
        KpiCardId.values.byName('usersTotalRegistered'),
        KpiCardId.usersTotalRegistered,
      );
    });
  });
}
