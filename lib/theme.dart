// ignore_for_file: public_member_api_docs Generated file

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
  final BuildContext context,
  final String bodyFontString,
  final String displayFontString,
) {
  final TextTheme baseTextTheme = Theme.of(context).textTheme;
  final TextTheme bodyTextTheme = GoogleFonts.getTextTheme(
    bodyFontString,
    baseTextTheme,
  );
  final TextTheme displayTextTheme = GoogleFonts.getTextTheme(
    displayFontString,
    baseTextTheme,
  );
  final TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}

class MaterialTheme {
  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static ColorScheme lightScheme() => const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff6b5e10),
    surfaceTint: Color(0xff6b5e10),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xfff5e389),
    onPrimaryContainer: Color(0xff514700),
    secondary: Color(0xff2c6a45),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffb0f1c3),
    onSecondaryContainer: Color(0xff0e512f),
    tertiary: Color(0xff8c4f26),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xffffdbc8),
    onTertiaryContainer: Color(0xff6f3811),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff93000a),
    surface: Color(0xfffff9ec),
    onSurface: Color(0xff1e1c13),
    onSurfaceVariant: Color(0xff4a4739),
    outline: Color(0xff7b7768),
    outlineVariant: Color(0xffccc6b5),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff333027),
    inversePrimary: Color(0xffd8c770),
    primaryFixed: Color(0xfff5e389),
    onPrimaryFixed: Color(0xff211c00),
    primaryFixedDim: Color(0xffd8c770),
    onPrimaryFixedVariant: Color(0xff514700),
    secondaryFixed: Color(0xffb0f1c3),
    onSecondaryFixed: Color(0xff00210f),
    secondaryFixedDim: Color(0xff94d5a8),
    onSecondaryFixedVariant: Color(0xff0e512f),
    tertiaryFixed: Color(0xffffdbc8),
    onTertiaryFixed: Color(0xff321200),
    tertiaryFixedDim: Color(0xffffb68b),
    onTertiaryFixedVariant: Color(0xff6f3811),
    surfaceDim: Color(0xffdfdacc),
    surfaceBright: Color(0xfffff9ec),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfff9f3e5),
    surfaceContainer: Color(0xfff3ede0),
    surfaceContainerHigh: Color(0xffeee8da),
    surfaceContainerHighest: Color(0xffe8e2d4),
  );

  ThemeData light() => theme(lightScheme());

  static ColorScheme lightMediumContrastScheme() => const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff3f3600),
    surfaceTint: Color(0xff6b5e10),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xff7a6d1f),
    onPrimaryContainer: Color(0xffffffff),
    secondary: Color(0xff003f22),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xff3b7953),
    onSecondaryContainer: Color(0xffffffff),
    tertiary: Color(0xff5a2802),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xff9d5d33),
    onTertiaryContainer: Color(0xffffffff),
    error: Color(0xff740006),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffcf2c27),
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xfffff9ec),
    onSurface: Color(0xff131109),
    onSurfaceVariant: Color(0xff39362a),
    outline: Color(0xff565244),
    outlineVariant: Color(0xff716d5e),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff333027),
    inversePrimary: Color(0xffd8c770),
    primaryFixed: Color(0xff7a6d1f),
    onPrimaryFixed: Color(0xffffffff),
    primaryFixedDim: Color(0xff615504),
    onPrimaryFixedVariant: Color(0xffffffff),
    secondaryFixed: Color(0xff3b7953),
    onSecondaryFixed: Color(0xffffffff),
    secondaryFixedDim: Color(0xff21603c),
    onSecondaryFixedVariant: Color(0xffffffff),
    tertiaryFixed: Color(0xff9d5d33),
    onTertiaryFixed: Color(0xffffffff),
    tertiaryFixedDim: Color(0xff80461e),
    onTertiaryFixedVariant: Color(0xffffffff),
    surfaceDim: Color(0xffcbc6b9),
    surfaceBright: Color(0xfffff9ec),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfff9f3e5),
    surfaceContainer: Color(0xffeee8da),
    surfaceContainerHigh: Color(0xffe2dccf),
    surfaceContainerHighest: Color(0xffd7d1c4),
  );

  ThemeData lightMediumContrast() => theme(lightMediumContrastScheme());

  static ColorScheme lightHighContrastScheme() => const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff332c00),
    surfaceTint: Color(0xff6b5e10),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xff544900),
    onPrimaryContainer: Color(0xffffffff),
    secondary: Color(0xff00341b),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xff125432),
    onSecondaryContainer: Color(0xffffffff),
    tertiary: Color(0xff4c1f00),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xff723a13),
    onTertiaryContainer: Color(0xffffffff),
    error: Color(0xff600004),
    onError: Color(0xffffffff),
    errorContainer: Color(0xff98000a),
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xfffff9ec),
    onSurface: Color(0xff000000),
    onSurfaceVariant: Color(0xff000000),
    outline: Color(0xff2f2c20),
    outlineVariant: Color(0xff4d493c),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff333027),
    inversePrimary: Color(0xffd8c770),
    primaryFixed: Color(0xff544900),
    onPrimaryFixed: Color(0xffffffff),
    primaryFixedDim: Color(0xff3b3300),
    onPrimaryFixedVariant: Color(0xffffffff),
    secondaryFixed: Color(0xff125432),
    onSecondaryFixed: Color(0xffffffff),
    secondaryFixedDim: Color(0xff003b1f),
    onSecondaryFixedVariant: Color(0xffffffff),
    tertiaryFixed: Color(0xff723a13),
    onTertiaryFixed: Color(0xffffffff),
    tertiaryFixedDim: Color(0xff562500),
    onTertiaryFixedVariant: Color(0xffffffff),
    surfaceDim: Color(0xffbdb8ac),
    surfaceBright: Color(0xfffff9ec),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfff6f0e2),
    surfaceContainer: Color(0xffe8e2d4),
    surfaceContainerHigh: Color(0xffdad4c7),
    surfaceContainerHighest: Color(0xffcbc6b9),
  );

  ThemeData lightHighContrast() => theme(lightHighContrastScheme());

  static ColorScheme darkScheme() => const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffd8c770),
    surfaceTint: Color(0xffd8c770),
    onPrimary: Color(0xff383000),
    primaryContainer: Color(0xff514700),
    onPrimaryContainer: Color(0xfff5e389),
    secondary: Color(0xff94d5a8),
    onSecondary: Color(0xff00391e),
    secondaryContainer: Color(0xff0e512f),
    onSecondaryContainer: Color(0xffb0f1c3),
    tertiary: Color(0xffffb68b),
    onTertiary: Color(0xff522300),
    tertiaryContainer: Color(0xff6f3811),
    onTertiaryContainer: Color(0xffffdbc8),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    surface: Color(0xff15130c),
    onSurface: Color(0xffe8e2d4),
    onSurfaceVariant: Color(0xffccc6b5),
    outline: Color(0xff969180),
    outlineVariant: Color(0xff4a4739),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe8e2d4),
    inversePrimary: Color(0xff6b5e10),
    primaryFixed: Color(0xfff5e389),
    onPrimaryFixed: Color(0xff211c00),
    primaryFixedDim: Color(0xffd8c770),
    onPrimaryFixedVariant: Color(0xff514700),
    secondaryFixed: Color(0xffb0f1c3),
    onSecondaryFixed: Color(0xff00210f),
    secondaryFixedDim: Color(0xff94d5a8),
    onSecondaryFixedVariant: Color(0xff0e512f),
    tertiaryFixed: Color(0xffffdbc8),
    onTertiaryFixed: Color(0xff321200),
    tertiaryFixedDim: Color(0xffffb68b),
    onTertiaryFixedVariant: Color(0xff6f3811),
    surfaceDim: Color(0xff15130c),
    surfaceBright: Color(0xff3c3930),
    surfaceContainerLowest: Color(0xff100e07),
    surfaceContainerLow: Color(0xff1e1c13),
    surfaceContainer: Color(0xff222017),
    surfaceContainerHigh: Color(0xff2c2a21),
    surfaceContainerHighest: Color(0xff37352b),
  );

  ThemeData dark() => theme(darkScheme());

  static ColorScheme darkMediumContrastScheme() => const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffefdd83),
    surfaceTint: Color(0xffd8c770),
    onPrimary: Color(0xff2c2600),
    primaryContainer: Color(0xffa09140),
    onPrimaryContainer: Color(0xff000000),
    secondary: Color(0xffaaebbd),
    onSecondary: Color(0xff002c16),
    secondaryContainer: Color(0xff609e75),
    onSecondaryContainer: Color(0xff000000),
    tertiary: Color(0xffffd3bc),
    onTertiary: Color(0xff421a00),
    tertiaryContainer: Color(0xffc78053),
    onTertiaryContainer: Color(0xff000000),
    error: Color(0xffffd2cc),
    onError: Color(0xff540003),
    errorContainer: Color(0xffff5449),
    onErrorContainer: Color(0xff000000),
    surface: Color(0xff15130c),
    onSurface: Color(0xffffffff),
    onSurfaceVariant: Color(0xffe3dcca),
    outline: Color(0xffb7b2a1),
    outlineVariant: Color(0xff959080),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe8e2d4),
    inversePrimary: Color(0xff534800),
    primaryFixed: Color(0xfff5e389),
    onPrimaryFixed: Color(0xff151100),
    primaryFixedDim: Color(0xffd8c770),
    onPrimaryFixedVariant: Color(0xff3f3600),
    secondaryFixed: Color(0xffb0f1c3),
    onSecondaryFixed: Color(0xff001508),
    secondaryFixedDim: Color(0xff94d5a8),
    onSecondaryFixedVariant: Color(0xff003f22),
    tertiaryFixed: Color(0xffffdbc8),
    onTertiaryFixed: Color(0xff220a00),
    tertiaryFixedDim: Color(0xffffb68b),
    onTertiaryFixedVariant: Color(0xff5a2802),
    surfaceDim: Color(0xff15130c),
    surfaceBright: Color(0xff47443b),
    surfaceContainerLowest: Color(0xff090703),
    surfaceContainerLow: Color(0xff201e15),
    surfaceContainer: Color(0xff2a281f),
    surfaceContainerHigh: Color(0xff353329),
    surfaceContainerHighest: Color(0xff403e34),
  );

  ThemeData darkMediumContrast() => theme(darkMediumContrastScheme());

  static ColorScheme darkHighContrastScheme() => const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xfffff1ae),
    surfaceTint: Color(0xffd8c770),
    onPrimary: Color(0xff000000),
    primaryContainer: Color(0xffd4c36c),
    onPrimaryContainer: Color(0xff0e0b00),
    secondary: Color(0xffbeffd0),
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xff91d1a5),
    onSecondaryContainer: Color(0xff000f05),
    tertiary: Color(0xffffece3),
    onTertiary: Color(0xff000000),
    tertiaryContainer: Color(0xffffb182),
    onTertiaryContainer: Color(0xff190600),
    error: Color(0xffffece9),
    onError: Color(0xff000000),
    errorContainer: Color(0xffffaea4),
    onErrorContainer: Color(0xff220001),
    surface: Color(0xff15130c),
    onSurface: Color(0xffffffff),
    onSurfaceVariant: Color(0xffffffff),
    outline: Color(0xfff7f0dd),
    outlineVariant: Color(0xffc8c2b1),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe8e2d4),
    inversePrimary: Color(0xff534800),
    primaryFixed: Color(0xfff5e389),
    onPrimaryFixed: Color(0xff000000),
    primaryFixedDim: Color(0xffd8c770),
    onPrimaryFixedVariant: Color(0xff151100),
    secondaryFixed: Color(0xffb0f1c3),
    onSecondaryFixed: Color(0xff000000),
    secondaryFixedDim: Color(0xff94d5a8),
    onSecondaryFixedVariant: Color(0xff001508),
    tertiaryFixed: Color(0xffffdbc8),
    onTertiaryFixed: Color(0xff000000),
    tertiaryFixedDim: Color(0xffffb68b),
    onTertiaryFixedVariant: Color(0xff220a00),
    surfaceDim: Color(0xff15130c),
    surfaceBright: Color(0xff535046),
    surfaceContainerLowest: Color(0xff000000),
    surfaceContainerLow: Color(0xff222017),
    surfaceContainer: Color(0xff333027),
    surfaceContainerHigh: Color(0xff3e3b32),
    surfaceContainerHighest: Color(0xff4a473d),
  );

  ThemeData darkHighContrast() => theme(darkHighContrastScheme());

  ThemeData theme(final ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => <ExtendedColor>[];
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
