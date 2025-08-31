import 'package:core/core.dart';

/// A list of predefined local ads for fixture data.
final localAdsFixturesData = <LocalAd>[
  const LocalNativeAd(
    id: localAd1,
    title: 'Discover Our Premium Content',
    subtitle: 'Unlock exclusive articles and an ad-free experience.',
    imageUrl: 'https://example.com/ads/premium_native.png',
    targetUrl: 'https://example.com/premium',
  ),
  const LocalBannerAd(
    id: localAd2,
    imageUrl: 'https://example.com/ads/banner_ad_1.png',
    targetUrl: 'https://example.com/offer1',
  ),
  const LocalInterstitialAd(
    id: localAd3,
    imageUrl: 'https://example.com/ads/interstitial_ad_1.png',
    targetUrl: 'https://example.com/special_offer',
  ),
  const LocalVideoAd(
    id: localAd4,
    videoUrl: 'https://example.com/ads/promo_video.mp4',
    targetUrl: 'https://example.com/watch_more',
  ),
  const LocalNativeAd(
    id: localAd5,
    title: 'Stay Informed with Daily Briefings',
    subtitle: 'Get the top news delivered straight to your inbox.',
    imageUrl: 'https://example.com/ads/briefing_native.png',
    targetUrl: 'https://example.com/subscribe',
  ),
  const LocalBannerAd(
    id: localAd6,
    imageUrl: 'https://example.com/ads/banner_ad_2.png',
    targetUrl: 'https://example.com/offer2',
  ),
];
