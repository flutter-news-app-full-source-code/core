import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('DashboardSummary', () {
    const id = 'test-id';
    const headlineCount = 100;
    const topicCount = 20;
    const sourceCount = 10;

    const summary = DashboardSummary(
      id: id,
      headlineCount: headlineCount,
      topicCount: topicCount,
      sourceCount: sourceCount,
    );

    final summaryJson = {
      'id': id,
      'headlineCount': headlineCount,
      'topicCount': topicCount,
      'sourceCount': sourceCount,
    };

    test('can be instantiated', () {
      expect(summary, isA<DashboardSummary>());
    });

    test('supports value equality', () {
      expect(
        const DashboardSummary(
          id: id,
          headlineCount: headlineCount,
          topicCount: topicCount,
          sourceCount: sourceCount,
        ),
        equals(summary),
      );
    });

    test('props are correct', () {
      expect(
        summary.props,
        equals([id, headlineCount, topicCount, sourceCount]),
      );
    });

    group('serialization', () {
      test('fromJson creates a valid instance', () {
        final fromJson = DashboardSummary.fromJson(summaryJson);
        expect(fromJson, equals(summary));
      });

      test('toJson returns a valid map', () {
        final toJson = summary.toJson();
        expect(toJson, equals(summaryJson));
      });
    });

    group('copyWith', () {
      test('copies with no new values', () {
        expect(summary.copyWith(), equals(summary));
      });

      test('copies with new headlineCount', () {
        final newSummary = summary.copyWith(headlineCount: 200);
        expect(newSummary.headlineCount, equals(200));
        expect(newSummary.topicCount, equals(topicCount));
      });

      test('copies with new topicCount', () {
        final newSummary = summary.copyWith(topicCount: 30);
        expect(newSummary.topicCount, equals(30));
        expect(newSummary.headlineCount, equals(headlineCount));
      });

      test('copies with new sourceCount', () {
        final newSummary = summary.copyWith(sourceCount: 15);
        expect(newSummary.sourceCount, equals(15));
        expect(newSummary.headlineCount, equals(headlineCount));
      });
    });
  });
}
