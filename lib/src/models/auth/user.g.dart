// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      email: json['email'] as String?,
      createdAt: _dateTimeFromJson(json['createdAt'] as String?),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role]!,
      'createdAt': _dateTimeToJson(instance.createdAt),
    };

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.premiumUser: 'premium_user',
  UserRole.standardUser: 'standard_user',
  UserRole.guestUser: 'guest_user',
};
