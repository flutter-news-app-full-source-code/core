import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/user_preferences/headline_filter_criteria.dart';
import 'package:equatable/equatable.dart';

/// {@template filter_criteria_summary}
/// A lightweight summary of a filter's criteria, designed for analytics
/// payloads.
///
/// This model captures the structure and complexity of a filter's rules
/// without including the full, heavy entity data.
/// {@endtemplate}
class FilterCriteriaSummary extends Equatable {
  /// {@macro filter_criteria_summary}
  const FilterCriteriaSummary({
    required this.criteriaTypes,
    required this.topicCount,
    required this.sourceCount,
    required this.countryCount,
  });

  /// Creates a [FilterCriteriaSummary] from a full [HeadlineFilterCriteria].
  factory FilterCriteriaSummary.fromCriteria(HeadlineFilterCriteria criteria) {
    final types = <ContentType>{};
    if (criteria.topics.isNotEmpty) types.add(ContentType.topic);
    if (criteria.sources.isNotEmpty) types.add(ContentType.source);
    if (criteria.countries.isNotEmpty) types.add(ContentType.country);

    return FilterCriteriaSummary(
      criteriaTypes: types.map((t) => t.name).toList(),
      topicCount: criteria.topics.length,
      sourceCount: criteria.sources.length,
      countryCount: criteria.countries.length,
    );
  }

  /// A list of the types of content used in the filter criteria.
  final List<String> criteriaTypes;

  /// The number of topics in the criteria.
  final int topicCount;

  /// The number of sources in the criteria.
  final int sourceCount;

  /// The number of countries in the criteria.
  final int countryCount;

  /// Converts this instance to JSON data.
  Map<String, dynamic> toJson() => {
    'criteriaTypes': criteriaTypes,
    'topicCount': topicCount,
    'sourceCount': sourceCount,
    'countryCount': countryCount,
  };

  @override
  List<Object> get props => [
    criteriaTypes,
    topicCount,
    sourceCount,
    countryCount,
  ];

  /// Creates a copy of this instance with the given fields replaced with new
  /// values.
  FilterCriteriaSummary copyWith({
    List<String>? criteriaTypes,
    int? topicCount,
    int? sourceCount,
    int? countryCount,
  }) {
    return FilterCriteriaSummary(
      criteriaTypes: criteriaTypes ?? this.criteriaTypes,
      topicCount: topicCount ?? this.topicCount,
      sourceCount: sourceCount ?? this.sourceCount,
      countryCount: countryCount ?? this.countryCount,
    );
  }
}
