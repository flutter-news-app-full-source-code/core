import 'package:ht_shared/ht_shared.dart';
import 'package:ht_shared/src/models/content_type.dart';
import 'package:ht_shared/src/models/feed/ad_placement.dart';
import 'package:ht_shared/src/models/feed/engagement_content_type.dart';
import 'package:ht_shared/src/models/feed/suggested_content_display_type.dart';
import 'package:ht_shared/src/models/user-settings/app_accent_theme.dart';
import 'package:ht_shared/src/models/user-settings/app_base_theme.dart';
import 'package:ht_shared/src/models/user-settings/app_font_weight.dart';
import 'package:ht_shared/src/models/user-settings/app_text_scale_factor.dart';

/// Converts a snake_case string to a [ContentType] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [ContentType] value.
ContentType contentTypeFromJson(String json) {
  switch (json) {
    case 'headline':
      return ContentType.headline;
    case 'category':
      return ContentType.category;
    case 'source':
      return ContentType.source;
    case 'country':
      return ContentType.country;
    default:
      throw FormatException('Unknown ContentType: $json');
  }
}

/// Converts a [ContentType] enum value to its snake_case string representation.
String contentTypeToJson(ContentType type) {
  switch (type) {
    case ContentType.headline:
      return 'headline';
    case ContentType.category:
      return 'category';
    case ContentType.source:
      return 'source';
    case ContentType.country:
      return 'country';
  }
}

/// Converts a snake_case string to a [UserRole] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [UserRole] value.
UserRole userRoleFromJson(String json) {
  switch (json) {
    case 'admin':
      return UserRole.admin;
    case 'standard_user':
      return UserRole.standardUser;
    case 'guest_user':
      return UserRole.guestUser;
    default:
      throw FormatException('Unknown UserRole: $json');
  }
}

/// Converts a [UserRole] enum value to its snake_case string representation.
String userRoleToJson(UserRole role) {
  switch (role) {
    case UserRole.admin:
      return 'admin';
    case UserRole.standardUser:
      return 'standard_user';
    case UserRole.guestUser:
      return 'guest_user';
  }
}

/// Converts a kebab-case string to a [SourceType] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [SourceType] value.
SourceType sourceTypeFromJson(String json) {
  switch (json) {
    case 'news-agency':
      return SourceType.newsAgency;
    case 'local-news-outlet':
      return SourceType.localNewsOutlet;
    case 'national-news-outlet':
      return SourceType.nationalNewsOutlet;
    case 'international-news-outlet':
      return SourceType.internationalNewsOutlet;
    case 'specialized-publisher':
      return SourceType.specializedPublisher;
    case 'blog':
      return SourceType.blog;
    case 'government-source':
      return SourceType.governmentSource;
    case 'aggregator':
      return SourceType.aggregator;
    case 'other':
      return SourceType.other;
    default:
      throw FormatException('Unknown SourceType: $json');
  }
}

/// Converts a [SourceType] enum value to its kebab-case string representation.
String sourceTypeToJson(SourceType type) {
  switch (type) {
    case SourceType.newsAgency:
      return 'news-agency';
    case SourceType.localNewsOutlet:
      return 'local-news-outlet';
    case SourceType.nationalNewsOutlet:
      return 'national-news-outlet';
    case SourceType.internationalNewsOutlet:
      return 'international-news-outlet';
    case SourceType.specializedPublisher:
      return 'specialized-publisher';
    case SourceType.blog:
      return 'blog';
    case SourceType.governmentSource:
      return 'government-source';
    case SourceType.aggregator:
      return 'aggregator';
    case SourceType.other:
      return 'other';
  }
}

/// Converts a snake_case string to an [AdPlacement] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [AdPlacement] value.
AdPlacement adPlacementFromJson(String json) {
  switch (json) {
    case 'feed_inline_standard_banner':
      return AdPlacement.feedInlineStandardBanner;
    case 'feed_inline_native_banner':
      return AdPlacement.feedInlineNativeBanner;
    default:
      throw FormatException('Unknown AdPlacement: $json');
  }
}

/// Converts an [AdPlacement] enum value to its snake_case string representation.
String adPlacementToJson(AdPlacement placement) {
  switch (placement) {
    case AdPlacement.feedInlineStandardBanner:
      return 'feed_inline_standard_banner';
    case AdPlacement.feedInlineNativeBanner:
      return 'feed_inline_native_banner';
  }
}

/// Converts a snake_case string to an [EngagementContentType] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [EngagementContentType] value.
EngagementContentType engagementContentTypeFromJson(String json) {
  switch (json) {
    case 'sign_up':
      return EngagementContentType.signUp;
    case 'upgrade':
      return EngagementContentType.upgrade;
    case 'feedback':
      return EngagementContentType.feedback;
    case 'survey':
      return EngagementContentType.survey;
    case 'rate_app':
      return EngagementContentType.rateApp;
    case 'share_app':
      return EngagementContentType.shareApp;
    case 'custom':
      return EngagementContentType.custom;
    default:
      throw FormatException('Unknown EngagementContentType: $json');
  }
}

/// Converts an [EngagementContentType] enum value to its snake_case string
/// representation.
String engagementContentTypeToJson(EngagementContentType type) {
  switch (type) {
    case EngagementContentType.signUp:
      return 'sign_up';
    case EngagementContentType.upgrade:
      return 'upgrade';
    case EngagementContentType.feedback:
      return 'feedback';
    case EngagementContentType.survey:
      return 'survey';
    case EngagementContentType.rateApp:
      return 'rate_app';
    case EngagementContentType.shareApp:
      return 'share_app';
    case EngagementContentType.custom:
      return 'custom';
  }
}

