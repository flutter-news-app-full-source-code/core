import 'package:core/core.dart';
import 'package:core/src/enums/enums.dart';
import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/models/feed_decorators/local_ad.dart';
import 'package:core/src/models/feed_decorators/local_banner_ad.dart';
import 'package:core/src/models/feed_decorators/local_interstitial_ad.dart';
import 'package:core/src/models/feed_decorators/local_native_ad.dart';
import 'package:core/src/models/feed_decorators/local_video_ad.dart';

/// A list of predefined local ads for fixture data.
final localAdsFixturesData = <LocalAd>[
  const LocalNativeAd(
    id: 'localNativeAdId1', // Placeholder ID, user will fix
    title: 'Discover Our Premium Content',
    subtitle: 'Unlock exclusive articles and an ad-free experience.',
    imageUrl: 'https://example.com/ads/premium_native.png',
    targetUrl: 'https://example.com/premium',
  ),
  const LocalBannerAd(
    id: 'localBannerAdId1', // Placeholder ID, user will fix
    imageUrl: 'https://example.com/ads/banner_ad_1.png',
    targetUrl: 'https://example.com/offer1',
  ),
  const LocalInterstitialAd(
    id: 'localInterstitialAdId1', // Placeholder ID, user will fix
    imageUrl: 'https://example.com/ads/interstitial_ad_1.png',
    targetUrl: 'https://example.com/special_offer',
  ),
  const LocalVideoAd(
    id: 'localVideoAdId1', // Placeholder ID, user will fix
    videoUrl: 'https://example.com/ads/promo_video.mp4',
    targetUrl: 'https://example.com/watch_more',
  ),
  const LocalNativeAd(
    id: 'localNativeAdId2', // Placeholder ID, user will fix
    title: 'Stay Informed with Daily Briefings',
    subtitle: 'Get the top news delivered straight to your inbox.',
    imageUrl: 'https://example.com/ads/briefing_native.png',
    targetUrl: 'https://example.com/subscribe',
  ),
  const LocalBannerAd(
    id: 'localBannerAdId2', // Placeholder ID, user will fix
    imageUrl: 'https://example.com/ads/banner_ad_2.png',
    targetUrl: 'https://example.com/offer2',
  ),
];
