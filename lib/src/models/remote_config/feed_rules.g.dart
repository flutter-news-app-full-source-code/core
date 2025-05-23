// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_rules.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacementCriteria _$PlacementCriteriaFromJson(Map<String, dynamic> json) =>
    PlacementCriteria(
      afterPrimaryItemIndex: (json['afterPrimaryItemIndex'] as num?)?.toInt(),
      relativePosition: json['relativePosition'] as String?,
      minPrimaryItemsRequired:
          (json['minPrimaryItemsRequired'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PlacementCriteriaToJson(PlacementCriteria instance) =>
    <String, dynamic>{
      if (instance.afterPrimaryItemIndex case final value?)
        'afterPrimaryItemIndex': value,
      if (instance.relativePosition case final value?)
        'relativePosition': value,
      if (instance.minPrimaryItemsRequired case final value?)
        'minPrimaryItemsRequired': value,
    };

EngagementRule _$EngagementRuleFromJson(Map<String, dynamic> json) =>
    EngagementRule(
      templateType:
          $enumDecode(_$EngagementTemplateTypeEnumMap, json['templateType']),
      userRoles: (json['userRoles'] as List<dynamic>)
          .map((e) => $enumDecode(_$UserRoleEnumMap, e))
          .toList(),
      minDaysSinceAccountCreation:
          (json['minDaysSinceAccountCreation'] as num?)?.toInt(),
      maxTimesToShow: (json['maxTimesToShow'] as num?)?.toInt(),
      minDaysSinceLastShown: (json['minDaysSinceLastShown'] as num?)?.toInt(),
      placement: json['placement'] == null
          ? null
          : PlacementCriteria.fromJson(
              json['placement'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EngagementRuleToJson(EngagementRule instance) =>
    <String, dynamic>{
      'templateType': _$EngagementTemplateTypeEnumMap[instance.templateType]!,
      'userRoles':
          instance.userRoles.map((e) => _$UserRoleEnumMap[e]!).toList(),
      if (instance.minDaysSinceAccountCreation case final value?)
        'minDaysSinceAccountCreation': value,
      if (instance.maxTimesToShow case final value?) 'maxTimesToShow': value,
      if (instance.minDaysSinceLastShown case final value?)
        'minDaysSinceLastShown': value,
      if (instance.placement?.toJson() case final value?) 'placement': value,
    };

const _$EngagementTemplateTypeEnumMap = {
  EngagementTemplateType.rateApp: 'rate-app',
  EngagementTemplateType.linkAccount: 'link-account',
  EngagementTemplateType.upgradeToPremium: 'upgrade-to-premium',
  EngagementTemplateType.completeProfile: 'complete-profile',
  EngagementTemplateType.exploreNewFeature: 'explore-new-feature',
};

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.premiumUser: 'premium_user',
  UserRole.standardUser: 'standard_user',
  UserRole.guestUser: 'guest_user',
};

SuggestionRule _$SuggestionRuleFromJson(Map<String, dynamic> json) =>
    SuggestionRule(
      templateType:
          $enumDecode(_$SuggestionTemplateTypeEnumMap, json['templateType']),
      userRoles: (json['userRoles'] as List<dynamic>)
          .map((e) => $enumDecode(_$UserRoleEnumMap, e))
          .toList(),
      placement: json['placement'] == null
          ? null
          : PlacementCriteria.fromJson(
              json['placement'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuggestionRuleToJson(SuggestionRule instance) =>
    <String, dynamic>{
      'templateType': _$SuggestionTemplateTypeEnumMap[instance.templateType]!,
      'userRoles':
          instance.userRoles.map((e) => _$UserRoleEnumMap[e]!).toList(),
      if (instance.placement?.toJson() case final value?) 'placement': value,
    };

const _$SuggestionTemplateTypeEnumMap = {
  SuggestionTemplateType.categoriesToFollow: 'categories-to-follow',
  SuggestionTemplateType.sourcesToFollow: 'sources-to-follow',
  SuggestionTemplateType.countriesToFollow: 'countries-to-follow',
};
