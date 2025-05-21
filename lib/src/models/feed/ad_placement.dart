import 'package:json_annotation/json_annotation.dart';

/// {@template ad_placement}
/// Defines specific, known locations or contexts where an ad might appear.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.snake)
enum AdPlacement {
  /// A standard banner ad placed inline within the main feed.
  feedInlineStandardBanner,

  /// A native ad designed to blend with content, placed inline within the main
  /// feed.
  feedInlineNativeBanner,
}
