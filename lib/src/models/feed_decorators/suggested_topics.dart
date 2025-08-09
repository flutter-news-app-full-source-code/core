import 'package:core/src/models/core/feed_item.dart';
import 'package:core/src/models/entities/topic.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'suggested_topics.g.dart';

/// {@template suggested_topics}
/// Represents a feed item that suggests a list of topics to the user.
/// {@endtemplate}
@immutable
@JsonSerializable(
  explicitToJson: true,
  includeIfNull: true,
  checked: true,
  genericArgumentFactories: true,
)
class SuggestedTopics extends FeedItem {
  /// {@macro suggested_topics}
  const SuggestedTopics({
    required this.id,
    required this.title,
    required this.topics,
  }) : super(type: 'suggested_topics');

  /// Factory method to create a [SuggestedTopics] instance from a JSON map.
  factory SuggestedTopics.fromJson(Map<String, dynamic> json) =>
      _$SuggestedTopicsFromJson(json);

  /// Unique identifier for the suggested topics item.
  final String id;

  /// The title for the suggestion card (e.g., "Topics you might like").
  final String title;

  /// The list of suggested topics.
  final List<Topic> topics;

  @override
  Map<String, dynamic> toJson() {
    final json = _$SuggestedTopicsToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [id, title, topics, type];

  /// Creates a new [SuggestedTopics] with updated properties.
  SuggestedTopics copyWith({
    String? id,
    String? title,
    List<Topic>? topics,
  }) {
    return SuggestedTopics(
      id: id ?? this.id,
      title: title ?? this.title,
      topics: topics ?? this.topics,
    );
  }
}
