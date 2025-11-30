// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Engagement _$EngagementFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Engagement', json, ($checkedConvert) {
      final val = Engagement(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        entityId: $checkedConvert('entityId', (v) => v as String),
        entityType: $checkedConvert(
          'entityType',
          (v) => $enumDecode(_$EngageableTypeEnumMap, v),
        ),
        reaction: $checkedConvert(
          'reaction',
          (v) => Reaction.fromJson(v as Map<String, dynamic>),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        comment: $checkedConvert(
          'comment',
          (v) => v == null ? null : Comment.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$EngagementToJson(Engagement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'entityId': instance.entityId,
      'entityType': _$EngageableTypeEnumMap[instance.entityType]!,
      'reaction': instance.reaction.toJson(),
      'comment': instance.comment?.toJson(),
      'createdAt': dateTimeToJson(instance.createdAt),
      'updatedAt': dateTimeToJson(instance.updatedAt),
    };

const _$EngageableTypeEnumMap = {EngageableType.headline: 'headline'};
