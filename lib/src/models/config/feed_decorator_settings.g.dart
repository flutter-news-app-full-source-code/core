// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_decorator_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$FeedDecoratorSettingsToJson(
  FeedDecoratorSettings instance,
) => <String, dynamic>{
  'stringify': instance.stringify,
  'hashCode': instance.hashCode,
  'category': _$FeedDecoratorCategoryEnumMap[instance.category]!,
  'enabled': instance.enabled,
  'defaultDaysBetweenViews': instance.defaultDaysBetweenViews,
  'roleOverrides': instance.roleOverrides.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
  ),
  'props': instance.props,
};

const _$FeedDecoratorCategoryEnumMap = {
  FeedDecoratorCategory.callToAction: 'callToAction',
  FeedDecoratorCategory.contentCollection: 'contentCollection',
};

const _$AppUserRoleEnumMap = {
  AppUserRole.premiumUser: 'premiumUser',
  AppUserRole.standardUser: 'standardUser',
  AppUserRole.guestUser: 'guestUser',
};

CallToActionSettings _$CallToActionSettingsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CallToActionSettings', json, ($checkedConvert) {
  final val = CallToActionSettings(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    defaultDaysBetweenViews: $checkedConvert(
      'defaultDaysBetweenViews',
      (v) => (v as num).toInt(),
    ),
    roleOverrides: $checkedConvert(
      'roleOverrides',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          RoleSpecificSettings.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$CallToActionSettingsToJson(
  CallToActionSettings instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'defaultDaysBetweenViews': instance.defaultDaysBetweenViews,
  'roleOverrides': instance.roleOverrides.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
  ),
};

ContentCollectionSettings _$ContentCollectionSettingsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ContentCollectionSettings', json, ($checkedConvert) {
  final val = ContentCollectionSettings(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    defaultDaysBetweenViews: $checkedConvert(
      'defaultDaysBetweenViews',
      (v) => (v as num).toInt(),
    ),
    roleOverrides: $checkedConvert(
      'roleOverrides',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          RoleSpecificSettings.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
    itemsToDisplay: $checkedConvert(
      'itemsToDisplay',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ContentCollectionSettingsToJson(
  ContentCollectionSettings instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'defaultDaysBetweenViews': instance.defaultDaysBetweenViews,
  'roleOverrides': instance.roleOverrides.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
  ),
  'itemsToDisplay': instance.itemsToDisplay,
};
