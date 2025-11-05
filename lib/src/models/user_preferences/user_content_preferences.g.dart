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
    followedTopics: $checkedConvert(
      'followedTopics',
      (v) => (v as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    savedHeadlines: $checkedConvert(
      'savedHeadlines',
      (v) => (v as List<dynamic>)
          .map((e) => Headline.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    savedFilters: $checkedConvert(
      'savedFilters',
      (v) => (v as List<dynamic>)
          .map((e) => SavedFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    notificationSubscriptions: $checkedConvert(
      'notificationSubscriptions',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$PushNotificationSubscriptionDeliveryTypeEnumMap, k),
          PushNotificationSubscription.fromJson(e as Map<String, dynamic>),
        ),
      ),
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
  'followedTopics': instance.followedTopics.map((e) => e.toJson()).toList(),
  'savedHeadlines': instance.savedHeadlines.map((e) => e.toJson()).toList(),
  'savedFilters': instance.savedFilters.map((e) => e.toJson()).toList(),
  'notificationSubscriptions': instance.notificationSubscriptions.map(
    (k, e) => MapEntry(
      _$PushNotificationSubscriptionDeliveryTypeEnumMap[k]!,
      e.toJson(),
    ),
  ),
};

const _$PushNotificationSubscriptionDeliveryTypeEnumMap = {
  PushNotificationSubscriptionDeliveryType.breakingOnly: 'breakingOnly',
  PushNotificationSubscriptionDeliveryType.dailyDigest: 'dailyDigest',
  PushNotificationSubscriptionDeliveryType.weeklyRoundup: 'weeklyRoundup',
};
