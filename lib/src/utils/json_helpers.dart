/// Deserializes a JSON string into a [DateTime] object.
///
/// Throws an [ArgumentError] if the input string is null or empty.
DateTime dateTimeFromJson(String? dateString) {
  if (dateString == null || dateString.isEmpty) {
    throw ArgumentError('Date string cannot be null or empty.');
  }
  return DateTime.parse(dateString);
}

/// Serializes a [DateTime] object into an ISO 8601 string.
String dateTimeToJson(DateTime dateTime) {
  return dateTime.toIso8601String();
}
