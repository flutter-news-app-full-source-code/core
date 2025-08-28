import 'package:core/src/enums/in_article_ad_slot_type.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'in_article_ad_slot_configuration.g.dart';

/// {@template in_article_ad_slot_configuration}
/// Configuration for a single in-article ad slot within an article.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InArticleAdSlotConfiguration extends Equatable {
  /// {@macro in_article_ad_slot_configuration}
  const InArticleAdSlotConfiguration({
    required this.slotType,
    required this.enabled,
  });

  /// Creates an [InArticleAdSlotConfiguration] from JSON data.
  factory InArticleAdSlotConfiguration.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InArticleAdSlotConfigurationFromJson(json);

  /// Converts this [InArticleAdSlotConfiguration] instance to JSON data.
  Map<String, dynamic> toJson() =>
      _$InArticleAdSlotConfigurationToJson(this);

  /// The type of the in-article ad slot.
  final InArticleAdSlotType slotType;

  /// Enable/disable this specific in-article ad slot.
  final bool enabled;

  @override
  List<Object?> get props => [slotType, enabled];

  /// Creates a copy of this [InArticleAdSlotConfiguration] but with
  /// the given fields replaced with the new values.
  InArticleAdSlotConfiguration copyWith({
    InArticleAdSlotType? slotType,
    bool? enabled,
  }) {
    return InArticleAdSlotConfiguration(
      slotType: slotType ?? this.slotType,
      enabled: enabled ?? this.enabled,
    );
  }
}
