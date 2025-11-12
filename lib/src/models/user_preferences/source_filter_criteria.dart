import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/entities/country.dart';
import 'package:core/src/models/entities/language.dart';
import 'package:core/src/models/user_preferences/saved_source_filter.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'source_filter_criteria.g.dart';

/// {@template source_filter_criteria}
/// A value object that encapsulates the filtering criteria for a
/// [SavedSourceFilter].
///
/// This model groups the content-based filters languages and countries
/// and source types into a single, reusable object for filtering news sources.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class SourceFilterCriteria extends Equatable {
  /// {@macro source_filter_criteria}
  const SourceFilterCriteria({
    required this.sourceTypes,
    required this.languages,
    required this.countries,
  });

  /// Creates a [SourceFilterCriteria] from JSON data.
  factory SourceFilterCriteria.fromJson(Map<String, dynamic> json) =>
      _$SourceFilterCriteriaFromJson(json);

  /// The list of source types to include in the filter.
  /// An empty list means no source type filter is applied.
  final List<SourceType> sourceTypes;

  /// The list of languages to include in the filter.
  /// An empty list means no language filter is applied.
  final List<Language> languages;

  /// The list of countries to include in the filter.
  /// An empty list means no country filter is applied.
  final List<Country> countries;

  /// Converts this [SourceFilterCriteria] instance to JSON data.
  Map<String, dynamic> toJson() => _$SourceFilterCriteriaToJson(this);

  @override
  List<Object> get props => [languages, countries, sourceTypes];

  /// Creates a copy of this [SourceFilterCriteria] but with the given fields
  /// replaced with the new values.
  SourceFilterCriteria copyWith({
    List<Language>? languages,
    List<Country>? countries,
    List<SourceType>? sourceTypes,
  }) {
    return SourceFilterCriteria(
      languages: languages ?? this.languages,
      countries: countries ?? this.countries,
      sourceTypes: sourceTypes ?? this.sourceTypes,
    );
  }
}
