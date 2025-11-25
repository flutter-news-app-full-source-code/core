// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_ad_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NavigationAdConfiguration _$NavigationAdConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('NavigationAdConfiguration', json, ($checkedConvert) {
  final val = NavigationAdConfiguration(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    visibleTo: $checkedConvert(
      'visibleTo',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          NavigationAdFrequencyConfig.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
    adType: $checkedConvert(
      'adType',
      (v) => $enumDecodeNullable(_$AdTypeEnumMap, v) ?? AdType.interstitial,
    ),
  );
  return val;
});

Map<String, dynamic> _$NavigationAdConfigurationToJson(
  NavigationAdConfiguration instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'adType': _$AdTypeEnumMap[instance.adType]!,
  'visibleTo': instance.visibleTo.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
  ),
};

const _$AppUserRoleEnumMap = {
  AppUserRole.premiumUser: 'premiumUser',
  AppUserRole.standardUser: 'standardUser',
  AppUserRole.guestUser: 'guestUser',
};

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};
