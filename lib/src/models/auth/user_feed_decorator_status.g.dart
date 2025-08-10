// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_feed_decorator_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFeedDecoratorStatus _$UserFeedDecoratorStatusFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserFeedDecoratorStatus', json, ($checkedConvert) {
  final val = UserFeedDecoratorStatus(
    isCompleted: $checkedConvert('isCompleted', (v) => v as bool),
    lastShownAt: $checkedConvert(
      'lastShownAt',
      (v) => _dateTimeFromJson(v as String?),
    ),
  );
  return val;
});

Map<String, dynamic> _$UserFeedDecoratorStatusToJson(
  UserFeedDecoratorStatus instance,
) => <String, dynamic>{
  'lastShownAt': _dateTimeToJson(instance.lastShownAt),
  'isCompleted': instance.isCompleted,
};
