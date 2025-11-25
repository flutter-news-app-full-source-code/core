import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_settings.g.dart';

/// {@template feed_settings}
/// User preferences for how feeds are displayed.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedSettings extends Equatable {
  /// {@macro feed_settings}
  const FeedSettings({
    required this.feedItemDensity,
    required this.feedItemImageStyle,
    required this.feedItemClickBehavior,
  });

  /// Creates a [FeedSettings] instance from a JSON map.
  factory FeedSettings.fromJson(Map<String, dynamic> json) =>
      _$FeedSettingsFromJson(json);

  /// How densely feed information should be presented.
  final FeedItemDensity feedItemDensity;

  /// How images should be displayed in the feed.
  final FeedItemImageStyle feedItemImageStyle;

  /// How feed items links should be opened.
  final FeedItemClickBehavior feedItemClickBehavior;

  /// Converts this [FeedSettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$FeedSettingsToJson(this);

  /// Creates a copy of this [FeedSettings] but with the given fields
  /// replaced with the new values.
  FeedSettings copyWith({
    FeedItemDensity? feedItemDensity,
    FeedItemImageStyle? feedItemImageStyle,
    FeedItemClickBehavior? feedItemClickBehavior,
  }) {
    return FeedSettings(
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
