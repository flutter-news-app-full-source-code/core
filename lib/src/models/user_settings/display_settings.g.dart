// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisplaySettings _$DisplaySettingsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DisplaySettings',
      json,
      ($checkedConvert) {
        final val = DisplaySettings(
          baseTheme: $checkedConvert(
            'base_theme',
            (v) =>
                $enumDecodeNullable(_$AppBaseThemeEnumMap, v) ??
                AppBaseTheme.system,
          ),
          accentTheme: $checkedConvert(
            'accent_theme',
            (v) =>
                $enumDecodeNullable(_$AppAccentThemeEnumMap, v) ??
                AppAccentTheme.defaultBlue,
          ),
          fontFamily: $checkedConvert(
            'font_family',
            (v) => v as String? ?? 'SystemDefault',
          ),
          textScaleFactor: $checkedConvert(
            'text_scale_factor',
            (v) =>
                $enumDecodeNullable(_$AppTextScaleFactorEnumMap, v) ??
                AppTextScaleFactor.medium,
          ),
          fontWeight: $checkedConvert(
            'font_weight',
            (v) =>
                $enumDecodeNullable(_$AppFontWeightEnumMap, v) ??
                AppFontWeight.regular,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'baseTheme': 'base_theme',
        'accentTheme': 'accent_theme',
        'fontFamily': 'font_family',
        'textScaleFactor': 'text_scale_factor',
        'fontWeight': 'font_weight',
      },
    );

Map<String, dynamic> _$DisplaySettingsToJson(
  DisplaySettings instance,
) => <String, dynamic>{
  'base_theme': _$AppBaseThemeEnumMap[instance.baseTheme]!,
  'accent_theme': _$AppAccentThemeEnumMap[instance.accentTheme]!,
  'font_family': instance.fontFamily,
  'text_scale_factor': _$AppTextScaleFactorEnumMap[instance.textScaleFactor]!,
  'font_weight': _$AppFontWeightEnumMap[instance.fontWeight]!,
};

const _$AppBaseThemeEnumMap = {
  AppBaseTheme.light: 'light',
  AppBaseTheme.dark: 'dark',
  AppBaseTheme.system: 'system',
};

const _$AppAccentThemeEnumMap = {
  AppAccentTheme.defaultBlue: 'default_blue',
  AppAccentTheme.newsRed: 'news_red',
  AppAccentTheme.graphiteGray: 'graphite_gray',
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
