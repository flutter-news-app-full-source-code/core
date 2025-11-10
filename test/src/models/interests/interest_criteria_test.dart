import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InterestCriteria', () {
    // Use the criteria from the first interest fixture as the test subject.
    final interestCriteriaFixture = interestsFixturesData.first.criteria;
    final json = interestCriteriaFixture.toJson();

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      final anotherCriteria = InterestCriteria(
        topics: interestCriteriaFixture.topics,
        sources: interestCriteriaFixture.sources,
        countries: interestCriteriaFixture.countries,
      );

      // Assert: The two instances should be equal.
      expect(interestCriteriaFixture, equals(anotherCriteria));
    });

    test('props are correct', () {
      // Assert: The props list should contain all relevant fields.
      expect(
        interestCriteriaFixture.props,
        equals([
          interestCriteriaFixture.topics,
          interestCriteriaFixture.sources,
          interestCriteriaFixture.countries,
        ]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = InterestCriteria.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(interestCriteriaFixture));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = interestCriteriaFixture.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define a new list of topics.
      final newTopics = [topicsFixturesData.last];

      // Act: Create a copy with the new topics.
      final copiedCriteria = interestCriteriaFixture.copyWith(
        topics: newTopics,
      );

      // Assert: The new instance should have the updated value.
      expect(copiedCriteria.topics, equals(newTopics));

      // Assert: Unchanged properties remain the same.
      expect(copiedCriteria.sources, equals(interestCriteriaFixture.sources));

      // Assert: The original instance remains unchanged.
      expect(interestCriteriaFixture.topics, isNot(equals(newTopics)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedCriteria = interestCriteriaFixture.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedCriteria, equals(interestCriteriaFixture));
      },
    );
  });
}
