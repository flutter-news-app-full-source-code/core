// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Comment', json, ($checkedConvert) {
      final val = Comment(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        entityId: $checkedConvert('entityId', (v) => v as String),
        entityType: $checkedConvert(
          'entityType',
          (v) => $enumDecode(_$EngageableTypeEnumMap, v),
        ),
        language: $checkedConvert(
          'language',
          (v) => Language.fromJson(v as Map<String, dynamic>),
        ),
        content: $checkedConvert('content', (v) => v as String),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        status: $checkedConvert(
          'status',
          (v) =>
              $enumDecodeNullable(_$CommentStatusEnumMap, v) ??
              CommentStatus.pendingReview,
        ),
      );
      return val;
    });

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'entityId': instance.entityId,
  'entityType': _$EngageableTypeEnumMap[instance.entityType]!,
  'language': instance.language.toJson(),
  'content': instance.content,
  'status': _$CommentStatusEnumMap[instance.status]!,
  'createdAt': dateTimeToJson(instance.createdAt),
  'updatedAt': dateTimeToJson(instance.updatedAt),
};

const _$EngageableTypeEnumMap = {EngageableType.headline: 'headline'};

const _$CommentStatusEnumMap = {
  CommentStatus.pendingReview: 'pendingReview',
  CommentStatus.approved: 'approved',
  CommentStatus.rejected: 'rejected',
  CommentStatus.flaggedByAI: 'flaggedByAI',
  CommentStatus.hiddenByUser: 'hiddenByUser',
};
