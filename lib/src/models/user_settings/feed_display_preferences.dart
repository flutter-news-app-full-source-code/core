import 'package:equatable/equatable.dart';
import 'package:ht_shared/ht_shared.dart';
import 'package:ht_shared/src/exceptions/headline_density.dart';
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
    required this.headlineDensity,
    required this.headlineImageStyle,
    required this.showSourceInHeadlineFeed,
    required this.showPublishDateInHeadlineFeed,
  });

  /// Creates a [FeedDisplayPreferences] instance from a JSON map.
  factory FeedDisplayPreferences.fromJson(Map<String, dynamic> json) =>
      _$FeedDisplayPreferencesFromJson(json);

  /// How densely headline information should be presented.
  final HeadlineDensity headlineDensity;

  /// How images should be displayed in the headline feed.
  final HeadlineImageStyle headlineImageStyle;

  /// Whether to show the source name directly in the headline feed item.
  final bool showSourceInHeadlineFeed;

  /// Whether to show the publish date in the headline feed item.
  final bool showPublishDateInHeadlineFeed;

  /// Converts this [FeedDisplayPreferences] instance to a JSON map.
  Map<String, dynamic> toJson() => _$FeedDisplayPreferencesToJson(this);

  /// Creates a copy of this [FeedDisplayPreferences] but with the given fields
  /// replaced with the new values.
  FeedDisplayPreferences copyWith({
    HeadlineDensity? headlineDensity,
    HeadlineImageStyle? headlineImageStyle,
    bool? showSourceInHeadlineFeed,
    bool? showPublishDateInHeadlineFeed,
  }) {
    return FeedDisplayPreferences(
      headlineDensity: headlineDensity ?? this.headlineDensity,
      headlineImageStyle: headlineImageStyle ?? this.headlineImageStyle,
      showSourceInHeadlineFeed:
          showSourceInHeadlineFeed ?? this.showSourceInHeadlineFeed,
      showPublishDateInHeadlineFeed:
          showPublishDateInHeadlineFeed ?? this.showPublishDateInHeadlineFeed,
    );
  }

  @override
  List<Object?> get props => [
    headlineDensity,
    headlineImageStyle,
    showSourceInHeadlineFeed,
    showPublishDateInHeadlineFeed,
  ];
}
