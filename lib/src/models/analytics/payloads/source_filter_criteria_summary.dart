import 'package:core/src/models/user_preferences/source_filter_criteria.dart';
import 'package:equatable/equatable.dart';

/// {@template source_filter_criteria_summary}
/// A lightweight summary of a source filter's criteria, designed for
/// analytics payloads.
/// {@endtemplate}
class SourceFilterCriteriaSummary extends Equatable {
  /// {@macro source_filter_criteria_summary}
  const SourceFilterCriteriaSummary({
    required this.sourceTypeCount,
    required this.languageCount,
    required this.countryCount,
  });

  /// Creates a [SourceFilterCriteriaSummary] from a full [SourceFilterCriteria].
  factory SourceFilterCriteriaSummary.fromCriteria(
    SourceFilterCriteria criteria,
  ) {
    return SourceFilterCriteriaSummary(
      sourceTypeCount: criteria.sourceTypes.length,
      languageCount: criteria.languages.length,
      countryCount: criteria.countries.length,
    );
  }

  /// The number of source types in the criteria.
  final int sourceTypeCount;

  /// The number of languages in the criteria.
  final int languageCount;

  /// The number of countries in the criteria.
  final int countryCount;

  /// Converts this instance to JSON data.
  Map<String, dynamic> toJson() => {
    'sourceTypeCount': sourceTypeCount,
    'languageCount': languageCount,
    'countryCount': countryCount,
  };

  @override
  List<Object> get props => [sourceTypeCount, languageCount, countryCount];
}
