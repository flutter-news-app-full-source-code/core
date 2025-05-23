import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/auth/user_role.dart';
import 'package:ht_shared/src/models/feed_extras/feed_template_types.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_rules.g.dart';

/// {@template placement_criteria}
/// Defines where and how often an injected item should appear in a feed.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class PlacementCriteria extends Equatable {
  /// {@macro placement_criteria}
  const PlacementCriteria({
    this.afterPrimaryItemIndex,
    this.relativePosition,
    this.minPrimaryItemsRequired,
  });

  /// Creates a [PlacementCriteria] from JSON data.
  factory PlacementCriteria.fromJson(Map<String, dynamic> json) =>
      _$PlacementCriteriaFromJson(json);

  /// Inject after this many primary feed items (0-indexed).
  /// If null, no specific index is preferred.
  final int? afterPrimaryItemIndex;

  /// A string indicating a general position, e.g., "middle", "end_quarter".
  /// The decorator will interpret this.
  final String? relativePosition;

  /// Minimum number of primary items required on the page for this injection
  /// to be considered. Prevents injecting into very short lists.
  final int? minPrimaryItemsRequired;

  /// Converts this [PlacementCriteria] instance to JSON data.
  Map<String, dynamic> toJson() => _$PlacementCriteriaToJson(this);

  @override
  List<Object?> get props => [
        afterPrimaryItemIndex,
        relativePosition,
        minPrimaryItemsRequired,
      ];

  /// Creates a copy of this [PlacementCriteria] but with the given fields
  /// replaced with the new values.
  PlacementCriteria copyWith({
    int? afterPrimaryItemIndex,
    String? relativePosition,
    int? minPrimaryItemsRequired,
  }) {
    return PlacementCriteria(
      afterPrimaryItemIndex:
          afterPrimaryItemIndex ?? this.afterPrimaryItemIndex,
      relativePosition: relativePosition ?? this.relativePosition,
      minPrimaryItemsRequired:
          minPrimaryItemsRequired ?? this.minPrimaryItemsRequired,
    );
  }
}

/// {@template engagement_rule}
/// Defines the rules for triggering a specific engagement prompt.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class EngagementRule extends Equatable {
  /// {@macro engagement_rule}
  const EngagementRule({
    required this.templateType,
    required this.userRoles,
    this.minDaysSinceAccountCreation,
    this.maxTimesToShow,
    this.minDaysSinceLastShown,
    this.placement,
  });

  /// Creates an [EngagementRule] from JSON data.
  factory EngagementRule.fromJson(Map<String, dynamic> json) =>
      _$EngagementRuleFromJson(json);

  /// Type of engagement template to use.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final EngagementTemplateType templateType;

  /// Roles this rule applies to.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final List<UserRole> userRoles;

  /// Minimum days since user account was created for this rule to apply.
  final int? minDaysSinceAccountCreation;

  /// Overall maximum number of times this specific engagement can be shown to a user.
  final int? maxTimesToShow;

  /// Minimum days since this specific engagement was last shown to the user.
  final int? minDaysSinceLastShown;

  /// How to place this in the feed.
  final PlacementCriteria? placement;

  /// Converts this [EngagementRule] instance to JSON data.
  Map<String, dynamic> toJson() => _$EngagementRuleToJson(this);

  @override
  List<Object?> get props => [
        templateType,
        userRoles,
        minDaysSinceAccountCreation,
        maxTimesToShow,
        minDaysSinceLastShown,
        placement,
      ];

  /// Creates a copy of this [EngagementRule] but with the given fields
  /// replaced with the new values.
  EngagementRule copyWith({
    EngagementTemplateType? templateType,
    List<UserRole>? userRoles,
    int? minDaysSinceAccountCreation,
    int? maxTimesToShow,
    int? minDaysSinceLastShown,
    PlacementCriteria? placement,
  }) {
    return EngagementRule(
      templateType: templateType ?? this.templateType,
      userRoles: userRoles ?? this.userRoles,
      minDaysSinceAccountCreation:
          minDaysSinceAccountCreation ?? this.minDaysSinceAccountCreation,
      maxTimesToShow: maxTimesToShow ?? this.maxTimesToShow,
      minDaysSinceLastShown:
          minDaysSinceLastShown ?? this.minDaysSinceLastShown,
      placement: placement ?? this.placement,
    );
  }
}

/// {@template suggestion_rule}
/// Defines the rules for triggering a specific content suggestion block.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class SuggestionRule extends Equatable {
  /// {@macro suggestion_rule}
  const SuggestionRule({
    required this.templateType,
    required this.userRoles,
    this.placement,
  });

  /// Creates a [SuggestionRule] from JSON data.
  factory SuggestionRule.fromJson(Map<String, dynamic> json) =>
      _$SuggestionRuleFromJson(json);

  /// Type of suggestion template to use.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final SuggestionTemplateType templateType;

  /// Roles this rule applies to.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final List<UserRole> userRoles;

  /// How to place this in the feed.
  final PlacementCriteria? placement;

  /// Converts this [SuggestionRule] instance to JSON data.
  Map<String, dynamic> toJson() => _$SuggestionRuleToJson(this);

  @override
  List<Object?> get props => [templateType, userRoles, placement];

  /// Creates a copy of this [SuggestionRule] but with the given fields
  /// replaced with the new values.
  SuggestionRule copyWith({
    SuggestionTemplateType? templateType,
    List<UserRole>? userRoles,
    PlacementCriteria? placement,
  }) {
    return SuggestionRule(
      templateType: templateType ?? this.templateType,
      userRoles: userRoles ?? this.userRoles,
      placement: placement ?? this.placement,
    );
  }
}
