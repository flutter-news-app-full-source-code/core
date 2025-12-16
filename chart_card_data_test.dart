import 'package:core/core.dart';
import 'package:core/src/fixtures/chart_cards.dart';
import 'package:test/test.dart';

void main() {
  group('ChartCardData Model', () {
    final chartCardDataFixture = getChartCardsFixturesData().first;
    final chartCardDataJson = chartCardDataFixture.toJson();

    group('fromJson', () {
      test('should correctly deserialize from JSON', () {
        final fromJson = ChartCardData.fromJson(chartCardDataJson);
        expect(fromJson, equals(chartCardDataFixture));
      });
    });

    group('toJson', () {
      test('should correctly serialize to JSON', () {
        final toJson = chartCardDataFixture.toJson();
        expect(toJson, equals(chartCardDataJson));
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final instance1 = chartCardDataFixture;
        final instance2 = ChartCardData.fromJson(chartCardDataFixture.toJson());
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        final instance1 = chartCardDataFixture;
        final instance2 = ChartCardData(
          id: ChartCardId.contentHeadlinesViewsByTopic, // Different ID
          label: chartCardDataFixture.label,
          type: chartCardDataFixture.type,
          timeFrames: chartCardDataFixture.timeFrames,
        );
        final instance3 = ChartCardData(
          id: chartCardDataFixture.id,
          label: 'Different Label',
          type: chartCardDataFixture.type,
          timeFrames: chartCardDataFixture.timeFrames,
        );
        final instance4 = ChartCardData(
          id: chartCardDataFixture.id,
          label: chartCardDataFixture.label,
          type: ChartType.bar, // Different type
          timeFrames: chartCardDataFixture.timeFrames,
        );
        expect(instance1, isNot(equals(instance2)));
        expect(instance1, isNot(equals(instance3)));
        expect(instance1, isNot(equals(instance4)));
      });

      test('props list should contain all relevant fields', () {
        expect(chartCardDataFixture.props, [
          chartCardDataFixture.id,
          chartCardDataFixture.label,
          chartCardDataFixture.type,
          chartCardDataFixture.timeFrames,
        ]);
      });
    });
  });
}
