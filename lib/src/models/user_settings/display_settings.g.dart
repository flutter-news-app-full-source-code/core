// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisplaySettings _$DisplaySettingsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DisplaySettings', json, ($checkedConvert) {
      final val = DisplaySettings(
        baseTheme: $checkedConvert(
          'baseTheme',
          (v) => $enumDecode(_$AppBaseThemeEnumMap, v),
        ),
        accentTheme: $checkedConvert(
          'accentTheme',
          (v) => $enumDecode(_$AppAccentThemeEnumMap, v),
        ),
        fontFamily: $checkedConvert('fontFamily', (v) => v as String),
        textScaleFactor: $checkedConvert(
          'textScaleFactor',
          (v) => $enumDecode(_$AppTextScaleFactorEnumMap, v),
        ),
        fontWeight: $checkedConvert(
          'fontWeight',
          (v) => $enumDecode(_$AppFontWeightEnumMap, v),
        ),
      );
      return val;
    });

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
