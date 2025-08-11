import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('DashboardSummary', () {
    final summaryFixture = dashboardSummaryFixturesData.first;

    test('can be instantiated', () {
      expect(summaryFixture, isA<DashboardSummary>());
    });

    test('supports value equality', () {
      expect(summaryFixture.copyWith(), equals(summaryFixture));
    });

    test('props are correct', () {
      expect(
        summaryFixture.props,
        equals([
          summaryFixture.id,
          summaryFixture.headlineCount,
          summaryFixture.topicCount,
          summaryFixture.sourceCount,
        ]),
      );
    });

    group('serialization', () {
      test('fromJson creates a valid instance', () {
        final fromJson = DashboardSummary.fromJson(summaryFixture.toJson());
        expect(fromJson, equals(summaryFixture));
      });

      test('toJson returns a valid map', () {
        final toJson = summaryFixture.toJson();
        expect(toJson, equals(summaryFixture.toJson()));
      });
    });

    group('copyWith', () {
      test('copies with no new values', () {
        expect(summaryFixture.copyWith(), equals(summaryFixture));
      });

      test('copies with new headlineCount', () {
        final newSummary = summaryFixture.copyWith(headlineCount: 200);
        expect(newSummary.headlineCount, equals(200));
        expect(newSummary.topicCount, equals(summaryFixture.topicCount));
      });

      test('copies with new topicCount', () {
        final newSummary = summaryFixture.copyWith(topicCount: 30);
        expect(newSummary.topicCount, equals(30));
        expect(newSummary.headlineCount, equals(summaryFixture.headlineCount));
      });

      test('copies with new sourceCount', () {
        final newSummary = summaryFixture.copyWith(sourceCount: 15);
        expect(newSummary.sourceCount, equals(15));
        expect(newSummary.headlineCount, equals(summaryFixture.headlineCount));
      });
    });
  });
}
