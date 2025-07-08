import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/entities/topic.dart';
import 'package:ht_shared/src/models/entities/country.dart';
import 'package:ht_shared/src/models/entities/headline.dart';
import 'package:ht_shared/src/models/entities/source.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart'; // Import meta for @immutable

part 'user_content_preferences.g.dart';

/// {@template user_content_preferences}
/// Represents a collection of user-specific content preferences,
/// including followed countries, sources, categories, and saved headlines.
///
/// This model encapsulates the user's explicit choices about the content
/// they are interested in, making it suitable for management via a
/// generic data client.
/// {@endtemplate}
@immutable // Add immutable annotation
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserContentPreferences extends Equatable {
  /// {@macro user_content_preferences}
  ///
  /// Creates a new instance of [UserContentPreferences].
  ///
  /// An [id] is required, typically the user's unique identifier.
  /// Provides sensible defaults for empty lists for followed/saved items
  /// if not specified.
  const UserContentPreferences({
    required this.id,
    required this.followedCountries,
    required this.followedSources,
    required this.followedTopics,
    required this.savedHeadlines,
  });

  /// Factory method to create a [UserContentPreferences] instance from a JSON map.
  factory UserContentPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserContentPreferencesFromJson(json);

  /// The unique identifier for the user preferences, typically the user's ID.
  final String id;

  /// List of countries the user is following.
  final List<Country> followedCountries;

  /// List of sources the user is following.
  final List<Source> followedSources;

  /// List of topics the user is following.
  final List<Topic> followedTopics;

  /// List of headlines the user has saved.
  final List<Headline> savedHeadlines;

  /// Converts this [UserContentPreferences] instance to a JSON map.
  Map<String, dynamic> toJson() => _$UserContentPreferencesToJson(this);

  @override
  List<Object?> get props => [
    id,
    followedCountries,
    followedSources,
    followedTopics,
    savedHeadlines,
  ];

  @override
  bool get stringify => true; // Add stringify for better debugging output

  /// Creates a copy of this [UserContentPreferences] but with the given fields
  /// replaced with the new values.
  UserContentPreferences copyWith({
    String? id,
    List<Country>? followedCountries,
    List<Source>? followedSources,
    List<Topic>? followedTopics,
    List<Headline>? savedHeadlines,
  }) {
    return UserContentPreferences(
      id: id ?? this.id,
      followedCountries: followedCountries ?? this.followedCountries,
      followedSources: followedSources ?? this.followedSources,
      followedTopics: followedTopics ?? this.followedTopics,
      savedHeadlines: savedHeadlines ?? this.savedHeadlines,
    );
  }
}
