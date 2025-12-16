import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/entities/country.dart';
import 'package:core/src/models/entities/source.dart';
import 'package:core/src/models/entities/topic.dart';
import 'package:core/src/models/feed/feed_item.dart';
import 'package:core/src/utils/date_time_converter.dart';
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
    required this.url,
    required this.imageUrl,
    required this.source,
    required this.eventCountry,
    required this.topic,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.isBreaking,
  }) : super(type: 'headline');

  /// Creates a [Headline] instance from a JSON map.
  factory Headline.fromJson(Map<String, dynamic> json) =>
      _$HeadlineFromJson(json);

  /// Unique identifier for the headline.
  final String id;

  /// Title of the headline.
  final String title;

  /// URL to the full article or content.
  final String url;

  /// URL to an image associated with the headline.
  final String imageUrl;

  /// Source or origin of the headline.
  final Source source;

  /// The country where the news event took place.
  final Country eventCountry;

  /// The internal timestamp recording when this headline was first ingested
  /// and saved into our system.
  @DateTimeConverter()
  final DateTime createdAt;

  /// The internal timestamp of the last update to this headline record in our
  /// system.
  @DateTimeConverter()
  final DateTime updatedAt;

  /// The current status of the headline.
  ///
  /// Defaults to `active` if the field is not present in the JSON payload,
  /// ensuring backward compatibility. This is suitable for ingested content.
  final ContentStatus status;

  /// A flag indicating whether this headline is considered "breaking news".
  ///
  /// This is editorially controlled and used to trigger immediate push
  /// notifications for users subscribed to `breakingOnly` alerts.
  final bool isBreaking;

  /// Topic of the current headline.
  final Topic topic;

  /// Converts this [Headline] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final json = _$HeadlineToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    title,
    url,
    imageUrl,
    createdAt,
    updatedAt,
    status,
    source,
    eventCountry,
    topic,
    isBreaking,
    type,
  ];

  @override
  bool get stringify => true;

  /// Creates a new [Headline] with updated properties.
  /// Use this to modify a [Headline] without changing the original instance.
  Headline copyWith({
    String? id,
    String? title,
    String? url,
    String? imageUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
    Source? source,
    Country? eventCountry,
    Topic? topic,
    bool? isBreaking,
  }) {
    return Headline(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
      source: source ?? this.source,
      eventCountry: eventCountry ?? this.eventCountry,
      topic: topic ?? this.topic,
      isBreaking: isBreaking ?? this.isBreaking,
    );
  }
}
