// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisplaySettings _$DisplaySettingsFromJson(Map<String, dynamic> json) =>
    DisplaySettings(
      baseTheme:
          $enumDecodeNullable(_$AppBaseThemeEnumMap, json['baseTheme']) ??
          AppBaseTheme.system,
      accentTheme:
          $enumDecodeNullable(_$AppAccentThemeEnumMap, json['accentTheme']) ??
          AppAccentTheme.defaultBlue,
      fontFamily: json['fontFamily'] as String? ?? 'SystemDefault',
      textScaleFactor:
          $enumDecodeNullable(
            _$AppTextScaleFactorEnumMap,
            json['textScaleFactor'],
          ) ??
          AppTextScaleFactor.medium,
      fontWeight:
          $enumDecodeNullable(_$AppFontWeightEnumMap, json['fontWeight']) ??
          AppFontWeight.regular,
    );

Map<String, dynamic> _$DisplaySettingsToJson(DisplaySettings instance) =>
    <String, dynamic>{
      'baseTheme': _$AppBaseThemeEnumMap[instance.baseTheme]!,
      'accentTheme': _$AppAccentThemeEnumMap[instance.accentTheme]!,
      'fontFamily': instance.fontFamily,
      'textScaleFactor': _$AppTextScaleFactorEnumMap[instance.textScaleFactor]!,
      'fontWeight': _$AppFontWeightEnumMap[instance.fontWeight]!,
    };

const _$AppBaseThemeEnumMap = {
  AppBaseTheme.light: 'light',
  AppBaseTheme.dark: 'dark',
  AppBaseTheme.system: 'system',
};

const _$AppAccentThemeEnumMap = {
  AppAccentTheme.defaultBlue: 'defaultBlue',
  AppAccentTheme.newsRed: 'newsRed',
  AppAccentTheme.graphiteGray: 'graphiteGray',
};

const _$AppTextScaleFactorEnumMap = {
  AppTextScaleFactor.small: 'small',
  AppTextScaleFactor.medium: 'medium',
  AppTextScaleFactor.large: 'large',
  AppTextScaleFactor.extraLarge: 'extraLarge',
};

const _$AppFontWeightEnumMap = {
  AppFontWeight.light: 'light',
  AppFontWeight.regular: 'regular',
  AppFontWeight.bold: 'bold',
};
