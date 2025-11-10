import 'package:core/src/models/entities/country.dart';
import 'package:core/src/models/entities/source.dart';
import 'package:core/src/models/entities/topic.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'interest_criteria.g.dart';

/// {@template interest_criteria}
/// A value object that encapsulates the filtering criteria for an [Interest].
///
/// This model groups the content-based filters (topics, sources, and
/// countries) into a single, reusable object. It uses full entity models
/// to represent the selected criteria.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InterestCriteria extends Equatable {
  /// {@macro interest_criteria}
  const InterestCriteria({
    required this.topics,
    required this.sources,
    required this.countries,
  });

  /// Creates an [InterestCriteria] from JSON data.
  factory InterestCriteria.fromJson(Map<String, dynamic> json) =>
      _$InterestCriteriaFromJson(json);

  /// The list of topics to include in the filter.
  /// An empty list means no topic filter is applied.
  final List<Topic> topics;

  /// The list of sources to include in the filter.
  /// An empty list means no source filter is applied.
  final List<Source> sources;

  /// The list of countries to include in the filter.
  /// An empty list means no country filter is applied.
  final List<Country> countries;

  /// Converts this [InterestCriteria] instance to JSON data.
  Map<String, dynamic> toJson() => _$InterestCriteriaToJson(this);

  @override
  List<Object> get props => [topics, sources, countries];

  /// Creates a copy of this [InterestCriteria] but with the given fields
  /// replaced with the new values.
  InterestCriteria copyWith({
    List<Topic>? topics,
    List<Source>? sources,
    List<Country>? countries,
  }) {
    return InterestCriteria(
      topics: topics ?? this.topics,
      sources: sources ?? this.sources,
      countries: countries ?? this.countries,
    );
  }
}
