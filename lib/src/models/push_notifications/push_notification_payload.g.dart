// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushNotificationPayload _$PushNotificationPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PushNotificationPayload', json, ($checkedConvert) {
  final val = PushNotificationPayload(
    title: $checkedConvert('title', (v) => v as String),
    data: $checkedConvert('data', (v) => v as Map<String, dynamic>),
    imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$PushNotificationPayloadToJson(
  PushNotificationPayload instance,
) => <String, dynamic>{
  'title': instance.title,
  'imageUrl': instance.imageUrl,
  'data': instance.data,
};
