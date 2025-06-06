// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Permission _$PermissionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Permission', json, ($checkedConvert) {
      final val = Permission(name: $checkedConvert('name', (v) => v as String));
      return val;
    });

Map<String, dynamic> _$PermissionToJson(Permission instance) =>
    <String, dynamic>{'name': instance.name};
