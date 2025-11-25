import 'package:core/src/enums/feed_decorator_type.dart';
import 'package:core/src/enums/feed_item_click_behavior.dart';
import 'package:core/src/models/config/feed_decorator_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_config.g.dart';

/// {@template feed_config}
/// A container for all feed-related configurations.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class FeedConfig extends Equatable {
  /// {@macro feed_config}
  const FeedConfig({required this.itemClickBehavior, required this.decorators});

  /// Creates a [FeedConfig] from JSON data.
  factory FeedConfig.fromJson(Map<String, dynamic> json) =>
      _$FeedConfigFromJson(json);

  /// The default behavior when clicking feed items.
  final FeedItemClickBehavior itemClickBehavior;

  /// Defines configuration settings for all feed decorators.
  final Map<FeedDecoratorType, FeedDecoratorConfig> decorators;

  /// Converts this [FeedConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$FeedConfigToJson(this);

  @override
  List<Object> get props => [itemClickBehavior, decorators];
}
