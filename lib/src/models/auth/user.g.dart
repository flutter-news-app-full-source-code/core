// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
  'User',
  json,
  ($checkedConvert) {
    final val = User(
      id: $checkedConvert('id', (v) => v as String),
      roles: $checkedConvert(
        'roles',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
      email: $checkedConvert('email', (v) => v as String?),
      createdAt: $checkedConvert(
        'created_at',
        (v) => _dateTimeFromJson(v as String?),
      ),
      lastAccountActionShownAt: $checkedConvert(
        'last_engagement_shown_at',
        (v) => _dateTimeFromJson(v as String?),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'createdAt': 'created_at',
    'lastAccountActionShownAt': 'last_engagement_shown_at',
  },
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  if (instance.email case final value?) 'email': value,
  'roles': instance.roles,
  if (_dateTimeToJson(instance.createdAt) case final value?)
    'created_at': value,
  if (_dateTimeToJson(instance.lastAccountActionShownAt) case final value?)
    'last_engagement_shown_at': value,
};
