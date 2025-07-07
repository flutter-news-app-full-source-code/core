import 'package:ht_shared/src/enums/enums.dart';
import 'package:ht_shared/src/models/core/feed_item.dart';
import 'package:ht_shared/src/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'category.g.dart';

/// {@template category}
/// Represents a news category.
///
/// Contains details like ID, name, description, and an optional icon URL.
/// The [id] is automatically generated using UUID v4 if not provided.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Category extends FeedItem {
  /// {@macro category}
  ///
  /// If an [id] is not provided, a UUID v4 will be generated.
  Category({
    required this.name,
    String? id,
    this.description,
    this.iconUrl,
    this.createdAt,
    this.updatedAt,
    this.status = ContentStatus.active,
  }) : id = id ?? const Uuid().v4(),
       super(type: 'category');

  /// Creates a Category instance from a JSON map.
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  /// The unique identifier of the category.
  final String id;

  /// The display name of the category.
  @JsonKey(required: true)
  final String name;

  /// An optional description for the category.
  final String? description;

  /// An optional URL for an icon representing the category.
  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  /// The creation timestamp of the category.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? createdAt;

  /// The last update timestamp of the category.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? updatedAt;

  /// The current status of the category.
  /// Defaults to `active` if the field is not present in the JSON payload,
  /// ensuring backward compatibility.
  @JsonKey(defaultValue: ContentStatus.active)
  final ContentStatus status;

  /// Converts this Category instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$CategoryToJson(this);
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

  /// Creates a copy of this Category but with the given fields replaced with
  /// the new values.
  Category copyWith({
    String? id,
    String? name,
    String? description,
    String? iconUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
  }) {
    return Category(
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
