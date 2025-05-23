import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/core/content_type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_item_action.g.dart';

/// {@template feed_item_action}
/// Defines the action to be performed when a [FeedItem] is interacted with.
///
/// This is a sealed class, meaning all its direct subclasses are known
/// and defined within this library. This allows for exhaustive pattern
/// matching in the UI layer.
/// {@endtemplate}
@immutable
@JsonSerializable(
  createFactory: false,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
sealed class FeedItemAction extends Equatable {
  /// {@macro feed_item_action}
  const FeedItemAction({required this.type});

  /// A string representation of the action type.
  // This 'type' field is crucial for deserialization and Equatable.
  @JsonKey(name: 'type', required: true)
  final String type;

  /// Converts this [FeedItemAction] instance to a JSON map.
  Map<String, dynamic> toJson();

  @override
  List<Object?> get props => [type];
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
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class OpenInternalContent extends FeedItemAction {
  /// {@macro open_internal_content}
  const OpenInternalContent({
    required this.contentId,
    required this.contentType,
  }) : super(type: 'open_internal_content');

  /// Factory method to create an [OpenInternalContent] instance from a JSON map.
  factory OpenInternalContent.fromJson(Map<String, dynamic> json) =>
      _$OpenInternalContentFromJson(json);

  /// The unique identifier of the internal content to open.
  final String contentId;

  /// The type of the internal content (e.g., headline, category, source).
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final ContentType contentType;

  @override
  Map<String, dynamic> toJson() {
    final json = _$OpenInternalContentToJson(this);
    json['type'] =
        type; // Ensure type is included, though super.type should exist
    return json;
  }

  @override
  List<Object?> get props => [...super.props, contentId, contentType];
}

/// {@template show_interstitial_then_open_internal_content}
/// An action to show an interstitial advertisement, then open internal content.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class ShowInterstitialThenOpenInternalContent extends FeedItemAction {
  /// {@macro show_interstitial_then_open_internal_content}
  const ShowInterstitialThenOpenInternalContent({
    required this.contentId,
    required this.contentType,
  }) : super(type: 'show_interstitial_then_open_internal_content');

  /// Factory method to create a [ShowInterstitialThenOpenInternalContent]
  /// instance from a JSON map.
  factory ShowInterstitialThenOpenInternalContent.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ShowInterstitialThenOpenInternalContentFromJson(json);

  /// The unique identifier of the internal content to open after the interstitial.
  final String contentId;

  /// The type of the internal content (e.g., headline, category, source).
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final ContentType contentType;

  @override
  Map<String, dynamic> toJson() {
    final json = _$ShowInterstitialThenOpenInternalContentToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [...super.props, contentId, contentType];
}

/// {@template open_external_url}
/// An action to open an external URL, typically in a web browser.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class OpenExternalUrl extends FeedItemAction {
  /// {@macro open_external_url}
  const OpenExternalUrl({required this.url}) : super(type: 'open_external_url');

  /// Factory method to create an [OpenExternalUrl] instance from a JSON map.
  factory OpenExternalUrl.fromJson(Map<String, dynamic> json) =>
      _$OpenExternalUrlFromJson(json);

  /// The URL to open.
  final String url;

  @override
  Map<String, dynamic> toJson() {
    final json = _$OpenExternalUrlToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [...super.props, url];
}
