import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:ht_shared/src/models/feed/source_type.dart';
import 'package:ht_shared/src/models/news/country.dart';
import 'package:ht_shared/src/utils/json_converters.dart';
import 'package:uuid/uuid.dart';

/// {@template source}
/// Source model
///
/// Represents a news source.
/// {@endtemplate}
class Source extends FeedItem {
  /// {@macro source}
  Source({
    required this.name,
    required super.action, // Refactored to super.action
    this.description,
    this.url,
    SourceType? sourceType, // Renamed to avoid conflict with FeedItem.type
    this.language,
    this.headquarters,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        _sourceType = sourceType,
        super(type: 'source');

  /// Factory method to create a [Source] instance from a JSON map.
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      url: json['url'] as String?,
      sourceType: json['sourceType'] == null
          ? null
          : sourceTypeFromJson(json['sourceType'] as String),
      language: json['language'] as String?,
      headquarters: json['headquarters'] == null
          ? null
          : Country.fromJson(json['headquarters'] as Map<String, dynamic>),
      action: FeedItemAction.fromJson(json['action'] as Map<String, dynamic>),
    );
  }

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
  final SourceType? _sourceType;

  /// Public getter for the source type.
  SourceType? get sourceType => _sourceType;

  /// The language code of the source (e.g., 'en', 'fr').
  final String? language;

  /// The country where the source is headquartered.
  final Country? headquarters;

  /// Converts this [Source] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'id': id,
      'name': name,
      'description': description,
      'url': url,
      'sourceType': _sourceType == null ? null : sourceTypeToJson(_sourceType!),
      'language': language,
      'headquarters': headquarters?.toJson(),
      'action': action.toJson(),
      'type': type, // Inherited from FeedItem
    };
    return json..removeWhere((key, value) => value == null);
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        url,
        _sourceType,
        language,
        headquarters,
        type,
        action,
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
    FeedItemAction? action,
  }) {
    return Source(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      url: url ?? this.url,
      sourceType: sourceType ?? _sourceType,
      language: language ?? this.language,
      headquarters: headquarters ?? this.headquarters,
      action: action ?? this.action,
    );
  }
}
