// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reaction _$ReactionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Reaction', json, ($checkedConvert) {
      final val = Reaction(
        reactionType: $checkedConvert(
          'reactionType',
          (v) => $enumDecode(_$ReactionTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReactionToJson(Reaction instance) => <String, dynamic>{
  'reactionType': _$ReactionTypeEnumMap[instance.reactionType]!,
};

const _$ReactionTypeEnumMap = {
  ReactionType.like: 'like',
  ReactionType.insightful: 'insightful',
  ReactionType.amusing: 'amusing',
  ReactionType.sad: 'sad',
  ReactionType.angry: 'angry',
  ReactionType.skeptical: 'skeptical',
};
