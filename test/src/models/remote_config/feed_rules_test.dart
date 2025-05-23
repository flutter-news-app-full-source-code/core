import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('PlacementCriteria', () {
    PlacementCriteria createSubject({
      int? afterPrimaryItemIndex,
      String? relativePosition,
      int? minPrimaryItemsRequired,
    }) {
      return PlacementCriteria(
        afterPrimaryItemIndex: afterPrimaryItemIndex,
        relativePosition: relativePosition,
        minPrimaryItemsRequired: minPrimaryItemsRequired,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.afterPrimaryItemIndex, isNull);
      expect(instance.relativePosition, isNull);
      expect(instance.minPrimaryItemsRequired, isNull);
    });

    test('supports value equality', () {
      final instanceA = createSubject(
        afterPrimaryItemIndex: 5,
        relativePosition: 'middle',
        minPrimaryItemsRequired: 10,
      );
      final instanceB = createSubject(
        afterPrimaryItemIndex: 5,
        relativePosition: 'middle',
        minPrimaryItemsRequired: 10,
      );
      final instanceC = createSubject(
        afterPrimaryItemIndex: 10,
      );

      expect(instanceA, equals(instanceB));
      expect(instanceA, isNot(equals(instanceC)));
    });

    test('props are correct', () {
      final instance = createSubject(
        afterPrimaryItemIndex: 5,
        relativePosition: 'middle',
        minPrimaryItemsRequired: 10,
      );

      expect(
        instance.props,
        [5, 'middle', 10],
      );
    });

    group('fromJson', () {
      test('returns correct PlacementCriteria object', () {
        final json = <String, dynamic>{
          'after_primary_item_index': 5,
          'relative_position': 'middle',
          'min_primary_items_required': 10,
        };

        final instance = PlacementCriteria.fromJson(json);

        expect(instance.afterPrimaryItemIndex, 5);
        expect(instance.relativePosition, 'middle');
        expect(instance.minPrimaryItemsRequired, 10);
      });

      test('handles null optional fields', () {
        final json = <String, dynamic>{};

        final instance = PlacementCriteria.fromJson(json);

        expect(instance.afterPrimaryItemIndex, isNull);
        expect(instance.relativePosition, isNull);
        expect(instance.minPrimaryItemsRequired, isNull);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final instance = createSubject(
          afterPrimaryItemIndex: 5,
          relativePosition: 'middle',
          minPrimaryItemsRequired: 10,
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'after_primary_item_index': 5,
          'relative_position': 'middle',
          'min_primary_items_required': 10,
        });
      });

      test('handles null optional fields', () {
        final instance = createSubject();

        final json = instance.toJson();

        expect(json, <String, dynamic>{});
      });
    });
  });

  group('EngagementRule', () {
    EngagementRule createSubject({
      EngagementTemplateType templateType = EngagementTemplateType.rateApp,
      List<UserRole> userRoles = const [UserRole.standardUser],
      int? minDaysSinceAccountCreation,
      int? maxTimesToShow,
      int? minDaysSinceLastShown,
      PlacementCriteria? placement,
    }) {
      return EngagementRule(
        templateType: templateType,
        userRoles: userRoles,
        minDaysSinceAccountCreation: minDaysSinceAccountCreation,
        maxTimesToShow: maxTimesToShow,
        minDaysSinceLastShown: minDaysSinceLastShown,
        placement: placement,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.templateType, EngagementTemplateType.rateApp);
      expect(instance.userRoles, [UserRole.standardUser]);
    });

    test('supports value equality', () {
      final instanceA = createSubject(
        userRoles: [UserRole.standardUser],
        minDaysSinceAccountCreation: 7,
      );
      final instanceB = createSubject(
        userRoles: [UserRole.standardUser],
        minDaysSinceAccountCreation: 7,
      );
      final instanceC = createSubject(
        templateType: EngagementTemplateType.linkAccount,
      );

      expect(instanceA, equals(instanceB));
      expect(instanceA, isNot(equals(instanceC)));
    });

    test('props are correct', () {
      const placement = PlacementCriteria(afterPrimaryItemIndex: 3);
      final instance = createSubject(
        templateType: EngagementTemplateType.upgradeToPremium,
        userRoles: [UserRole.premiumUser, UserRole.admin],
        minDaysSinceAccountCreation: 30,
        maxTimesToShow: 5,
        minDaysSinceLastShown: 1,
        placement: placement,
      );

      expect(
        instance.props,
        [
          EngagementTemplateType.upgradeToPremium,
          [UserRole.premiumUser, UserRole.admin],
          30,
          5,
          1,
          placement,
        ],
      );
    });

    group('fromJson', () {
      test('returns correct EngagementRule object', () {
        final json = <String, dynamic>{
          'template_type': 'rate_app',
          'user_roles': ['standard_user', 'guest_user'],
          'min_days_since_account_creation': 7,
          'max_times_to_show': 3,
          'min_days_since_last_shown': 1,
          'placement': {
            'after_primary_item_index': 2,
          },
        };

        final instance = EngagementRule.fromJson(json);

        expect(instance.templateType, EngagementTemplateType.rateApp);
        expect(
          instance.userRoles,
          [UserRole.standardUser, UserRole.guestUser],
        );
        expect(instance.minDaysSinceAccountCreation, 7);
        expect(instance.maxTimesToShow, 3);
        expect(instance.minDaysSinceLastShown, 1);
        expect(instance.placement, isA<PlacementCriteria>());
        expect(instance.placement!.afterPrimaryItemIndex, 2);
      });

      test('handles null optional fields', () {
        final json = <String, dynamic>{
          'template_type': 'link_account',
          'user_roles': ['guest_user'],
        };

        final instance = EngagementRule.fromJson(json);

        expect(instance.templateType, EngagementTemplateType.linkAccount);
        expect(instance.userRoles, [UserRole.guestUser]);
        expect(instance.minDaysSinceAccountCreation, isNull);
        expect(instance.maxTimesToShow, isNull);
        expect(instance.minDaysSinceLastShown, isNull);
        expect(instance.placement, isNull);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        const placement = PlacementCriteria(relativePosition: 'end');
        final instance = createSubject(
          templateType: EngagementTemplateType.completeProfile,
          userRoles: [UserRole.admin],
          minDaysSinceAccountCreation: 90,
          maxTimesToShow: 1,
          minDaysSinceLastShown: 30,
          placement: placement,
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'template_type': 'complete_profile',
          'user_roles': ['admin'],
          'min_days_since_account_creation': 90,
          'max_times_to_show': 1,
          'min_days_since_last_shown': 30,
          'placement': {
            'relative_position': 'end',
          },
        });
      });

      test('handles null optional fields', () {
        final instance = createSubject(
          templateType: EngagementTemplateType.exploreNewFeature,
          userRoles: [UserRole.standardUser],
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'template_type': 'explore_new_feature',
          'user_roles': ['standard_user'],
        });
      });
    });
  });

  group('SuggestionRule', () {
    SuggestionRule createSubject({
      SuggestionTemplateType templateType =
          SuggestionTemplateType.categoriesToFollow,
      List<UserRole> userRoles = const [UserRole.standardUser],
      PlacementCriteria? placement,
    }) {
      return SuggestionRule(
        templateType: templateType,
        userRoles: userRoles,
        placement: placement,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.templateType, SuggestionTemplateType.categoriesToFollow);
      expect(instance.userRoles, [UserRole.standardUser]);
    });

    test('supports value equality', () {
      final instanceA = createSubject(
        userRoles: [UserRole.standardUser],
      );
      final instanceB = createSubject(
        userRoles: [UserRole.standardUser],
      );
      final instanceC = createSubject(
        templateType: SuggestionTemplateType.sourcesToFollow,
      );

      expect(instanceA, equals(instanceB));
      expect(instanceA, isNot(equals(instanceC)));
    });

    test('props are correct', () {
      const placement = PlacementCriteria(minPrimaryItemsRequired: 5);
      final instance = createSubject(
        templateType: SuggestionTemplateType.countriesToFollow,
        userRoles: [UserRole.guestUser, UserRole.premiumUser],
        placement: placement,
      );

      expect(
        instance.props,
        [
          SuggestionTemplateType.countriesToFollow,
          [UserRole.guestUser, UserRole.premiumUser],
          placement,
        ],
      );
    });

    group('fromJson', () {
      test('returns correct SuggestionRule object', () {
        final json = <String, dynamic>{
          'template_type': 'sources_to_follow',
          'user_roles': ['standard_user'],
          'placement': {
            'relative_position': 'start',
          },
        };

        final instance = SuggestionRule.fromJson(json);

        expect(instance.templateType, SuggestionTemplateType.sourcesToFollow);
        expect(instance.userRoles, [UserRole.standardUser]);
        expect(instance.placement, isA<PlacementCriteria>());
        expect(instance.placement!.relativePosition, 'start');
      });

      test('handles null optional fields', () {
        final json = <String, dynamic>{
          'template_type': 'categories_to_follow',
          'user_roles': ['guest_user'],
        };

        final instance = SuggestionRule.fromJson(json);

        expect(
          instance.templateType,
          SuggestionTemplateType.categoriesToFollow,
        );
        expect(instance.userRoles, [UserRole.guestUser]);
        expect(instance.placement, isNull);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        const placement = PlacementCriteria(afterPrimaryItemIndex: 1);
        final instance = createSubject(
          templateType: SuggestionTemplateType.countriesToFollow,
          userRoles: [UserRole.premiumUser],
          placement: placement,
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'template_type': 'countries_to_follow',
          'user_roles': ['premium_user'],
          'placement': {
            'after_primary_item_index': 1,
          },
        });
      });

      test('handles null optional fields', () {
        final instance = createSubject(
          templateType: SuggestionTemplateType.sourcesToFollow,
          userRoles: [UserRole.standardUser],
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'template_type': 'sources_to_follow',
          'user_roles': ['standard_user'],
        });
      });
    });
  });
}
