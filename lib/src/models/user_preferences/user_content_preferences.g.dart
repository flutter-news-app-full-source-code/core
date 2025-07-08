// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_content_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserContentPreferences _$UserContentPreferencesFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserContentPreferences', json, ($checkedConvert) {
  final val = UserContentPreferences(
    id: $checkedConvert('id', (v) => v as String),
    followedCountries: $checkedConvert(
      'followedCountries',
      (v) => (v as List<dynamic>)
          .map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    followedSources: $checkedConvert(
      'followedSources',
      (v) => (v as List<dynamic>)
          .map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    followedCategories: $checkedConvert(
      'followedCategories',
      (v) => (v as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    savedHeadlines: $checkedConvert(
      'savedHeadlines',
      (v) => (v as List<dynamic>)
          .map((e) => Headline.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UserContentPreferencesToJson(
  UserContentPreferences instance,
) => <String, dynamic>{
  'id': instance.id,
  'followedCountries': instance.followedCountries
      .map((e) => e.toJson())
      .toList(),
  'followedSources': instance.followedSources.map((e) => e.toJson()).toList(),
  'followedCategories': instance.followedCategories
      .map((e) => e.toJson())
      .toList(),
  'savedHeadlines': instance.savedHeadlines.map((e) => e.toJson()).toList(),
};
