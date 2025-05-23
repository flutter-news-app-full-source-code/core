import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/core/content_type.dart';
import 'package:ht_shared/src/models/feed_decorators/suggested_content_display_type.dart';
import 'package:ht_shared/src/models/feed_extras/feed_template_types.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'suggested_content_template.g.dart';

/// {@template suggested_content_template}
/// Defines the static content and configuration for a suggestion block.
/// The 'type' of an instance should match a [SuggestionTemplateType] value.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class SuggestedContentTemplate extends Equatable {
  /// {@macro suggested_content_template}
  const SuggestedContentTemplate({
    required this.type,
    required this.displayType,
    required this.suggestedContentType,
    this.title,
    this.description,
    this.maxItemsToDisplay,
    this.fetchCriteria,
  });

  /// Creates a [SuggestedContentTemplate] from JSON data.
  factory SuggestedContentTemplate.fromJson(Map<String, dynamic> json) =>
      _$SuggestedContentTemplateFromJson(json);

  /// The type of suggestion template, matching a [SuggestionTemplateType] value.

  final SuggestionTemplateType type;

  /// An optional title for the suggestion block (e.g., "You might like...").
  final String? title;

  /// An optional description for the suggestion block.
  final String? description;

  /// The visual presentation or layout style for this suggestion block.

  final SuggestedContentDisplayType displayType;

  /// Defines what kind of primary content this suggestion block will contain
  /// (e.g., if suggesting categories, this would be [ContentType.category]).

  final ContentType suggestedContentType;

  /// Maximum number of items to display within this suggestion block.
  final int? maxItemsToDisplay;

  /// Criteria for fetching dynamic items, e.g., "popular", "newest".
  /// This is a simple string; the decorator will interpret it.
  final String? fetchCriteria;

  /// Converts this [SuggestedContentTemplate] instance to JSON data.
  Map<String, dynamic> toJson() => _$SuggestedContentTemplateToJson(this);

  @override
  List<Object?> get props => [
        type,
        title,
        description,
        displayType,
        suggestedContentType,
        maxItemsToDisplay,
        fetchCriteria,
      ];

  /// Creates a copy of this [SuggestedContentTemplate] but with the given
  /// fields replaced with the new values.
  SuggestedContentTemplate copyWith({
    SuggestionTemplateType? type,
    String? title,
    String? description,
    SuggestedContentDisplayType? displayType,
    ContentType? suggestedContentType,
    int? maxItemsToDisplay,
    String? fetchCriteria,
  }) {
    return SuggestedContentTemplate(
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      displayType: displayType ?? this.displayType,
      suggestedContentType: suggestedContentType ?? this.suggestedContentType,
      maxItemsToDisplay: maxItemsToDisplay ?? this.maxItemsToDisplay,
      fetchCriteria: fetchCriteria ?? this.fetchCriteria,
    );
  }
}
