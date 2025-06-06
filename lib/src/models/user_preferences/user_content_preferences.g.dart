// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_content_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserContentPreferences _$UserContentPreferencesFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UserContentPreferences',
  json,
  ($checkedConvert) {
    final val = UserContentPreferences(
      id: $checkedConvert('id', (v) => v as String),
      followedCountries: $checkedConvert(
        'followed_countries',
        (v) => (v as List<dynamic>?)
            ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      followedSources: $checkedConvert(
        'followed_sources',
        (v) => (v as List<dynamic>?)
            ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      followedCategories: $checkedConvert(
        'followed_categories',
        (v) => (v as List<dynamic>?)
            ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      savedHeadlines: $checkedConvert(
        'saved_headlines',
        (v) => (v as List<dynamic>?)
            ?.map((e) => Headline.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'followedCountries': 'followed_countries',
    'followedSources': 'followed_sources',
    'followedCategories': 'followed_categories',
    'savedHeadlines': 'saved_headlines',
  },
);

Map<String, dynamic> _$UserContentPreferencesToJson(
  UserContentPreferences instance,
) => <String, dynamic>{
  'id': instance.id,
  'followed_countries': instance.followedCountries
      .map((e) => e.toJson())
      .toList(),
  'followed_sources': instance.followedSources.map((e) => e.toJson()).toList(),
  'followed_categories': instance.followedCategories
      .map((e) => e.toJson())
      .toList(),
  'saved_headlines': instance.savedHeadlines.map((e) => e.toJson()).toList(),
};
