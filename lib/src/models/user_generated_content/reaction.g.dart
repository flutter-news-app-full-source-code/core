// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reaction _$ReactionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Reaction', json, ($checkedConvert) {
      final val = Reaction(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        entityId: $checkedConvert('entityId', (v) => v as String),
        entityType: $checkedConvert(
          'entityType',
          (v) => $enumDecode(_$EngageableTypeEnumMap, v),
        ),
        reactionType: $checkedConvert(
          'reactionType',
          (v) => $enumDecode(_$ReactionTypeEnumMap, v),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => dateTimeFromJson(v as String?),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReactionToJson(Reaction instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'entityId': instance.entityId,
  'entityType': _$EngageableTypeEnumMap[instance.entityType]!,
  'reactionType': _$ReactionTypeEnumMap[instance.reactionType]!,
  'createdAt': dateTimeToJson(instance.createdAt),
};

const _$EngageableTypeEnumMap = {EngageableType.headline: 'headline'};

const _$ReactionTypeEnumMap = {
  ReactionType.like: 'like',
  ReactionType.insightful: 'insightful',
  ReactionType.amusing: 'amusing',
  ReactionType.sad: 'sad',
  ReactionType.angry: 'angry',
  ReactionType.skeptical: 'skeptical',
};
