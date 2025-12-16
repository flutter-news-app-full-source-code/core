// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Report _$ReportFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Report', json, ($checkedConvert) {
      final val = Report(
        id: $checkedConvert('id', (v) => v as String),
        reporterUserId: $checkedConvert('reporterUserId', (v) => v as String),
        entityType: $checkedConvert(
          'entityType',
          (v) => $enumDecode(_$ReportableEntityEnumMap, v),
        ),
        entityId: $checkedConvert('entityId', (v) => v as String),
        reason: $checkedConvert('reason', (v) => v as String),
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$ModerationStatusEnumMap, v),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => const DateTimeConverter().fromJson(v as String),
        ),
        additionalComments: $checkedConvert(
          'additionalComments',
          (v) => v as String?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReportToJson(Report instance) => <String, dynamic>{
  'id': instance.id,
  'reporterUserId': instance.reporterUserId,
  'entityType': _$ReportableEntityEnumMap[instance.entityType]!,
  'entityId': instance.entityId,
  'reason': instance.reason,
  'status': _$ModerationStatusEnumMap[instance.status]!,
  'additionalComments': instance.additionalComments,
  'createdAt': const DateTimeConverter().toJson(instance.createdAt),
};

const _$ReportableEntityEnumMap = {
  ReportableEntity.headline: 'headline',
  ReportableEntity.source: 'source',
  ReportableEntity.comment: 'comment',
};

const _$ModerationStatusEnumMap = {
  ModerationStatus.pendingReview: 'pendingReview',
  ModerationStatus.resolved: 'resolved',
};
