import 'package:json_annotation/json_annotation.dart';

/// {@template positive_interaction_type}
/// Defines the abstract types of user actions that can be considered positive
/// interactions, potentially contributing to triggering events like the
/// in-app review prompt.
/// {@endtemplate}
@JsonEnum()
enum PositiveInteractionType {
  /// The user saved a content item (e.g., a headline).
  @JsonValue('saveItem')
  saveItem,

  /// The user followed an entity (e.g., a topic, source, or country).
  @JsonValue('followItem')
  followItem,

  /// The user shared a content item (e.g., a headline).
  @JsonValue('shareContent')
  shareContent,

  /// The user created a saved filter.
  @JsonValue('saveFilter')
  saveFilter,
}
