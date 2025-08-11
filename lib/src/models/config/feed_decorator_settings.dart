import 'package:core/src/enums/app_user_role.dart';
import 'package:core/src/enums/feed_decorator_category.dart';
import 'package:core/src/models/config/role_specific_settings.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feed_decorator_settings.g.dart';

/// {@template feed_decorator_settings}
/// An abstract base class for feed decorator settings.
///
/// This class provides a common structure for all decorator configurations
/// and includes a factory constructor for polymorphic deserialization.
/// {@endtemplate}
@immutable
@JsonSerializable(
  explicitToJson: true,
  includeIfNull: true,
  checked: true,
  createFactory: false,
)
abstract class FeedDecoratorSettings extends Equatable {
  /// {@macro feed_decorator_settings}
  const FeedDecoratorSettings({
    required this.category,
    required this.enabled,
    required this.defaultDaysBetweenViews,
    required this.roleOverrides,
  });

  /// Factory constructor for creating a new [FeedDecoratorSettings] instance
  /// from a map.
  ///
  /// This factory uses the `category` field to determine which concrete
  /// subclass to instantiate.
  factory FeedDecoratorSettings.fromJson(Map<String, dynamic> json) {
    final category = $enumDecode(
      _$FeedDecoratorCategoryEnumMap,
      json['category'],
    );
    switch (category) {
      case FeedDecoratorCategory.callToAction:
        return CallToActionSettings.fromJson(json);
      case FeedDecoratorCategory.contentCollection:
        return ContentCollectionSettings.fromJson(json);
    }
  }

  /// The category of the decorator.
  final FeedDecoratorCategory category;

  /// Whether this decorator is enabled and should be considered for injection.
  final bool enabled;

  /// The default number of days that must pass before this decorator can be
  /// shown again to any user role.
  final int defaultDaysBetweenViews;

  /// A map of role-specific overrides for decorator settings.
  ///
  /// The key is the [AppUserRole] and the value contains the settings that
  /// override the defaults for that role.
  final Map<AppUserRole, RoleSpecificSettings> roleOverrides;

  /// Converts this [FeedDecoratorSettings] instance to a JSON map.
  ///
  /// This method acts as a dispatcher, calling the correct `toJson` method
  /// on the concrete subclass.
  Map<String, dynamic> toJson() {
    switch (category) {
      case FeedDecoratorCategory.callToAction:
        return (this as CallToActionSettings).toJson();
      case FeedDecoratorCategory.contentCollection:
        return (this as ContentCollectionSettings).toJson();
    }
  }

  @override
  List<Object> get props => [
    category,
    enabled,
    defaultDaysBetweenViews,
    roleOverrides,
  ];
}

/// {@template call_to_action_settings}
/// Configuration settings for a `callToAction` decorator.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class CallToActionSettings extends FeedDecoratorSettings {
  /// {@macro call_to_action_settings}
  const CallToActionSettings({
    required super.enabled,
    required super.defaultDaysBetweenViews,
    required super.roleOverrides,
  }) : super(category: FeedDecoratorCategory.callToAction);

  /// Creates a [CallToActionSettings] from JSON data.
  factory CallToActionSettings.fromJson(Map<String, dynamic> json) =>
      _$CallToActionSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final json = _$CallToActionSettingsToJson(this);
    json['category'] = _$FeedDecoratorCategoryEnumMap[category];
    return json;
  }

  /// Creates a copy of this [CallToActionSettings] but with the given fields
  /// replaced with the new values.
  CallToActionSettings copyWith({
    bool? enabled,
    int? defaultDaysBetweenViews,
    Map<AppUserRole, RoleSpecificSettings>? roleOverrides,
  }) {
    return CallToActionSettings(
      enabled: enabled ?? this.enabled,
      defaultDaysBetweenViews:
          defaultDaysBetweenViews ?? this.defaultDaysBetweenViews,
      roleOverrides: roleOverrides ?? this.roleOverrides,
    );
  }
}

/// {@template content_collection_settings}
/// Configuration settings for a `contentCollection` decorator.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class ContentCollectionSettings extends FeedDecoratorSettings {
  /// {@macro content_collection_settings}
  const ContentCollectionSettings({
    required super.enabled,
    required super.defaultDaysBetweenViews,
    required super.roleOverrides,
    required this.itemsToDisplay,
  }) : super(category: FeedDecoratorCategory.contentCollection);

  /// Creates a [ContentCollectionSettings] from JSON data.
  factory ContentCollectionSettings.fromJson(Map<String, dynamic> json) =>
      _$ContentCollectionSettingsFromJson(json);

  /// The number of items to display in the content collection (e.g., 5 topics).
  final int itemsToDisplay;

  @override
  Map<String, dynamic> toJson() {
    final json = _$ContentCollectionSettingsToJson(this);
    json['category'] = _$FeedDecoratorCategoryEnumMap[category];
    return json;
  }

  /// Creates a copy of this [ContentCollectionSettings] but with the given
  /// fields replaced with the new values.
  ContentCollectionSettings copyWith({
    bool? enabled,
    int? defaultDaysBetweenViews,
    Map<AppUserRole, RoleSpecificSettings>? roleOverrides,
    int? itemsToDisplay,
  }) {
    return ContentCollectionSettings(
      enabled: enabled ?? this.enabled,
      defaultDaysBetweenViews:
          defaultDaysBetweenViews ?? this.defaultDaysBetweenViews,
      roleOverrides: roleOverrides ?? this.roleOverrides,
      itemsToDisplay: itemsToDisplay ?? this.itemsToDisplay,
    );
  }

  @override
  List<Object> get props => [...super.props, itemsToDisplay];
}
