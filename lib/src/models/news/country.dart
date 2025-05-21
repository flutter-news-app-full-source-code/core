import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:uuid/uuid.dart';

/// {@template country}
/// Represents a country with its essential details.
///
/// Used typically in contexts like selecting a country for news headlines
/// or user profile settings.
/// {@endtemplate}
class Country extends FeedItem {
  /// {@macro country}
  Country({
    required this.isoCode,
    required this.name,
    required this.flagUrl,
    required super.action, // Refactored to super.action
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'country'); // Removed action from super constructor

  /// Creates a Country instance from a JSON map.
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['id'] as String?,
      isoCode: json['iso_code'] as String,
      name: json['name'] as String,
      flagUrl: json['flag_url'] as String,
      action: FeedItemAction.fromJson(json['action'] as Map<String, dynamic>),
    );
  }

  /// A unique identifier for the country instance, typically a UUID.
  final String id;

  /// The unique ISO 3166-1 alpha-2 code for the country (e.g., "US", "GB").
  final String isoCode;

  /// The common name of the country (e.g., "United States", "United Kingdom").
  final String name;

  /// The URL pointing to an image of the country's flag.
  final String flagUrl;

  /// Converts this Country instance into a JSON map.
  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'iso_code': isoCode,
      'name': name,
      'flag_url': flagUrl,
      'action': action.toJson(),
      'type': type, // Inherited from FeedItem
    }..removeWhere((key, value) => value == null);
  }

  @override
  List<Object?> get props => [id, isoCode, name, flagUrl, type, action];

  /// Creates a copy of this [Country] but with the given fields replaced with
  /// the new values.
  Country copyWith({
    String? id,
    String? isoCode,
    String? name,
    String? flagUrl,
    FeedItemAction? action,
  }) {
    return Country(
      id: id ?? this.id,
      isoCode: isoCode ?? this.isoCode,
      name: name ?? this.name,
      flagUrl: flagUrl ?? this.flagUrl,
      action: action ?? this.action,
    );
  }
}
