import 'package:ht_shared/src/enums/enums.dart';
import 'package:ht_shared/src/models/core/feed_item.dart';
import 'package:ht_shared/src/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'country.g.dart';

/// {@template country}
/// Represents a country with its essential details.
///
/// Used typically in contexts like selecting a country for news headlines
/// or user profile settings.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Country extends FeedItem {
  /// {@macro country}
  const Country({
    required this.isoCode,
    required this.name,
    required this.flagUrl,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.status = ContentStatus.active,
  }) : super(type: 'country');

  /// Creates a Country instance from a JSON map.
  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  /// A unique identifier for the country instance, typically a UUID.
  final String id;

  /// The unique ISO 3166-1 alpha-2 code for the country (e.g., "US", "GB").
  final String isoCode;

  /// The common name of the country (e.g., "United States", "United Kingdom").
  final String name;

  /// The URL pointing to an image of the country's flag.
  final String flagUrl;

  /// The creation timestamp of the country.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The last update timestamp of the country.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The current status of the country.
  /// Defaults to `active` if the field is not present in the JSON payload,
  /// ensuring backward compatibility.
  final ContentStatus status;

  /// Converts this Country instance into a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$CountryToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    isoCode,
    name,
    flagUrl,
    createdAt,
    updatedAt,
    status,
    type,
  ];

  /// Creates a copy of this [Country] but with the given fields replaced with
  /// the new values.
  Country copyWith({
    String? id,
    String? isoCode,
    String? name,
    String? flagUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
  }) {
    return Country(
      id: id ?? this.id,
      isoCode: isoCode ?? this.isoCode,
      name: name ?? this.name,
      flagUrl: flagUrl ?? this.flagUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}
