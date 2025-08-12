import 'package:core/src/enums/app_user_role.dart';
import 'package:core/src/enums/feed_decorator_category.dart';
import 'package:core/src/models/config/feed_decorator_role_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_decorator_config.g.dart';

/// {@template feed_decorator_config}
/// Defines the configuration for a single feed decorator.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedDecoratorConfig extends Equatable {
  /// {@macro feed_decorator_config}
  const FeedDecoratorConfig({
    required this.category,
    required this.enabled,
    required this.visibleTo,
    this.itemsToDisplay,
  }) : assert(
         (category == FeedDecoratorCategory.contentCollection &&
                 itemsToDisplay != null) ||
             (category == FeedDecoratorCategory.callToAction &&
                 itemsToDisplay == null),
         'itemsToDisplay must be set for contentCollection and must be null '
         'for callToAction.',
       );

  /// Factory constructor for creating a new [FeedDecoratorConfig] instance
  /// from a map.
  factory FeedDecoratorConfig.fromJson(Map<String, dynamic> json) =>
      _$FeedDecoratorConfigFromJson(json);

  /// The category of the decorator, which determines its behavior and
  /// structure.
  final FeedDecoratorCategory category;

  /// A global switch to enable or disable this decorator for all users.
  final bool enabled;

  /// Explicitly defines which user roles can see this decorator and their
  /// specific settings. If a role is not in this map, they will not see it.
  final Map<AppUserRole, FeedDecoratorRoleConfig> visibleTo;

  /// For 'contentCollection' decorators only: the number of items to show.
  /// This must be null for 'callToAction' decorators.
  final int? itemsToDisplay;

  /// Converts this [FeedDecoratorConfig] instance into a map.
  Map<String, dynamic> toJson() => _$FeedDecoratorConfigToJson(this);

  @override
  List<Object?> get props => [category, enabled, visibleTo, itemsToDisplay];

  /// Creates a copy of this [FeedDecoratorConfig] but with the given fields
  /// replaced with the new values.
  FeedDecoratorConfig copyWith({
    FeedDecoratorCategory? category,
    bool? enabled,
    Map<AppUserRole, FeedDecoratorRoleConfig>? visibleTo,
    int? itemsToDisplay,
  }) {
    return FeedDecoratorConfig(
      category: category ?? this.category,
      enabled: enabled ?? this.enabled,
      visibleTo: visibleTo ?? this.visibleTo,
      itemsToDisplay: itemsToDisplay ?? this.itemsToDisplay,
    );
  }
}
