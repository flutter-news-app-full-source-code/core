import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

/// {@template category}
/// Represents a news category.
///
/// Contains details like ID, name, description, and an optional icon URL.
/// The [id] is automatically generated using UUID v4 if not provided.
/// {@endtemplate}
@immutable
class Category extends FeedItem {
  /// {@macro category}
  ///
  /// If an [id] is not provided, a UUID v4 will be generated.
  Category({
    required this.name,
    required super.action, // Refactored to super.action
    String? id,
    this.description,
    this.iconUrl,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'category'); // Removed action from super constructor

  /// Creates a Category instance from a JSON map.
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      iconUrl: json['icon_url'] as String?,
      action: FeedItemAction.fromJson(json['action'] as Map<String, dynamic>),
    );
  }

  /// The unique identifier of the category.
  final String id;

  /// The display name of the category.
  final String name;

  /// An optional description for the category.
  final String? description;

  /// An optional URL for an icon representing the category.
  final String? iconUrl;

  /// Converts this Category instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'icon_url': iconUrl,
      'action': action.toJson(),
      'type': type, // Inherited from FeedItem
    }..removeWhere((key, value) => value == null);
  }

  @override
  List<Object?> get props => [id, name, description, iconUrl, type, action];

  @override
  bool get stringify => true;

  /// Creates a copy of this Category but with the given fields replaced with
  /// the new values.
  Category copyWith({
    String? id,
    String? name,
    String? description,
    String? iconUrl,
    FeedItemAction? action,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      iconUrl: iconUrl ?? this.iconUrl,
      action: action ?? this.action,
    );
  }
}
