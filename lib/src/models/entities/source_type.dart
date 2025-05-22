import 'package:json_annotation/json_annotation.dart';

/// Enum representing the type of news source.
@JsonEnum(fieldRename: FieldRename.kebab)
enum SourceType {
  /// A global news agency
  /// (e.g., Reuters, Associated Press, Agence France-Presse).
  newsAgency,

  /// A news outlet focused on a specific local area
  /// (e.g., San Francisco Chronicle, Manchester Evening News).
  localNewsOutlet,

  /// A news outlet focused on a specific country
  /// (e.g., BBC News (UK), The New York Times (US)).
  nationalNewsOutlet,

  /// A news outlet with a broad international focus
  /// (e.g., Al Jazeera English, CNN International).
  internationalNewsOutlet,

  /// A publisher focused on a specific topic
  /// (e.g., TechCrunch (technology), ESPN (sports), Nature (science)).
  specializedPublisher,

  /// A blog or personal publication
  /// (e.g., Stratechery by Ben Thompson).
  blog,

  /// An official government source
  /// (e.g., WhiteHouse.gov, gov.uk).
  governmentSource,

  /// A service that aggregates news from other sources
  /// (e.g., Google News, Apple News).
  aggregator,

  /// Any other type of source not covered above
  /// (e.g., academic journals, company press releases).
  other,
}
