import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/config/in_article_ad_slot_configuration.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'article_ad_configuration.g.dart';

/// {@template article_ad_configuration}
/// Master configuration for all ads on the article page (headline details),
/// excluding interstitial ads which are managed globally.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class ArticleAdConfiguration extends Equatable {
  /// {@macro article_ad_configuration}
  const ArticleAdConfiguration({
    required this.enabled,
    required this.defaultInArticleAdType,
    required this.inArticleAdSlotConfigurations,
  }) : assert(
         defaultInArticleAdType == AdType.native ||
             defaultInArticleAdType == AdType.banner,
         'Default in-article ad type must be native or banner.',
       );

  /// Creates an [ArticleAdConfiguration] from JSON data.
  factory ArticleAdConfiguration.fromJson(Map<String, dynamic> json) =>
      _$ArticleAdConfigurationFromJson(json);

  /// Converts this [ArticleAdConfiguration] instance to JSON data.
  Map<String, dynamic> toJson() => _$ArticleAdConfigurationToJson(this);

  /// Master switch to enable or disable all in-article ads (excluding interstitial).
  final bool enabled;

  /// Default [AdType] for all in-article ad slots.
  final AdType defaultInArticleAdType;

  /// List of configurations for individual in-article ad slots.
  final List<InArticleAdSlotConfiguration> inArticleAdSlotConfigurations;

  @override
  List<Object?> get props => [
    enabled,
    defaultInArticleAdType,
    inArticleAdSlotConfigurations,
  ];

  /// Creates a copy of this [ArticleAdConfiguration] but with the given fields
  /// replaced with the new values.
  ArticleAdConfiguration copyWith({
    bool? enabled,
    AdType? defaultInArticleAdType,
    List<InArticleAdSlotConfiguration>? inArticleAdSlotConfigurations,
  }) {
    return ArticleAdConfiguration(
      enabled: enabled ?? this.enabled,
      defaultInArticleAdType:
          defaultInArticleAdType ?? this.defaultInArticleAdType,
      inArticleAdSlotConfigurations:
          inArticleAdSlotConfigurations ?? this.inArticleAdSlotConfigurations,
    );
  }
}
