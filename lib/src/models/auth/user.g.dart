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
      appRole: $checkedConvert(
        'appRole',
        (v) => $enumDecode(_$AppUserRoleEnumMap, v),
      ),
      dashboardRole: $checkedConvert(
        'dashboardRole',
        (v) => $enumDecode(_$DashboardUserRoleEnumMap, v),
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
  'appRole': _$AppUserRoleEnumMap[instance.appRole]!,
  'dashboardRole': _$DashboardUserRoleEnumMap[instance.dashboardRole]!,
  'createdAt': _dateTimeToJson(instance.createdAt),
  'lastEngagementShownAt': _dateTimeToJson(instance.lastAccountActionShownAt),
};

const _$AppUserRoleEnumMap = {
  AppUserRole.premiumUser: 'premiumUser',
  AppUserRole.standardUser: 'standardUser',
  AppUserRole.guestUser: 'guestUser',
};

const _$DashboardUserRoleEnumMap = {
  DashboardUserRole.admin: 'admin',
  DashboardUserRole.publisher: 'publisher',
  DashboardUserRole.none: 'none',
};
