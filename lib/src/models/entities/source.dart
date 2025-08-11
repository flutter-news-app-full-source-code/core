import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/core/feed_item.dart';
import 'package:core/src/models/entities/country.dart';
import 'package:core/src/models/entities/language.dart';
import 'package:core/src/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'source.g.dart';

/// {@template source}
/// Source model
///
/// Represents a news source.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Source extends FeedItem {
  /// {@macro source}
  const Source({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.sourceType,
    required this.language,
    required this.headquarters,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  }) : super(type: 'source');

  /// Factory method to create a [Source] instance from a JSON map.
  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  /// Unique identifier for the source.
  final String id;

  /// The name of the source.
  /// This is required and should not be null.
  final String name;

  /// A description of the source.
  final String description;

  /// The URL of the source's homepage.
  final String url;

  /// The type of the source (e.g., newsAgency, blog).
  /// If an unknown value is encountered during deserialization,
  /// this field will be set to null.

  final SourceType sourceType;

  /// The language of the source.
  final Language language;

  /// The country where the source is headquartered.
  final Country headquarters;

  /// The creation timestamp of the source.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The last update timestamp of the source.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The current status of the source.
  /// Defaults to `active` if the field is not present in the JSON payload,
  /// ensuring backward compatibility.
  final ContentStatus status;

  /// Converts this [Source] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final json = _$SourceToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    url,
    sourceType,
    language,
    headquarters,
    createdAt,
    updatedAt,
    status,
    type,
  ];

  /// Creates a new [Source] with updated properties.
  /// Use this to modify a [Source] without changing the original instance.
  Source copyWith({
    String? id,
    String? name,
    String? description,
    String? url,
    SourceType? sourceType,
    Language? language,
    Country? headquarters,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
  }) {
    return Source(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      url: url ?? this.url,
      sourceType: sourceType ?? this.sourceType,
      language: language ?? this.language,
      headquarters: headquarters ?? this.headquarters,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}
