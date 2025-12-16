// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_app_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InAppNotification _$InAppNotificationFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InAppNotification', json, ($checkedConvert) {
      final val = InAppNotification(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        payload: $checkedConvert(
          'payload',
          (v) => PushNotificationPayload.fromJson(v as Map<String, dynamic>),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => DateTime.parse(v as String),
        ),
        readAt: $checkedConvert(
          'readAt',
          (v) => const NullableDateTimeConverter().fromJson(v as String?),
        ),
      );
      return val;
    });

Map<String, dynamic> _$InAppNotificationToJson(InAppNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'payload': instance.payload.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'readAt': const NullableDateTimeConverter().toJson(instance.readAt),
    };
