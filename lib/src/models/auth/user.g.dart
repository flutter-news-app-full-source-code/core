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
          role:
              $checkedConvert('role', (v) => $enumDecode(_$UserRoleEnumMap, v)),
          email: $checkedConvert('email', (v) => v as String?),
          createdAt: $checkedConvert(
              'created_at', (v) => _dateTimeFromJson(v as String?)),
          lastEngagementShownAt: $checkedConvert('last_engagement_shown_at',
              (v) => _dateTimeFromJson(v as String?)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'lastEngagementShownAt': 'last_engagement_shown_at'
      },
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      if (instance.email case final value?) 'email': value,
      'role': _$UserRoleEnumMap[instance.role]!,
      if (_dateTimeToJson(instance.createdAt) case final value?)
        'created_at': value,
      if (_dateTimeToJson(instance.lastEngagementShownAt) case final value?)
        'last_engagement_shown_at': value,
    };

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.premiumUser: 'premium_user',
  UserRole.standardUser: 'standard_user',
  UserRole.guestUser: 'guest_user',
};
