// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_ad_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleAdConfiguration _$ArticleAdConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ArticleAdConfiguration', json, ($checkedConvert) {
  final val = ArticleAdConfiguration(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    bannerAdShape: $checkedConvert(
      'bannerAdShape',
      (v) => $enumDecode(_$BannerAdShapeEnumMap, v),
    ),
    visibleTo: $checkedConvert(
      'visibleTo',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          (e as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$InArticleAdSlotTypeEnumMap, k),
              e as bool,
            ),
          ),
        ),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ArticleAdConfigurationToJson(
  ArticleAdConfiguration instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'bannerAdShape': _$BannerAdShapeEnumMap[instance.bannerAdShape]!,
  'visibleTo': instance.visibleTo.map(
    (k, e) => MapEntry(
      _$AppUserRoleEnumMap[k]!,
      e.map((k, e) => MapEntry(_$InArticleAdSlotTypeEnumMap[k]!, e)),
    ),
  ),
};

const _$BannerAdShapeEnumMap = {
  BannerAdShape.square: 'square',
  BannerAdShape.rectangle: 'rectangle',
};

const _$InArticleAdSlotTypeEnumMap = {
  InArticleAdSlotType.aboveArticleContinueReadingButton:
      'aboveArticleContinueReadingButton',
  InArticleAdSlotType.belowArticleContinueReadingButton:
      'belowArticleContinueReadingButton',
};

const _$AppUserRoleEnumMap = {
  AppUserRole.premiumUser: 'premiumUser',
  AppUserRole.standardUser: 'standardUser',
  AppUserRole.guestUser: 'guestUser',
};
