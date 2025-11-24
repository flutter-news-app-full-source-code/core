import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_display_preferences.g.dart';

/// {@template feed_display_preferences}
/// User preferences for how feeds are displayed.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedDisplayPreferences extends Equatable {
  /// {@macro feed_display_preferences}
  const FeedDisplayPreferences({
    required this.feedItemDensity,
    required this.feedItemImageStyle,
    required this.feedItemClickBehavior,
  });

  /// Creates a [FeedDisplayPreferences] instance from a JSON map.
  factory FeedDisplayPreferences.fromJson(Map<String, dynamic> json) =>
      _$FeedDisplayPreferencesFromJson(json);

  /// How densely feed information should be presented.
  final FeedItemDensity feedItemDensity;

  /// How images should be displayed in the feed.
  final FeedItemImageStyle feedItemImageStyle;

  /// How feed items links should be opened.
  final FeedItemClickBehavior feedItemClickBehavior;

  /// Converts this [FeedDisplayPreferences] instance to a JSON map.
  Map<String, dynamic> toJson() => _$FeedDisplayPreferencesToJson(this);

  /// Creates a copy of this [FeedDisplayPreferences] but with the given fields
  /// replaced with the new values.
  FeedDisplayPreferences copyWith({
    FeedItemDensity? feedItemDensity,
    FeedItemImageStyle? feedItemImageStyle,
    FeedItemClickBehavior? feedItemClickBehavior,
  }) {
    return FeedDisplayPreferences(
      feedItemDensity: feedItemDensity ?? this.feedItemDensity,
      feedItemImageStyle: feedItemImageStyle ?? this.feedItemImageStyle,
      feedItemClickBehavior:
          feedItemClickBehavior ?? this.feedItemClickBehavior,
    );
  }

  @override
  List<Object?> get props => [
    feedItemDensity,
    feedItemImageStyle,
    feedItemClickBehavior,
  ];
}
