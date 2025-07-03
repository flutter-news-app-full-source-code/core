import 'package:json_annotation/json_annotation.dart';

part 'content_status.g.dart';

/// Enum representing the lifecycle status of a content entity.
@JsonEnum(fieldRename: FieldRename.snake)
enum ContentStatus {
  /// The entity is active and visible.
  /// This is the standard for all live content.
  active,

  /// The entity is a draft and not yet published.
  draft,

  /// The entity has been archived and is not visible in normal queries.
  archived,
}
