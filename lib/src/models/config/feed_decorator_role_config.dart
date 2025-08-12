import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_decorator_role_config.g.dart';

/// {@template feed_decorator_role_config}
/// Defines the specific settings for a user role's visibility of a feed
/// decorator.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedDecoratorRoleConfig extends Equatable {
  /// {@macro feed_decorator_role_config}
  const FeedDecoratorRoleConfig({required this.daysBetweenViews});

  /// Factory constructor for creating a new [FeedDecoratorRoleConfig] instance
  /// from a map.
  factory FeedDecoratorRoleConfig.fromJson(Map<String, dynamic> json) =>
      _$FeedDecoratorRoleConfigFromJson(json);

  /// The number of days that must pass before the decorator can be shown again
  /// to a user with this specific role.
  final int daysBetweenViews;

  /// Converts this [FeedDecoratorRoleConfig] instance into a map.
  Map<String, dynamic> toJson() => _$FeedDecoratorRoleConfigToJson(this);

  @override
  List<Object> get props => [daysBetweenViews];

  /// Creates a copy of this [FeedDecoratorRoleConfig] but with the given fields
  /// replaced with the new values.
  FeedDecoratorRoleConfig copyWith({int? daysBetweenViews}) {
    return FeedDecoratorRoleConfig(
      daysBetweenViews: daysBetweenViews ?? this.daysBetweenViews,
    );
  }
}
