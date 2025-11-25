import 'package:json_annotation/json_annotation.dart';

/// {@template feed_item_click_behavior}
/// Defines how a feed item click should be handled.
/// {@endtemplate}
@JsonEnum()
enum FeedItemClickBehavior {
  /// Adhere to the behavior defined by the admin in the remote config.
  @JsonValue('default')
  defaultBehavior,

  @JsonValue('internalNavigation')
  internalNavigation,

  @JsonValue('externalNavigation')
  externalNavigation,
}
