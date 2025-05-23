import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementTemplateType', () {
    test('has all expected values', () {
      expect(
        EngagementTemplateType.values,
        containsAll([
          EngagementTemplateType.rateApp,
          EngagementTemplateType.linkAccount,
          EngagementTemplateType.upgradeToPremium,
          EngagementTemplateType.completeProfile,
          EngagementTemplateType.exploreNewFeature,
        ]),
      );
    });

    test('string representation (name) matches expected camelCase', () {
      expect(EngagementTemplateType.rateApp.name, 'rateApp');
      expect(EngagementTemplateType.linkAccount.name, 'linkAccount');
      expect(EngagementTemplateType.upgradeToPremium.name, 'upgradeToPremium');
      expect(EngagementTemplateType.completeProfile.name, 'completeProfile');
      expect(
          EngagementTemplateType.exploreNewFeature.name, 'exploreNewFeature');
    });

    test('can be created from string using values.byName', () {
      expect(
        EngagementTemplateType.values.byName('rateApp'),
        EngagementTemplateType.rateApp,
      );
      expect(
        EngagementTemplateType.values.byName('linkAccount'),
        EngagementTemplateType.linkAccount,
      );
      expect(
        EngagementTemplateType.values.byName('upgradeToPremium'),
        EngagementTemplateType.upgradeToPremium,
      );
      expect(
        EngagementTemplateType.values.byName('completeProfile'),
        EngagementTemplateType.completeProfile,
      );
      expect(
        EngagementTemplateType.values.byName('exploreNewFeature'),
        EngagementTemplateType.exploreNewFeature,
      );
    });

    test('values.byName throws ArgumentError for unknown value', () {
      expect(
        () => EngagementTemplateType.values.byName('unknownType'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('SuggestionTemplateType', () {
    test('has all expected values', () {
      expect(
        SuggestionTemplateType.values,
        containsAll([
          SuggestionTemplateType.categoriesToFollow,
          SuggestionTemplateType.sourcesToFollow,
          SuggestionTemplateType.countriesToFollow,
        ]),
      );
    });

    test('string representation (name) matches expected camelCase', () {
      expect(
          SuggestionTemplateType.categoriesToFollow.name, 'categoriesToFollow');
      expect(SuggestionTemplateType.sourcesToFollow.name, 'sourcesToFollow');
      expect(
          SuggestionTemplateType.countriesToFollow.name, 'countriesToFollow');
    });

    test('can be created from string using values.byName', () {
      expect(
        SuggestionTemplateType.values.byName('categoriesToFollow'),
        SuggestionTemplateType.categoriesToFollow,
      );
      expect(
        SuggestionTemplateType.values.byName('sourcesToFollow'),
        SuggestionTemplateType.sourcesToFollow,
      );
      expect(
        SuggestionTemplateType.values.byName('countriesToFollow'),
        SuggestionTemplateType.countriesToFollow,
      );
    });

    test('values.byName throws ArgumentError for unknown value', () {
      expect(
        () => SuggestionTemplateType.values.byName('unknownType'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
