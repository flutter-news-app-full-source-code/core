// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_rules.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacementCriteria _$PlacementCriteriaFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PlacementCriteria',
      json,
      ($checkedConvert) {
        final val = PlacementCriteria(
          afterPrimaryItemIndex: $checkedConvert(
              'after_primary_item_index', (v) => (v as num?)?.toInt()),
          relativePosition:
              $checkedConvert('relative_position', (v) => v as String?),
          minPrimaryItemsRequired: $checkedConvert(
              'min_primary_items_required', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'afterPrimaryItemIndex': 'after_primary_item_index',
        'relativePosition': 'relative_position',
        'minPrimaryItemsRequired': 'min_primary_items_required'
      },
    );

Map<String, dynamic> _$PlacementCriteriaToJson(PlacementCriteria instance) =>
    <String, dynamic>{
      if (instance.afterPrimaryItemIndex case final value?)
        'after_primary_item_index': value,
      if (instance.relativePosition case final value?)
        'relative_position': value,
      if (instance.minPrimaryItemsRequired case final value?)
        'min_primary_items_required': value,
    };

EngagementRule _$EngagementRuleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'EngagementRule',
      json,
      ($checkedConvert) {
        final val = EngagementRule(
          templateType: $checkedConvert('template_type',
              (v) => $enumDecode(_$EngagementTemplateTypeEnumMap, v)),
          userRoles: $checkedConvert(
              'user_roles',
              (v) => (v as List<dynamic>)
                  .map((e) => $enumDecode(_$UserRoleEnumMap, e))
                  .toList()),
          minDaysSinceAccountCreation: $checkedConvert(
              'min_days_since_account_creation', (v) => (v as num?)?.toInt()),
          maxTimesToShow:
              $checkedConvert('max_times_to_show', (v) => (v as num?)?.toInt()),
          minDaysSinceLastShown: $checkedConvert(
              'min_days_since_last_shown', (v) => (v as num?)?.toInt()),
          placement: $checkedConvert(
              'placement',
              (v) => v == null
                  ? null
                  : PlacementCriteria.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'templateType': 'template_type',
        'userRoles': 'user_roles',
        'minDaysSinceAccountCreation': 'min_days_since_account_creation',
        'maxTimesToShow': 'max_times_to_show',
        'minDaysSinceLastShown': 'min_days_since_last_shown'
      },
    );

Map<String, dynamic> _$EngagementRuleToJson(EngagementRule instance) =>
    <String, dynamic>{
      'template_type': _$EngagementTemplateTypeEnumMap[instance.templateType]!,
      'user_roles':
          instance.userRoles.map((e) => _$UserRoleEnumMap[e]!).toList(),
      if (instance.minDaysSinceAccountCreation case final value?)
        'min_days_since_account_creation': value,
      if (instance.maxTimesToShow case final value?) 'max_times_to_show': value,
      if (instance.minDaysSinceLastShown case final value?)
        'min_days_since_last_shown': value,
      if (instance.placement?.toJson() case final value?) 'placement': value,
    };

const _$EngagementTemplateTypeEnumMap = {
  EngagementTemplateType.rateApp: 'rate_app',
  EngagementTemplateType.linkAccount: 'link_account',
  EngagementTemplateType.upgradeToPremium: 'upgrade_to_premium',
  EngagementTemplateType.completeProfile: 'complete_profile',
  EngagementTemplateType.exploreNewFeature: 'explore_new_feature',
};

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.premiumUser: 'premium_user',
  UserRole.standardUser: 'standard_user',
  UserRole.guestUser: 'guest_user',
};

SuggestionRule _$SuggestionRuleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SuggestionRule',
      json,
      ($checkedConvert) {
        final val = SuggestionRule(
          templateType: $checkedConvert('template_type',
              (v) => $enumDecode(_$SuggestionTemplateTypeEnumMap, v)),
          userRoles: $checkedConvert(
              'user_roles',
              (v) => (v as List<dynamic>)
                  .map((e) => $enumDecode(_$UserRoleEnumMap, e))
                  .toList()),
          placement: $checkedConvert(
              'placement',
              (v) => v == null
                  ? null
                  : PlacementCriteria.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'templateType': 'template_type',
        'userRoles': 'user_roles'
      },
    );

Map<String, dynamic> _$SuggestionRuleToJson(SuggestionRule instance) =>
    <String, dynamic>{
      'template_type': _$SuggestionTemplateTypeEnumMap[instance.templateType]!,
      'user_roles':
          instance.userRoles.map((e) => _$UserRoleEnumMap[e]!).toList(),
      if (instance.placement?.toJson() case final value?) 'placement': value,
    };

const _$SuggestionTemplateTypeEnumMap = {
  SuggestionTemplateType.categoriesToFollow: 'categories_to_follow',
  SuggestionTemplateType.sourcesToFollow: 'sources_to_follow',
  SuggestionTemplateType.countriesToFollow: 'countries_to_follow',
};
