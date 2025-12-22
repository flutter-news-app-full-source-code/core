// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate('User', json, (
  $checkedConvert,
) {
  final val = User(
    id: $checkedConvert('id', (v) => v as String),
    email: $checkedConvert('email', (v) => v as String),
    role: $checkedConvert('role', (v) => $enumDecode(_$UserRoleEnumMap, v)),
    tier: $checkedConvert('tier', (v) => $enumDecode(_$AccessTierEnumMap, v)),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => const DateTimeConverter().fromJson(v as String),
    ),
    name: $checkedConvert('name', (v) => v as String?),
    photoUrl: $checkedConvert('photoUrl', (v) => v as String?),
    isAnonymous: $checkedConvert('isAnonymous', (v) => v as bool? ?? false),
  );
  return val;
});

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'name': instance.name,
  'photoUrl': instance.photoUrl,
  'role': _$UserRoleEnumMap[instance.role]!,
  'tier': _$AccessTierEnumMap[instance.tier]!,
  'createdAt': const DateTimeConverter().toJson(instance.createdAt),
  'isAnonymous': instance.isAnonymous,
};

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.publisher: 'publisher',
  UserRole.user: 'user',
};

const _$AccessTierEnumMap = {
  AccessTier.guest: 'guest',
  AccessTier.standard: 'standard',
  AccessTier.premium: 'premium',
};
