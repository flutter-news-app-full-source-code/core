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
      email: $checkedConvert('email', (v) => v as String),
      createdAt: $checkedConvert(
        'createdAt',
        (v) => _dateTimeFromJson(v as String),
      ),
      lastAccountActionShownAt: $checkedConvert(
        'lastEngagementShownAt',
        (v) => _dateTimeFromJson(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'lastAccountActionShownAt': 'lastEngagementShownAt'},
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'roles': instance.roles,
  'createdAt': _dateTimeToJson(instance.createdAt),
  'lastEngagementShownAt': _dateTimeToJson(instance.lastAccountActionShownAt),
};
