// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserContext _$UserContextFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserContext', json, ($checkedConvert) {
      final val = UserContext(
        userId: $checkedConvert('userId', (v) => v as String),
        feedDecoratorStatus: $checkedConvert(
          'feedDecoratorStatus',
          (v) => _feedDecoratorStatusFromJson(v as Map<String, dynamic>),
        ),
        hasCompletedOnboarding: $checkedConvert(
          'hasCompletedOnboarding',
          (v) => v as bool? ?? false,
        ),
        lastSeenAppVersion: $checkedConvert(
          'lastSeenAppVersion',
          (v) => v as String?,
        ),
        dismissedHints: $checkedConvert(
          'dismissedHints',
          (v) =>
              (v as List<dynamic>?)
                  ?.map((e) => $enumDecode(_$DismissibleHintTypeEnumMap, e))
                  .toSet() ??
              const {},
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserContextToJson(UserContext instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'feedDecoratorStatus': _feedDecoratorStatusToJson(
        instance.feedDecoratorStatus,
      ),
      'hasCompletedOnboarding': instance.hasCompletedOnboarding,
      'lastSeenAppVersion': instance.lastSeenAppVersion,
      'dismissedHints': instance.dismissedHints
          .map((e) => _$DismissibleHintTypeEnumMap[e]!)
          .toList(),
    };

const _$DismissibleHintTypeEnumMap = {
  DismissibleHintType.feedFilterTooltip: 'feedFilterTooltip',
  DismissibleHintType.saveArticleTooltip: 'saveArticleTooltip',
};
