import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/core/feed_item.dart';
import 'package:core/src/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'topic.g.dart';

/// {@template topic}
/// Represents a news topic.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Topic extends FeedItem {
  /// {@macro topic}
  const Topic({
    required this.id,
    required this.name,
    required this.description,
    required this.iconUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  }) : super(type: 'topic');

  /// Creates a Topic instance from a JSON map.
  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);

  /// The unique identifier of the topic.
  final String id;

  /// The display name of the topic.
  @JsonKey(required: true)
  final String name;

  /// The description for the topic.
  final String description;

  /// The URL for an icon representing the topic.
  final String iconUrl;

  /// The creation timestamp of the topic.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The last update timestamp of the topic.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The current status of the topic.
  final ContentStatus status;

  /// Converts this Topic instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$TopicToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    iconUrl,
    createdAt,
    updatedAt,
    status,
    type,
  ];

  @override
  bool get stringify => true;

  /// Creates a copy of this Topic but with the given fields replaced with
  /// the new values.
  Topic copyWith({
    String? id,
    String? name,
    String? description,
    String? iconUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
  }) {
    return Topic(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      iconUrl: iconUrl ?? this.iconUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}
