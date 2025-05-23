import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('SuggestedContentTemplate', () {
    SuggestedContentTemplate createSubject({
      SuggestionTemplateType type = SuggestionTemplateType.categoriesToFollow,
      SuggestedContentDisplayType displayType =
          SuggestedContentDisplayType.horizontalCardList,
      ContentType suggestedContentType = ContentType.category,
      String? title,
      String? description,
      int? maxItemsToDisplay,
      String? fetchCriteria,
    }) {
      return SuggestedContentTemplate(
        type: type,
        displayType: displayType,
        suggestedContentType: suggestedContentType,
        title: title,
        description: description,
        maxItemsToDisplay: maxItemsToDisplay,
        fetchCriteria: fetchCriteria,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.type, SuggestionTemplateType.categoriesToFollow);
      expect(
          instance.displayType, SuggestedContentDisplayType.horizontalCardList);
      expect(instance.suggestedContentType, ContentType.category);
    });

    test('supports value equality', () {
      final instanceA = createSubject(
        title: 'Title A',
      );
      final instanceB = createSubject(
        title: 'Title A',
      );
      final instanceC = createSubject(
        type: SuggestionTemplateType.sourcesToFollow,
        displayType: SuggestedContentDisplayType.verticalCardList,
        suggestedContentType: ContentType.source,
        title: 'Title C',
      );

      expect(instanceA, equals(instanceB));
      expect(instanceA, isNot(equals(instanceC)));
    });

    test('props are correct', () {
      final instance = createSubject(
        type: SuggestionTemplateType.countriesToFollow,
        displayType: SuggestedContentDisplayType.grid,
        suggestedContentType: ContentType.country,
        title: 'Explore Countries',
        description: 'Find news from around the world',
        maxItemsToDisplay: 10,
        fetchCriteria: 'popular',
      );

      expect(
        instance.props,
        [
          SuggestionTemplateType.countriesToFollow,
          'Explore Countries',
          'Find news from around the world',
          SuggestedContentDisplayType.grid,
          ContentType.country,
          10,
          'popular',
        ],
      );
    });

    group('fromJson', () {
      test('returns correct SuggestedContentTemplate object', () {
        final json = <String, dynamic>{
          'type': 'categories-to-follow',
          'title': 'Suggested Categories',
          'description': 'Discover new topics.',
          'displayType': 'horizontal-card-list',
          'suggestedContentType': 'category',
          'maxItemsToDisplay': 5,
          'fetchCriteria': 'trending',
        };

        final instance = SuggestedContentTemplate.fromJson(json);

        expect(instance.type, SuggestionTemplateType.categoriesToFollow);
        expect(instance.title, 'Suggested Categories');
        expect(instance.description, 'Discover new topics.');
        expect(instance.displayType,
            SuggestedContentDisplayType.horizontalCardList);
        expect(instance.suggestedContentType, ContentType.category);
        expect(instance.maxItemsToDisplay, 5);
        expect(instance.fetchCriteria, 'trending');
      });

      test('handles null optional fields', () {
        final json = <String, dynamic>{
          'type': 'sources-to-follow',
          'displayType': 'vertical-card-list',
          'suggestedContentType': 'source',
        };

        final instance = SuggestedContentTemplate.fromJson(json);

        expect(instance.type, SuggestionTemplateType.sourcesToFollow);
        expect(instance.title, isNull);
        expect(instance.description, isNull);
        expect(
            instance.displayType, SuggestedContentDisplayType.verticalCardList);
        expect(instance.suggestedContentType, ContentType.source);
        expect(instance.maxItemsToDisplay, isNull);
        expect(instance.fetchCriteria, isNull);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final instance = createSubject(
          type: SuggestionTemplateType.countriesToFollow,
          displayType: SuggestedContentDisplayType.grid,
          suggestedContentType: ContentType.country,
          title: 'Explore Countries',
          description: 'Find news from around the world',
          maxItemsToDisplay: 10,
          fetchCriteria: 'popular',
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'type': 'countries-to-follow',
          'title': 'Explore Countries',
          'description': 'Find news from around the world',
          'displayType': 'grid',
          'suggestedContentType': 'country',
          'maxItemsToDisplay': 10,
          'fetchCriteria': 'popular',
        });
      });

      test('handles null optional fields', () {
        final instance = createSubject(
          type: SuggestionTemplateType.sourcesToFollow,
          displayType: SuggestedContentDisplayType.textList,
          suggestedContentType: ContentType.source,
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'type': 'sources-to-follow',
          'displayType': 'text-list',
          'suggestedContentType': 'source',
        });
      });
    });
  });
}
