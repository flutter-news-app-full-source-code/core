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
    defaultInArticleAdType: $checkedConvert(
      'defaultInArticleAdType',
      (v) => $enumDecode(_$AdTypeEnumMap, v),
    ),
    interstitialAdConfiguration: $checkedConvert(
      'interstitialAdConfiguration',
      (v) => ArticleInterstitialAdConfiguration.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
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
  );
  return val;
});

Map<String, dynamic> _$ArticleAdConfigurationToJson(
  ArticleAdConfiguration instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'defaultInArticleAdType': _$AdTypeEnumMap[instance.defaultInArticleAdType]!,
  'interstitialAdConfiguration': instance.interstitialAdConfiguration.toJson(),
  'inArticleAdSlotConfigurations': instance.inArticleAdSlotConfigurations
      .map((e) => e.toJson())
      .toList(),
};

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};
