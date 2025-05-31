import 'package:ht_shared/src/models/core/feed_item.dart';
import 'package:ht_shared/src/models/entities/country.dart';
import 'package:ht_shared/src/models/entities/source_type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'source.g.dart';

/// {@template source}
/// Source model
///
/// Represents a news source.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class Source extends FeedItem {
  /// {@macro source}
  Source({
    required this.name,
    this.description,
    this.url,
    this.sourceType,
    this.language,
    this.headquarters,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'source');

  /// Factory method to create a [Source] instance from a JSON map.
  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  /// Unique identifier for the source.
  final String id;

  /// The name of the source.
  /// This is required and should not be null.
  final String name;

  /// A description of the source.
  final String? description;

  /// The URL of the source's homepage.
  final String? url;

  /// The type of the source (e.g., newsAgency, blog).
  /// If an unknown value is encountered during deserialization,
  /// this field will be set to null.

  final SourceType? sourceType;

  /// The language code of the source (e.g., 'en', 'fr').
  final String? language;

  /// The country where the source is headquartered.
  final Country? headquarters;

  /// Converts this [Source] instance to a JSON map.
  @override
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
        sourceType, // Changed from _sourceType
        language,
        headquarters,
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
    String? language,
    Country? headquarters,
  }) {
    return Source(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      url: url ?? this.url,
      sourceType: sourceType ?? this.sourceType, // Changed from _sourceType
      language: language ?? this.language,
      headquarters: headquarters ?? this.headquarters,
    );
  }
}
