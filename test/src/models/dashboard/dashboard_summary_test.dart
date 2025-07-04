import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('DashboardSummary', () {
    const id = 'test-id';
    const headlineCount = 100;
    const categoryCount = 20;
    const sourceCount = 10;

    final summary = DashboardSummary(
      id: id,
      headlineCount: headlineCount,
      categoryCount: categoryCount,
      sourceCount: sourceCount,
    );

    final summaryJson = {
      'id': id,
      'headline_count': headlineCount,
      'category_count': categoryCount,
      'source_count': sourceCount,
    };

    test('can be instantiated', () {
      expect(summary, isA<DashboardSummary>());
    });

    test('supports value equality', () {
      expect(
        DashboardSummary(
          id: id,
          headlineCount: headlineCount,
          categoryCount: categoryCount,
          sourceCount: sourceCount,
        ),
        equals(summary),
      );
    });

    test('props are correct', () {
      expect(
        summary.props,
        equals([id, headlineCount, categoryCount, sourceCount]),
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
        expect(newSummary.categoryCount, equals(categoryCount));
      });

      test('copies with new categoryCount', () {
        final newSummary = summary.copyWith(categoryCount: 30);
        expect(newSummary.categoryCount, equals(30));
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
