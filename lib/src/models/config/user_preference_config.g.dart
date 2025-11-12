// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferenceConfig _$UserPreferenceConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserPreferenceConfig', json, ($checkedConvert) {
  final val = UserPreferenceConfig(
    followedItemsLimit: $checkedConvert(
      'followedItemsLimit',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AppUserRoleEnumMap, k), (e as num).toInt()),
      ),
    ),
    savedHeadlinesLimit: $checkedConvert(
      'savedHeadlinesLimit',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AppUserRoleEnumMap, k), (e as num).toInt()),
      ),
    ),
    savedHeadlineFiltersLimit: $checkedConvert(
      'savedHeadlineFiltersLimit',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          SavedFilterLimits.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
    savedSourceFiltersLimit: $checkedConvert(
      'savedSourceFiltersLimit',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          SavedFilterLimits.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$UserPreferenceConfigToJson(
  UserPreferenceConfig instance,
) => <String, dynamic>{
  'followedItemsLimit': instance.followedItemsLimit.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e),
  ),
  'savedHeadlinesLimit': instance.savedHeadlinesLimit.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e),
  ),
  'savedHeadlineFiltersLimit': instance.savedHeadlineFiltersLimit.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
  ),
  'savedSourceFiltersLimit': instance.savedSourceFiltersLimit.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
  ),
};

const _$AppUserRoleEnumMap = {
  AppUserRole.premiumUser: 'premiumUser',
  AppUserRole.standardUser: 'standardUser',
  AppUserRole.guestUser: 'guestUser',
};
