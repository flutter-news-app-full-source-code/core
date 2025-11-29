// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_limits_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLimitsConfig _$UserLimitsConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserLimitsConfig', json, ($checkedConvert) {
  final val = UserLimitsConfig(
    followedItems: $checkedConvert(
      'followedItems',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AppUserRoleEnumMap, k), (e as num).toInt()),
      ),
    ),
    savedHeadlines: $checkedConvert(
      'savedHeadlines',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AppUserRoleEnumMap, k), (e as num).toInt()),
      ),
    ),
    savedHeadlineFilters: $checkedConvert(
      'savedHeadlineFilters',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          SavedFilterLimits.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
    savedSourceFilters: $checkedConvert(
      'savedSourceFilters',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          SavedFilterLimits.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
    commentsPerDay: $checkedConvert(
      'commentsPerDay',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AppUserRoleEnumMap, k), (e as num).toInt()),
      ),
    ),
    reportsPerDay: $checkedConvert(
      'reportsPerDay',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AppUserRoleEnumMap, k), (e as num).toInt()),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$UserLimitsConfigToJson(UserLimitsConfig instance) =>
    <String, dynamic>{
      'followedItems': instance.followedItems.map(
        (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e),
      ),
      'savedHeadlines': instance.savedHeadlines.map(
        (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e),
      ),
      'savedHeadlineFilters': instance.savedHeadlineFilters.map(
        (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
      ),
      'savedSourceFilters': instance.savedSourceFilters.map(
        (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
      ),
      'commentsPerDay': instance.commentsPerDay.map(
        (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e),
      ),
      'reportsPerDay': instance.reportsPerDay.map(
        (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e),
      ),
    };

const _$AppUserRoleEnumMap = {
  AppUserRole.premiumUser: 'premiumUser',
  AppUserRole.standardUser: 'standardUser',
  AppUserRole.guestUser: 'guestUser',
};
