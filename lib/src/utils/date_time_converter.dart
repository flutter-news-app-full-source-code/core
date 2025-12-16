import 'package:json_annotation/json_annotation.dart';

/// A [JsonConverter] for non-nullable [DateTime] objects, converting them
/// to and from ISO 8601 strings.
class DateTimeConverter implements JsonConverter<DateTime, String> {
  /// Creates a new [DateTimeConverter].
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
