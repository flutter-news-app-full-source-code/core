// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Comment', json, ($checkedConvert) {
      final val = Comment(
        id: $checkedConvert('id', (v) => v as String),
        headlineId: $checkedConvert('headlineId', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        content: $checkedConvert('content', (v) => v as String),
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$CommentStatusEnumMap, v),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => dateTimeFromJson(v as String?),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
  'id': instance.id,
  'headlineId': instance.headlineId,
  'userId': instance.userId,
  'content': instance.content,
  'status': _$CommentStatusEnumMap[instance.status]!,
  'createdAt': dateTimeToJson(instance.createdAt),
  'updatedAt': dateTimeToJson(instance.updatedAt),
};

const _$CommentStatusEnumMap = {
  CommentStatus.pendingReview: 'pendingReview',
  CommentStatus.approved: 'approved',
  CommentStatus.rejected: 'rejected',
  CommentStatus.flaggedByAI: 'flaggedByAI',
  CommentStatus.hiddenByUser: 'hiddenByUser',
};
