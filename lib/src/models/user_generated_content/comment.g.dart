// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Comment', json, ($checkedConvert) {
      final val = Comment(
        language: $checkedConvert(
          'language',
          (v) => Language.fromJson(v as Map<String, dynamic>),
        ),
        content: $checkedConvert('content', (v) => v as String),
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
  'language': instance.language.toJson(),
  'content': instance.content,
  'status': _$CommentStatusEnumMap[instance.status]!,
};

const _$CommentStatusEnumMap = {
  CommentStatus.pendingReview: 'pendingReview',
  CommentStatus.approved: 'approved',
  CommentStatus.rejected: 'rejected',
  CommentStatus.flaggedByAI: 'flaggedByAI',
  CommentStatus.hiddenByUser: 'hiddenByUser',
};
