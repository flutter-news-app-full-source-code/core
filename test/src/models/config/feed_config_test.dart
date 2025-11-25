import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedConfig', () {
    final feedConfigFixture = remoteConfigsFixturesData.first.features.feed;
    final json = feedConfigFixture.toJson();

    test('can be instantiated', () {
      expect(feedConfigFixture, isA<FeedConfig>());
    });

    test('supports value equality', () {
      final anotherConfig = remoteConfigsFixturesData.first.features.feed;
      expect(feedConfigFixture, equals(anotherConfig));
    });

    test('props are correct', () {
      expect(
        feedConfigFixture.props,
        equals([
          feedConfigFixture.itemClickBehavior,
          feedConfigFixture.decorators,
        ]),
      );
    });

    test('can be created from JSON', () {
      final fromJson = FeedConfig.fromJson(json);
      expect(fromJson, equals(feedConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = feedConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = feedConfigFixture.copyWith(
        itemClickBehavior: FeedItemClickBehavior.externalNavigation,
      );

      expect(
        updatedConfig.itemClickBehavior,
        FeedItemClickBehavior.externalNavigation,
      );
      expect(updatedConfig.decorators, equals(feedConfigFixture.decorators));
      expect(updatedConfig, isNot(equals(feedConfigFixture)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        final copiedConfig = feedConfigFixture.copyWith();
        expect(copiedConfig, equals(feedConfigFixture));
      },
    );
  });
}
