import 'package:core/core.dart';
import 'package:core/src/fixtures/ranked_list_cards.dart';
import 'package:test/test.dart';

void main() {
  group('RankedListItem Model', () {
    final rankedListItemFixture =
        getRankedListCardsFixturesData().first.timeFrames.values.first.first;
    final rankedListItemJson = rankedListItemFixture.toJson();

    group('fromJson', () {
      test('should correctly deserialize from JSON', () {
        final fromJson = RankedListItem.fromJson(rankedListItemJson);
        expect(fromJson, equals(rankedListItemFixture));
      });
    });

    group('toJson', () {
      test('should correctly serialize to JSON', () {
        final toJson = rankedListItemFixture.toJson();
        expect(toJson, equals(rankedListItemJson));
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final instance1 = rankedListItemFixture;
        final instance2 = RankedListItem.fromJson(
          rankedListItemFixture.toJson(),
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        final instance1 = rankedListItemFixture;
        final instance2 = RankedListItem(
          entityId: 'different-id',
          displayTitle: rankedListItemFixture.displayTitle,
          metricValue: rankedListItemFixture.metricValue,
        );
        final instance3 = RankedListItem(
          entityId: rankedListItemFixture.entityId,
          displayTitle: 'Different Title',
          metricValue: rankedListItemFixture.metricValue,
        );
        expect(instance1, isNot(equals(instance2)));
        expect(instance1, isNot(equals(instance3)));
      });

      test('props list should contain all relevant fields', () {
        expect(rankedListItemFixture.props, [
          rankedListItemFixture.entityId,
          rankedListItemFixture.displayTitle,
          rankedListItemFixture.metricValue,
        ]);
      });
    });
  });
}
