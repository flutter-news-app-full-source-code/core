import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/content_type.dart';
import 'package:ht_shared/src/utils/json_converters.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

/// {@template feed_item_action}
/// Defines the action to be performed when a feed item is interacted with.
///
/// This is a sealed class, meaning all its direct subclasses are known
/// and defined within the same library. This allows for exhaustive
/// `switch` statements when handling different action types.
/// {@endtemplate}
@immutable
sealed class FeedItemAction extends Equatable {
  /// {@macro feed_item_action}
  const FeedItemAction({required this.type});

  /// Factory method to create a [FeedItemAction] from a JSON map.
  ///
  /// This method inspects the 'type' field in the JSON to determine
  /// which concrete subclass to deserialize into.
  factory FeedItemAction.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    switch (type) {
      case 'open_internal_content':
        return OpenInternalContent.fromJson(json);
      case 'show_interstitial_then_open_internal_content':
        return ShowInterstitialThenOpenInternalContent.fromJson(json);
      case 'open_external_url':
        return OpenExternalUrl.fromJson(json);
      default:
        throw FormatException('Unknown FeedItemAction type: $type');
    }
  }

  /// The type of the action.
  final String type;

  /// Converts this [FeedItemAction] instance to a JSON map.
  Map<String, dynamic> toJson();

  @override
  List<Object> get props => [type];
}

/// {@template open_internal_content}
/// Action to open internal application content.
/// {@endtemplate}
@immutable
class OpenInternalContent extends FeedItemAction {
  /// {@macro open_internal_content}
  OpenInternalContent({
    required this.contentType,
    required this.contentId,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'open_internal_content');

  /// Factory method to create an [OpenInternalContent] from a JSON map.
  factory OpenInternalContent.fromJson(Map<String, dynamic> json) {
    return OpenInternalContent(
      id: json['id'] as String?,
      contentType: contentTypeFromJson(json['contentType'] as String),
      contentId: json['contentId'] as String,
    );
  }

  /// Unique identifier for this action instance.
  final String id;

  /// The type of content to open (e.g., 'headline', 'category').
  final ContentType contentType;

  /// The unique ID of the content to open.
  final String contentId;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'contentType': contentTypeToJson(contentType),
      'contentId': contentId,
    };
  }

  @override
  List<Object> get props => [id, contentType, contentId, type];
}

/// {@template show_interstitial_then_open_internal_content}
/// Action to show an interstitial ad, then open internal application content.
/// {@endtemplate}
@immutable
class ShowInterstitialThenOpenInternalContent extends FeedItemAction {
  /// {@macro show_interstitial_then_open_internal_content}
  ShowInterstitialThenOpenInternalContent({
    required this.contentType,
    required this.contentId,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'show_interstitial_then_open_internal_content');

  /// Factory method to create a [ShowInterstitialThenOpenInternalContent]
  /// from a JSON map.
  factory ShowInterstitialThenOpenInternalContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ShowInterstitialThenOpenInternalContent(
      id: json['id'] as String?,
      contentType: contentTypeFromJson(json['contentType'] as String),
      contentId: json['contentId'] as String,
    );
  }

  /// Unique identifier for this action instance.
  final String id;

  /// The type of content to open (e.g., 'headline', 'category').
  final ContentType contentType;

  /// The unique ID of the content to open.
  final String contentId;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'contentType': contentTypeToJson(contentType),
      'contentId': contentId,
    };
  }

  @override
  List<Object> get props => [id, contentType, contentId, type];
}

/// {@template open_external_url}
/// Action to open an external URL.
/// {@endtemplate}
@immutable
class OpenExternalUrl extends FeedItemAction {
  /// {@macro open_external_url}
  OpenExternalUrl({
    required this.url,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'open_external_url');

  /// Factory method to create an [OpenExternalUrl] from a JSON map.
  factory OpenExternalUrl.fromJson(Map<String, dynamic> json) {
    return OpenExternalUrl(
      id: json['id'] as String?,
      url: json['url'] as String,
    );
  }

  /// Unique identifier for this action instance.
  final String id;

  /// The URL to open.
  final String url;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'type': type,
      'url': url,
    };
  }

  @override
  List<Object> get props => [id, url, type];
}
