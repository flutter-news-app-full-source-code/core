import 'package:core/src/enums/banner_ad_shape.dart';
import 'package:core/src/enums/app_user_role.dart';
import 'package:core/src/enums/in_article_ad_slot_type.dart';
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
    required this.bannerAdShape,
    required this.visibleTo,
  });

  /// Creates an [ArticleAdConfiguration] from JSON data.
  factory ArticleAdConfiguration.fromJson(Map<String, dynamic> json) =>
      _$ArticleAdConfigurationFromJson(json);

  /// Converts this [ArticleAdConfiguration] instance to JSON data.
  Map<String, dynamic> toJson() => _$ArticleAdConfigurationToJson(this);

  /// Master switch to enable or disable all in-article ads (excluding interstitial).
  final bool enabled;

  /// The preferred shape for banner ads displayed in articles.
  final BannerAdShape bannerAdShape;

  /// Explicitly defines which user roles can see in-article ad slots
  /// and which specific slots are enabled for them. If a role is not
  /// in this map, they will not see in-article ads.
  final Map<AppUserRole, Map<InArticleAdSlotType, bool>> visibleTo;

  @override
  List<Object?> get props => [
    enabled,
    bannerAdShape,
    visibleTo,
  ];

  /// Creates a copy of this [ArticleAdConfiguration] but with the given fields
  /// replaced with the new values.
  ArticleAdConfiguration copyWith({
    bool? enabled,
    Map<AppUserRole, Map<InArticleAdSlotType, bool>>? visibleTo,
    BannerAdShape? bannerAdShape,
  }) {
    return ArticleAdConfiguration(
      enabled: enabled ?? this.enabled,
      visibleTo: visibleTo ?? this.visibleTo,
      bannerAdShape: bannerAdShape ?? this.bannerAdShape,
    );
  }
}
