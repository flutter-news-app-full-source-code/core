/// Deserializes a JSON string into a [DateTime] object.
///
/// Returns `null` if the input string is null or cannot be parsed.
DateTime dateTimeFromJson(String dateString) {
  return DateTime.parse(dateString);
}

/// Serializes a [DateTime] object into an ISO 8601 string.
String dateTimeToJson(DateTime dateTime) {
  return dateTime.toIso8601String();
}
