/// {@template feed_decorator_category}
/// Defines the category of a feed decorator, which determines its general
/// structure and behavior.
/// {@endtemplate}
enum FeedDecoratorCategory {
  /// A decorator that represents a single, actionable item, like a button or
  /// a link card.
  callToAction,

  /// A decorator that represents a horizontally scrollable list of other
  /// feed items, like a list of suggested topics or sources.
  contentCollection,
}
