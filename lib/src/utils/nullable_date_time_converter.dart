import 'package:json_annotation/json_annotation.dart';

/// A [JsonConverter] for handling nullable [DateTime] objects.
///
/// This converter correctly serializes a `DateTime?` to an ISO 8601 string
/// or `null`, and deserializes it back, gracefully handling `null` values
/// in the JSON.
class NullableDateTimeConverter implements JsonConverter<DateTime?, String?> {
  /// Creates a new instance of [NullableDateTimeConverter].
  const NullableDateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DateTime.parse(json);
  }

  @override
  String? toJson(DateTime? object) {
    return object?.toIso8601String();
  }
}