/// Converts a snake_case string to a [SuggestedContentDisplayType] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [SuggestedContentDisplayType] value.
SuggestedContentDisplayType suggestedContentDisplayTypeFromJson(String json) {
  switch (json) {
    case 'horizontal_card_list':
      return SuggestedContentDisplayType.horizontalCardList;
    case 'vertical_card_list':
      return SuggestedContentDisplayType.verticalCardList;
    case 'grid':
      return SuggestedContentDisplayType.grid;
    case 'single_promotional_card':
      return SuggestedContentDisplayType.singlePromotionalCard;
    case 'text_list':
      return SuggestedContentDisplayType.textList;
    default:
      throw FormatException('Unknown SuggestedContentDisplayType: $json');
  }
}

/// Converts a [SuggestedContentDisplayType] enum value to its snake_case string
/// representation.
String suggestedContentDisplayTypeToJson(SuggestedContentDisplayType type) {
  switch (type) {
    case SuggestedContentDisplayType.horizontalCardList:
      return 'horizontal_card_list';
    case SuggestedContentDisplayType.verticalCardList:
      return 'vertical_card_list';
    case SuggestedContentDisplayType.grid:
      return 'grid';
    case SuggestedContentDisplayType.singlePromotionalCard:
      return 'single_promotional_card';
    case SuggestedContentDisplayType.textList:
      return 'text_list';
  }
}

/// Converts a string to an [AppAccentTheme] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [AppAccentTheme] value.
AppAccentTheme appAccentThemeFromJson(String json) {
  switch (json) {
    case 'defaultBlue':
      return AppAccentTheme.defaultBlue;
    case 'newsRed':
      return AppAccentTheme.newsRed;
    case 'graphiteGray':
      return AppAccentTheme.graphiteGray;
    default:
      throw FormatException('Unknown AppAccentTheme: $json');
  }
}

/// Converts an [AppAccentTheme] enum value to its string representation.
String appAccentThemeToJson(AppAccentTheme theme) {
  switch (theme) {
    case AppAccentTheme.defaultBlue:
      return 'defaultBlue';
    case AppAccentTheme.newsRed:
      return 'newsRed';
    case AppAccentTheme.graphiteGray:
      return 'graphiteGray';
  }
}

/// Converts a string to an [AppBaseTheme] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [AppBaseTheme] value.
AppBaseTheme appBaseThemeFromJson(String json) {
  switch (json) {
    case 'light':
      return AppBaseTheme.light;
    case 'dark':
      return AppBaseTheme.dark;
    case 'system':
      return AppBaseTheme.system;
    default:
      throw FormatException('Unknown AppBaseTheme: $json');
  }
}

/// Converts an [AppBaseTheme] enum value to its string representation.
String appBaseThemeToJson(AppBaseTheme theme) {
  switch (theme) {
    case AppBaseTheme.light:
      return 'light';
    case AppBaseTheme.dark:
      return 'dark';
    case AppBaseTheme.system:
      return 'system';
  }
}

/// Converts a string to an [AppFontWeight] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [AppFontWeight] value.
AppFontWeight appFontWeightFromJson(String json) {
  switch (json) {
    case 'light':
      return AppFontWeight.light;
    case 'regular':
      return AppFontWeight.regular;
    case 'bold':
      return AppFontWeight.bold;
    default:
      throw FormatException('Unknown AppFontWeight: $json');
  }
}

/// Converts an [AppFontWeight] enum value to its string representation.
String appFontWeightToJson(AppFontWeight weight) {
  switch (weight) {
    case AppFontWeight.light:
      return 'light';
    case AppFontWeight.regular:
      return 'regular';
    case AppFontWeight.bold:
      return 'bold';
  }
}

/// Converts a string to an [AppTextScaleFactor] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [AppTextScaleFactor] value.
AppTextScaleFactor appTextScaleFactorFromJson(String json) {
  switch (json) {
    case 'small':
      return AppTextScaleFactor.small;
    case 'medium':
      return AppTextScaleFactor.medium;
    case 'large':
      return AppTextScaleFactor.large;
    case 'extraLarge':
      return AppTextScaleFactor.extraLarge;
    default:
      throw FormatException('Unknown AppTextScaleFactor: $json');
  }
}

/// Converts an [AppTextScaleFactor] enum value to its string representation.
String appTextScaleFactorToJson(AppTextScaleFactor factor) {
  switch (factor) {
    case AppTextScaleFactor.small:
      return 'small';
    case AppTextScaleFactor.medium:
      return 'medium';
    case AppTextScaleFactor.large:
      return 'large';
    case AppTextScaleFactor.extraLarge:
      return 'extraLarge';
  }
}

/// Converts a snake_case string to an [AdType] enum value.
///
/// Throws a [FormatException] if the string does not match any
/// [AdType] value.
AdType adTypeFromJson(String json) {
  switch (json) {
    case 'banner':
      return AdType.banner;
    case 'native':
      return AdType.native;
    case 'video':
      return AdType.video;
    case 'interstitial':
      return AdType.interstitial;
    default:
      throw FormatException('Unknown AdType: $json');
  }
}

/// Converts an [AdType] enum value to its snake_case string representation.
String adTypeToJson(AdType type) {
  switch (type) {
    case AdType.banner:
      return 'banner';
    case AdType.native:
      return 'native';
    case AdType.video:
      return 'video';
    case AdType.interstitial:
      return 'interstitial';
  }
}
