// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_decorator_role_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedDecoratorRoleConfig _$FeedDecoratorRoleConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FeedDecoratorRoleConfig', json, ($checkedConvert) {
  final val = FeedDecoratorRoleConfig(
    daysBetweenViews: $checkedConvert(
      'daysBetweenViews',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$FeedDecoratorRoleConfigToJson(
  FeedDecoratorRoleConfig instance,
) => <String, dynamic>{'daysBetweenViews': instance.daysBetweenViews};
