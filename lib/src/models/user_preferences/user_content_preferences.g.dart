// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_content_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserContentPreferences _$UserContentPreferencesFromJson(
  Map<String, dynamic> json,
) =>
    UserContentPreferences(
      id: json['id'] as String,
      followedCountries: (json['followedCountries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      followedSources: (json['followedSources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
      followedCategories: (json['followedCategories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      savedHeadlines: (json['savedHeadlines'] as List<dynamic>?)
          ?.map((e) => Headline.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserContentPreferencesToJson(
  UserContentPreferences instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'followedCountries':
          instance.followedCountries.map((e) => e.toJson()).toList(),
      'followedSources':
          instance.followedSources.map((e) => e.toJson()).toList(),
      'followedCategories':
          instance.followedCategories.map((e) => e.toJson()).toList(),
      'savedHeadlines': instance.savedHeadlines.map((e) => e.toJson()).toList(),
    };
