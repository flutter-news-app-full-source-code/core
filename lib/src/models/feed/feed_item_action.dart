import 'package:ht_shared/ht_shared.dart' show FeedItem;
import 'package:ht_shared/src/models/content_type.dart';
import 'package:ht_shared/src/models/feed/feed.dart' show FeedItem;
import 'package:ht_shared/src/models/feed/feed_item.dart' show FeedItem;
import 'package:ht_shared/src/models/models.dart' show FeedItem;
import 'package:json_annotation/json_annotation.dart';

part 'feed_item_action.g.dart';

/// {@template feed_item_action}
/// Defines the action to be performed when a [FeedItem] is interacted with.
///
/// This is a sealed class, meaning all its direct subclasses are known
/// and defined within this library. This allows for exhaustive pattern
/// matching in the UI layer.
/// {@endtemplate}
@JsonSerializable(createFactory: false)
sealed class FeedItemAction {
  /// {@macro feed_item_action}
  const FeedItemAction();

  /// Converts this [FeedItemAction] instance to a JSON map.
  Map<String, dynamic> toJson();
}

/// Helper function to deserialize a JSON map into a [FeedItemAction] instance.
///
/// This function acts as a dispatcher, using the 'type' field within the JSON
/// to determine which concrete [FeedItemAction] subclass to instantiate.
///
/// Throws [FormatException] if the 'type' field is missing or unknown.
FeedItemAction feedItemActionFromJson(Map<String, dynamic> json) {
  final actionType = json['type'] as String?;
  if (actionType == null) {
    throw const FormatException('Missing "type" field in FeedItemAction JSON.');
  }
  switch (actionType) {
    case 'open_internal_content':
      return OpenInternalContent.fromJson(json);
    case 'show_interstitial_then_open_internal_content':
      return ShowInterstitialThenOpenInternalContent.fromJson(json);
    case 'open_external_url':
      return OpenExternalUrl.fromJson(json);
    default:
      throw FormatException('Unknown FeedItemAction type: $actionType');
  }
}

/// Helper function tDeefItem.type and Source.sourceTpe are nt symentically in conflicet, why updting itemAction] instance to a JSON map.
///
/// This simply calls the `toJson()` method on the concrete [FeedItemAction]
/// instance.
Map<String, dynamic> feedItemActionToJson(FeedItemAction action) {
  return action.toJson();
}

/// {@template open_internal_content}
/// An action to open content that resides within the application.
/// {@endtemplate}
@JsonSerializable()
class OpenInternalContent extends FeedItemAction {

  /// Factory method to create an [OpenInternalContent] instance from a JSON map.
  factory OpenInternalContent.fromJson(Map<String, dynamic> json) =>
      _$OpenInternalContentFromJson(json);
  /// {@macro open_internal_content}
  const OpenInternalContent({
    required this.contentId,
    required this.contentType,
  }) : type = 'open_internal_content';

  /// A string representation of the action type.
  @JsonKey(name: 'type', required: true)
  final String type;

  /// The unique identifier of the internal content to open.
  final String contentId;

  /// The type of the internal content (e.g., headline, category, source).
  final ContentType contentType;

  @override
  Map<String, dynamic> toJson() => _$OpenInternalContentToJson(this);
}

/// {@template show_interstitial_then_open_internal_content}
/// An action to show an interstitial advertisement, then open internal content.
/// {@endtemplate}
@JsonSerializable()
class ShowInterstitialThenOpenInternalContent extends FeedItemAction {

  /// Factory method to create a [ShowInterstitialThenOpenInternalContent]
  /// instance from a JSON map.
  factory ShowInterstitialThenOpenInternalContent.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ShowInterstitialThenOpenInternalContentFromJson(json);
  /// {@macro show_interstitial_then_open_internal_content}
  const ShowInterstitialThenOpenInternalContent({
    required this.contentId,
    required this.contentType,
  }) : type = 'show_interstitial_then_open_internal_content';

  /// A string representation of the action type.
  @JsonKey(name: 'type', required: true)
  final String type;

  /// The unique identifier of the internal content to open after the interstitial.
  final String contentId;

  /// The type of the internal content (e.g., headline, category, source).
  final ContentType contentType;

  @override
  Map<String, dynamic> toJson() =>
      _$ShowInterstitialThenOpenInternalContentToJson(this);
}

/// {@template open_external_url}
/// An action to open an external URL, typically in a web browser.
/// {@endtemplate}
@JsonSerializable()
class OpenExternalUrl extends FeedItemAction {

  /// Factory method to create an [OpenExternalUrl] instance from a JSON map.
  factory OpenExternalUrl.fromJson(Map<String, dynamic> json) =>
      _$OpenExternalUrlFromJson(json);
  /// {@macro open_external_url}
  const OpenExternalUrl({required this.url}) : type = 'open_external_url';

  /// A string representation of the action type.
  @JsonKey(name: 'type', required: true)
  final String type;

  /// The URL to open.
  final String url;

  @override
  Map<String, dynamic> toJson() => _$OpenExternalUrlToJson(this);
}
