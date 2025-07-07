import 'package:ht_shared/src/enums/enums.dart';
import 'package:ht_shared/src/models/core/feed_item.dart';
import 'package:ht_shared/src/models/entities/category.dart';
import 'package:ht_shared/src/models/entities/source.dart';
import 'package:ht_shared/src/utils/json_helpers.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'headline.g.dart';

/// {@template headline}
/// Headline model
///
/// Represents a news headline item.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Headline extends FeedItem {
  /// {@macro headline}
  const Headline({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.imageUrl,
    required this.publishedAt,
    required this.source,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    this.status = ContentStatus.active,
  }) : super(type: 'headline');

  /// Creates a [Headline] instance from a JSON map.
  factory Headline.fromJson(Map<String, dynamic> json) =>
      _$HeadlineFromJson(json);

  /// Unique identifier for the headline.
  final String id;

  /// Title of the headline.
  final String title;

  /// Description or snippet of the headline content.
  final String description;

  /// URL to the full article or content.
  final String url;

  /// URL to an image associated with the headline.
  final String imageUrl;

  /// The external timestamp from the original news source, indicating when the
  /// article was officially published to the world.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime publishedAt;

  /// Source or origin of the headline.
  final Source source;

  /// The internal timestamp recording when this headline was first ingested
  /// and saved into our system.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The internal timestamp of the last update to this headline record in our
  /// system.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The current status of the headline.
  ///
  /// Defaults to `active` if the field is not present in the JSON payload,
  /// ensuring backward compatibility. This is suitable for ingested content.
  final ContentStatus status;

  /// Category of the current headline.
  final Category category;

  /// Converts this [Headline] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$HeadlineToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    url,
    imageUrl,
    publishedAt,
    createdAt,
    updatedAt,
    status,
    source,
    category,
    type,
  ];

  @override
  bool get stringify => true;

  /// Creates a new [Headline] with updated properties.
  /// Use this to modify a [Headline] without changing the original instance.
  Headline copyWith({
    String? id,
    String? title,
    String? description,
    String? url,
    String? imageUrl,
    DateTime? publishedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
    Source? source,
    Category? category,
  }) {
    return Headline(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      imageUrl: imageUrl ?? this.imageUrl,
      publishedAt: publishedAt ?? this.publishedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
      source: source ?? this.source,
      category: category ?? this.category,
    );
  }
}
