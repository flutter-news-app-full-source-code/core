import 'package:core/src/models/entities/country.dart';
import 'package:core/src/models/entities/source.dart';
import 'package:core/src/models/entities/topic.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'saved_filter.g.dart';

/// {@template saved_filter}
/// Represents a user-defined filter combination for filtering headlines.
///
/// This model stores a named set of criteria, including topics, sources, and
/// countries, allowing users to quickly re-apply complex filters.
/// {@endtemplate}
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class SavedFilter extends Equatable {
  /// {@macro saved_filter}
  const SavedFilter({
    required this.id,
    required this.name,
    required this.topics,
    required this.sources,
    required this.countries,
  });

  /// Factory method to create a [SavedFilter] instance from a JSON map.
  factory SavedFilter.fromJson(Map<String, dynamic> json) =>
      _$SavedFilterFromJson(json);

  /// The unique identifier for the saved filter.
  final String id;

  /// The user-provided name for this saved filter.
  final String name;

  /// The list of topics to include in the filter.
  /// An empty list means no topic filter is applied.
  final List<Topic> topics;

  /// The list of sources to include in the filter.
  /// An empty list means no source filter is applied.
  final List<Source> sources;

  /// The list of countries to include in the filter.
  /// An empty list means no country filter is applied.
  final List<Country> countries;

  /// Converts this [SavedFilter] instance to a JSON map.
  Map<String, dynamic> toJson() => _$SavedFilterToJson(this);

  @override
  List<Object?> get props => [id, name, topics, sources, countries];

  @override
  bool get stringify => true;

  /// Creates a copy of this [SavedFilter] but with the given fields
  /// replaced with the new values.
  SavedFilter copyWith({
    String? id,
    String? name,
    List<Topic>? topics,
    List<Source>? sources,
    List<Country>? countries,
  }) {
    return SavedFilter(
      id: id ?? this.id,
      name: name ?? this.name,
      topics: topics ?? this.topics,
      sources: sources ?? this.sources,
      countries: countries ?? this.countries,
    );
  }
}
