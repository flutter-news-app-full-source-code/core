import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/user_settings/user_settings.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'display_settings.g.dart';

/// {@template display_settings}
/// Represents a collection of user-configurable settings related to the
/// application's visual appearance and display characteristics.
///
/// This model groups settings like theme mode, accent colors, font choices,
/// text scaling, and font weight, allowing them to be managed and persisted
/// together.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class DisplaySettings extends Equatable {
  /// {@macro display_settings}
  ///
  /// Creates a new instance of [DisplaySettings].
  ///
  /// Provides sensible defaults for each setting if not specified:
  /// - `baseTheme`: [AppBaseTheme.system]
  /// - `accentTheme`: [AppAccentTheme.defaultBlue]
  /// - `fontFamily`: 'SystemDefault' (indicating usage of the platform's
  ///   default font)
  /// - `textScaleFactor`: [AppTextScaleFactor.medium]
  /// - `fontWeight`: [AppFontWeight.regular]
  const DisplaySettings({
    this.baseTheme = AppBaseTheme.system, // Default value
    this.accentTheme = AppAccentTheme.defaultBlue, // Default value
    this.fontFamily = 'SystemDefault', // Default value
    this.textScaleFactor = AppTextScaleFactor.medium, // Default value
    this.fontWeight = AppFontWeight.regular, // Default value
  });

  /// Creates a [DisplaySettings] instance from a JSON map.
  factory DisplaySettings.fromJson(Map<String, dynamic> json) =>
      _$DisplaySettingsFromJson(json);

  /// The base theme mode (light, dark, or system default).

  final AppBaseTheme baseTheme;

  /// The selected predefined accent color theme.

  final AppAccentTheme accentTheme;

  /// The name or identifier of the selected font family.
  /// 'SystemDefault' is used as a convention to indicate the platform's
  /// default font should be used. Other values would correspond to specific
  /// font families bundled with or available to the application.
  final String fontFamily;

  /// The preferred text size scaling factor.

  final AppTextScaleFactor textScaleFactor;

  /// The preferred font weight.

  final AppFontWeight fontWeight;

  /// Creates a copy of this [DisplaySettings] but with the given fields
  /// replaced with the new values.
  DisplaySettings copyWith({
    AppBaseTheme? baseTheme,
    AppAccentTheme? accentTheme,
    String? fontFamily,
    AppTextScaleFactor? textScaleFactor,
    AppFontWeight? fontWeight,
  }) {
    return DisplaySettings(
      baseTheme: baseTheme ?? this.baseTheme,
      accentTheme: accentTheme ?? this.accentTheme,
      fontFamily: fontFamily ?? this.fontFamily,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      fontWeight: fontWeight ?? this.fontWeight,
    );
  }

  @override
  List<Object?> get props => [
    baseTheme,
    accentTheme,
    fontFamily,
    textScaleFactor,
    fontWeight,
  ];

  /// Converts this [DisplaySettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$DisplaySettingsToJson(this);
}
