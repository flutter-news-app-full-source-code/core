/// Deserializes a JSON string into a [DateTime] object.
///
/// Returns `null` if the input string is null or cannot be parsed.
DateTime? dateTimeFromJson(String? dateString) {
  if (dateString == null) return null;
  return DateTime.tryParse(dateString);
}

/// Serializes a [DateTime] object into an ISO 8601 string.
///
/// Returns `null` if the input [DateTime] is null.
String? dateTimeToJson(DateTime? dateTime) {
  return dateTime?.toIso8601String();
}
