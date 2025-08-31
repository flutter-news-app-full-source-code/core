import 'package:core/core.dart';

/// A list of predefined local ads for fixture data.
final localAdsFixturesData = <LocalAd>[
  const LocalNativeAd(
    id: kLocalAd1Id,
    title: 'Discover Our Premium Content',
    subtitle: 'Unlock exclusive articles and an ad-free experience.',
    imageUrl: 'https://example.com/ads/premium_native.png',
    targetUrl: 'https://example.com/premium',
  ),
  const LocalBannerAd(
    id: kLocalAd2Id,
    imageUrl: 'https://example.com/ads/banner_ad_1.png',
    targetUrl: 'https://example.com/offer1',
  ),
  const LocalInterstitialAd(
    id: kLocalAd3Id,
    imageUrl: 'https://example.com/ads/interstitial_ad_1.png',
    targetUrl: 'https://example.com/special_offer',
  ),
  const LocalVideoAd(
    id: kLocalAd4Id,
    videoUrl: 'https://example.com/ads/promo_video.mp4',
    targetUrl: 'https://example.com/watch_more',
  ),
  const LocalNativeAd(
    id: kLocalAd5Id,
    title: 'Stay Informed with Daily Briefings',
    subtitle: 'Get the top news delivered straight to your inbox.',
    imageUrl: 'https://example.com/ads/briefing_native.png',
    targetUrl: 'https://example.com/subscribe',
  ),
  const LocalBannerAd(
    id: kLocalAd6Id,
    imageUrl: 'https://example.com/ads/banner_ad_2.png',
    targetUrl: 'https://example.com/offer2',
  ),
];
