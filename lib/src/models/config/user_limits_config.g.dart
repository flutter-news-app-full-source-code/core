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
            MapEntry($enumDecode(_$AccessTierEnumMap, k), (e as num).toInt()),
      ),
    ),
    savedHeadlines: $checkedConvert(
      'savedHeadlines',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AccessTierEnumMap, k), (e as num).toInt()),
      ),
    ),
    savedHeadlineFilters: $checkedConvert(
      'savedHeadlineFilters',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AccessTierEnumMap, k),
          SavedFilterLimits.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
    savedSourceFilters: $checkedConvert(
      'savedSourceFilters',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AccessTierEnumMap, k),
          SavedFilterLimits.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
    reactionsPerDay: $checkedConvert(
      'reactionsPerDay',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AccessTierEnumMap, k), (e as num).toInt()),
      ),
    ),
    commentsPerDay: $checkedConvert(
      'commentsPerDay',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AccessTierEnumMap, k), (e as num).toInt()),
      ),
    ),
    reportsPerDay: $checkedConvert(
      'reportsPerDay',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$AccessTierEnumMap, k), (e as num).toInt()),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$UserLimitsConfigToJson(UserLimitsConfig instance) =>
    <String, dynamic>{
      'followedItems': instance.followedItems.map(
        (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e),
      ),
      'savedHeadlines': instance.savedHeadlines.map(
        (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e),
      ),
      'savedHeadlineFilters': instance.savedHeadlineFilters.map(
        (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e.toJson()),
      ),
      'savedSourceFilters': instance.savedSourceFilters.map(
        (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e.toJson()),
      ),
      'reactionsPerDay': instance.reactionsPerDay.map(
        (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e),
      ),
      'commentsPerDay': instance.commentsPerDay.map(
        (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e),
      ),
      'reportsPerDay': instance.reportsPerDay.map(
        (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e),
      ),
    };

const _$AccessTierEnumMap = {
  AccessTier.guest: 'guest',
  AccessTier.standard: 'standard',
};
