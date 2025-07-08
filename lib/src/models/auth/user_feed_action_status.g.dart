// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_feed_action_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFeedActionStatus _$UserFeedActionStatusFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserFeedActionStatus', json, ($checkedConvert) {
  final val = UserFeedActionStatus(
    isCompleted: $checkedConvert('isCompleted', (v) => v as bool),
    lastShownAt: $checkedConvert(
      'lastShownAt',
      (v) => _dateTimeFromJson(v as String?),
    ),
  );
  return val;
});

Map<String, dynamic> _$UserFeedActionStatusToJson(
  UserFeedActionStatus instance,
) => <String, dynamic>{
  'lastShownAt': _dateTimeToJson(instance.lastShownAt),
  'isCompleted': instance.isCompleted,
};
