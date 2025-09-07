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
    inArticleAdSlotConfigurations: $checkedConvert(
      'inArticleAdSlotConfigurations',
      (v) => (v as List<dynamic>)
          .map(
            (e) => InArticleAdSlotConfiguration.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    bannerAdShape: $checkedConvert(
      'bannerAdShape',
      (v) => $enumDecode(_$BannerAdShapeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$ArticleAdConfigurationToJson(
  ArticleAdConfiguration instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'bannerAdShape': _$BannerAdShapeEnumMap[instance.bannerAdShape]!,
  'inArticleAdSlotConfigurations': instance.inArticleAdSlotConfigurations
      .map((e) => e.toJson())
      .toList(),
};

const _$BannerAdShapeEnumMap = {
  BannerAdShape.square: 'square',
  BannerAdShape.rectangle: 'rectangle',
};
