// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterestConfig _$InterestConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InterestConfig', json, ($checkedConvert) {
      final val = InterestConfig(
        limits: $checkedConvert(
          'limits',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$AppUserRoleEnumMap, k),
              InterestLimits.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$InterestConfigToJson(InterestConfig instance) =>
    <String, dynamic>{
      'limits': instance.limits.map(
        (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
      ),
    };

const _$AppUserRoleEnumMap = {
  AppUserRole.premiumUser: 'premiumUser',
  AppUserRole.standardUser: 'standardUser',
  AppUserRole.guestUser: 'guestUser',
};
