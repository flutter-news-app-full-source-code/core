// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headline_reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeadlineReaction _$HeadlineReactionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('HeadlineReaction', json, ($checkedConvert) {
      final val = HeadlineReaction(
        id: $checkedConvert('id', (v) => v as String),
        headlineId: $checkedConvert('headlineId', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
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

Map<String, dynamic> _$HeadlineReactionToJson(HeadlineReaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'headlineId': instance.headlineId,
      'userId': instance.userId,
      'reactionType': _$ReactionTypeEnumMap[instance.reactionType]!,
      'createdAt': dateTimeToJson(instance.createdAt),
    };

const _$ReactionTypeEnumMap = {
  ReactionType.like: 'like',
  ReactionType.insightful: 'insightful',
  ReactionType.amusing: 'amusing',
  ReactionType.sad: 'sad',
  ReactionType.angry: 'angry',
  ReactionType.skeptical: 'skeptical',
};
