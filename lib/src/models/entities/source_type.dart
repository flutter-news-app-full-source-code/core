import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum SourceType {
  /// A global news agency
  /// (e.g., Reuters, Associated Press, Agence France-Presse).
  @JsonValue('newsAgency')
  newsAgency,

  /// A news outlet focused on a specific local area
  /// (e.g., San Francisco Chronicle, Manchester Evening News).
  @JsonValue('localNewsOutlet')
  localNewsOutlet,

  /// A news outlet focused on a specific country
  /// (e.g., BBC News (UK), The New York Times (US)).
  @JsonValue('nationalNewsOutlet')
  nationalNewsOutlet,

  /// A news outlet with a broad international focus
  /// (e.g., Al Jazeera English, CNN International).
  @JsonValue('internationalNewsOutlet')
  internationalNewsOutlet,

  /// A publisher focused on a specific topic
  /// (e.g., TechCrunch (technology), ESPN (sports), Nature (science)).
  @JsonValue('specializedPublisher')
  specializedPublisher,

  /// A blog or personal publication
  /// (e.g., Stratechery by Ben Thompson).
  @JsonValue('blog')
  blog,

  /// An official government source
  /// (e.g., WhiteHouse.gov, gov.uk).
  @JsonValue('governmentSource')
  governmentSource,

  /// A service that aggregates news from other sources
  /// (e.g., Google News, Apple News).
  @JsonValue('aggregator')
  aggregator,

  /// Any other type of source not covered above
  /// (e.g., academic journals, company press releases).
  @JsonValue('other')
  other,
}
