import 'package:core/core.dart';
import 'package:core/src/enums/dismissible_hint_type.dart';
import 'package:core/src/fixtures/user_contexts.dart';
import 'package:test/test.dart';

void main() {
  group('UserContext', () {
    final userContextFixture = userContextsFixturesData.first;
    final json = userContextFixture.toJson();

    test('can be instantiated', () {
      expect(userContextFixture, isA<UserContext>());
    });

    test('supports value equality', () {
      final anotherContext = userContextFixture.copyWith();
      expect(userContextFixture, equals(anotherContext));
    });

    test('props are correct', () {
      expect(
        userContextFixture.props,
        equals([
          userContextFixture.userId,
          userContextFixture.feedDecoratorStatus,
          userContextFixture.hasCompletedOnboarding,
          userContextFixture.lastSeenAppVersion,
          userContextFixture.dismissedHints,
        ]),
      );
    });

    test('can be created from JSON', () {
      final fromJson = UserContext.fromJson(json);
      expect(fromJson, equals(userContextFixture));
    });

    test('can be converted to JSON', () {
      final toJson = userContextFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedContext = userContextFixture.copyWith(
        hasCompletedOnboarding: false,
        lastSeenAppVersion: '2.0.0',
        dismissedHints: {DismissibleHintType.feedFilterTooltip},
      );

      expect(updatedContext.hasCompletedOnboarding, isFalse);
      expect(updatedContext.lastSeenAppVersion, equals('2.0.0'));
      expect(
        updatedContext.dismissedHints,
        contains(DismissibleHintType.feedFilterTooltip),
      );
      expect(updatedContext, isNot(equals(userContextFixture)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        final copiedContext = userContextFixture.copyWith();
        expect(copiedContext, equals(userContextFixture));
      },
    );

    group('JSON Serialization Edge Cases', () {
      test('handles empty dismissedHints set correctly', () {
        final context = userContextFixture.copyWith(dismissedHints: {});
        final json = context.toJson();
        final fromJson = UserContext.fromJson(json);
        expect(fromJson.dismissedHints, isEmpty);
      });

      test('handles populated dismissedHints set correctly', () {
        final context = userContextFixture.copyWith(
          dismissedHints: {
            DismissibleHintType.feedFilterTooltip,
            DismissibleHintType.saveArticleTooltip,
          },
        );
        final json = context.toJson();
        final fromJson = UserContext.fromJson(json);
        expect(fromJson.dismissedHints, hasLength(2));
        expect(
          fromJson.dismissedHints,
          containsAll([
            DismissibleHintType.feedFilterTooltip,
            DismissibleHintType.saveArticleTooltip,
          ]),
        );
      });
    });
  });
}
