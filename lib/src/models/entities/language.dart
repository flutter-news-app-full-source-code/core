import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/core/feed_item.dart';
import 'package:core/src/utils/utils.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'language.g.dart';

/// {@template language}
/// Represents a language with its essential details.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Language extends Equatable {
  /// {@macro language}
  const Language({
    required this.id,
    required this.code,
    required this.name,
    required this.nativeName,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  /// Creates a Language instance from a JSON map.
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  /// A unique identifier for the language instance, typically a UUID.
  final String id;

  /// The ISO 639-1 code for the language (e.g., "en", "es").
  final String code;

  /// The common name of the language (e.g., "English", "Spanish").
  final String name;

  /// The name of the language in its own tongue.
  final String nativeName;

  /// The creation timestamp of the language.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The last update timestamp of the language.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The current status of the language.
  final ContentStatus status;

  /// Converts this Language instance into a JSON map.
  Map<String, dynamic> toJson() => _$LanguageToJson(this);

  @override
  List<Object?> get props => [
        id,
        code,
        name,
        nativeName,
        createdAt,
        updatedAt,
        status,
      ];

  /// Creates a copy of this [Language] but with the given fields replaced with
  /// the new values.
  Language copyWith({
    String? id,
    String? code,
    String? name,
    String? nativeName,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
  }) {
    return Language(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      nativeName: nativeName ?? this.nativeName,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}
