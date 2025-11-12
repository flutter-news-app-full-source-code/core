import 'package:core/src/models/user_preferences/source_filter_criteria.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'saved_source_filter.g.dart';

/// {@template saved_source_filter}
/// Represents a user's saved set of criteria for filtering news sources on
/// the "Discover" page.
///
/// This allows users to save complex source filters (e.g., "Tech blogs in
/// Germany") for quick reuse.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class SavedSourceFilter extends Equatable {
  /// {@macro saved_source_filter}
  const SavedSourceFilter({
    required this.id,
    required this.userId,
    required this.name,
    required this.criteria,
    required this.isPinned,
  });

  /// Creates a [SavedSourceFilter] from JSON data.
  factory SavedSourceFilter.fromJson(Map<String, dynamic> json) =>
      _$SavedSourceFilterFromJson(json);

  /// The unique identifier for the saved filter.
  final String id;

  /// The ID of the user who owns this filter.
  final String userId;

  /// The user-provided name for this filter (e.g., "European News Agencies").
  final String name;

  /// The filtering criteria for this filter.
  final SourceFilterCriteria criteria;

  /// A flag indicating whether this filter should be available as a
  /// one-click pinned filter on the Discover page.
  final bool isPinned;

  /// Converts this [SavedSourceFilter] instance to JSON data.
  Map<String, dynamic> toJson() => _$SavedSourceFilterToJson(this);

  @override
  List<Object> get props => [id, userId, name, criteria, isPinned];

  /// Creates a copy of this [SavedSourceFilter] but with the given fields
  /// replaced with the new values.
  SavedSourceFilter copyWith({
    String? id,
    String? userId,
    String? name,
    SourceFilterCriteria? criteria,
    bool? isPinned,
  }) {
    return SavedSourceFilter(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      criteria: criteria ?? this.criteria,
      isPinned: isPinned ?? this.isPinned,
    );
  }
}
