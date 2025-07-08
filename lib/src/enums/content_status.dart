/// Enum representing the lifecycle status of a content entity.
enum ContentStatus {
  /// The entity is active and visible.
  /// This is the standard for all live content.
  active,

  /// The entity is a draft and not yet published.
  draft,

  /// The entity has been archived and is not visible in normal queries.
  archived,
}
