import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/news/news.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

export 'category.dart';
export 'country.dart';
export 'source.dart';

part 'headline.g.dart';

// Helper function for parsing DateTime, returning null on error
DateTime? _dateTimeFromJson(String? dateString) {
  if (dateString == null) return null;
  return DateTime.tryParse(dateString);
}

/// {@template headline}
/// Headline model
///
/// Represents a news headline item.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Headline extends Equatable {
  /// {@macro headline}
  Headline({
    required this.title,
    this.description,
    this.url,
    this.imageUrl,
    this.publishedAt,
    this.source,
    this.category,
    String? id,
  }) : assert(
         id == null || id.isNotEmpty,
         'id cannot be an empty string', // Updated assertion message
       ),
       id = id ?? const Uuid().v4();

  /// Factory method to create a [Headline] instance from a JSON map.
  factory Headline.fromJson(Map<String, dynamic> json) =>
      _$HeadlineFromJson(json);

  /// Unique identifier for the headline.
  final String id;

  /// Title of the headline.
  final String title;

  /// Description or snippet of the headline content.
  final String? description;

  /// URL to the full article or content.
  final String? url;

  /// URL to an image associated with the headline.
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  /// Date and time when the headline was published.
  @JsonKey(name: 'publishedAt', fromJson: _dateTimeFromJson)
  final DateTime? publishedAt;

  /// Source or origin of the headline.
  final Source? source;

  /// Category of the current headline.
  final Category? category;

  /// Converts this [Headline] instance to a JSON map.
  Map<String, dynamic> toJson() => _$HeadlineToJson(this);

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    url,
    imageUrl,
    publishedAt,
    source,
    category,
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
      source: source ?? this.source,
      category: category ?? this.category,
    );
  }
}
