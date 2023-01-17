import 'package:flutter/material.dart';

const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFBA1A16),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDAD5),
  onPrimaryContainer: Color(0xFF410001),
  secondary: Color(0xFF006A68),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF6FF7F3),
  onSecondaryContainer: Color(0xFF00201F),
  tertiary: Color(0xFF006A67),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF45FAF5),
  onTertiaryContainer: Color(0xFF00201F),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF201A19),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF201A19),
  surfaceVariant: Color(0xFFF5DDDA),
  onSurfaceVariant: Color(0xFF534341),
  outline: Color(0xFF857370),
  onInverseSurface: Color(0xFFFBEEEC),
  inverseSurface: Color(0xFF362F2E),
  inversePrimary: Color(0xFFFFB4AA),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFBA1A16),
);

const ColorScheme _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB4AA),
  onPrimary: Color(0xFF690003),
  primaryContainer: Color(0xFF930006),
  onPrimaryContainer: Color(0xFFFFDAD5),
  secondary: Color(0xFF4DDAD6),
  onSecondary: Color(0xFF003736),
  secondaryContainer: Color(0xFF00504E),
  onSecondaryContainer: Color(0xFF6FF7F3),
  tertiary: Color(0xFF00DDD8),
  onTertiary: Color(0xFF003736),
  tertiaryContainer: Color(0xFF00504E),
  onTertiaryContainer: Color(0xFF45FAF5),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF201A19),
  onBackground: Color(0xFFEDE0DE),
  surface: Color(0xFF201A19),
  onSurface: Color(0xFFEDE0DE),
  surfaceVariant: Color(0xFF534341),
  onSurfaceVariant: Color(0xFFD8C2BE),
  outline: Color(0xFFA08C8A),
  onInverseSurface: Color(0xFF201A19),
  inverseSurface: Color(0xFFEDE0DE),
  inversePrimary: Color(0xFFBA1A16),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB4AA),
);

ListTileThemeData _darklistTileTheme = ListTileThemeData(
  minLeadingWidth: 32,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
  tileColor: _darkColorScheme.tertiaryContainer,
  textColor: _darkColorScheme.onTertiaryContainer,
);

ListTileThemeData _lightlistTileTheme = _darklistTileTheme.copyWith(
  tileColor: _lightColorScheme.tertiaryContainer,
  textColor: _lightColorScheme.onTertiaryContainer,
);

AppBarTheme _darkAppBarTheme = AppBarTheme(
  titleSpacing: 20,
  backgroundColor: _darkColorScheme.background,
  elevation: 0,
  titleTextStyle: _darkheadline3,
  iconTheme: IconThemeData(color: _darkColorScheme.secondary),
);
AppBarTheme _lightAppBarTheme = AppBarTheme(
  titleSpacing: 20,
  backgroundColor: Colors.white,
  elevation: 0,
  titleTextStyle: _lightheadline3,
  iconTheme: IconThemeData(color: _lightColorScheme.secondary),
);

const BorderSide _defaultBorderSide = BorderSide(width: 2);

InputDecorationTheme _defaultInputTheme = const InputDecorationTheme(
  hintStyle: TextStyle(color: Colors.grey),
);

ThemeData mydarkTheme = ThemeData(
  colorScheme: _darkColorScheme,
  snackBarTheme: SnackBarThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    clipBehavior: Clip.antiAlias,
    elevation: 0,
  ),
  appBarTheme: _darkAppBarTheme,
  listTileTheme: _darklistTileTheme,
  inputDecorationTheme: _defaultInputTheme.copyWith(
    suffixIconColor: _darkColorScheme.secondary,
    border: UnderlineInputBorder(
      borderSide:
          _defaultBorderSide.copyWith(color: _darkColorScheme.secondary),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide:
          _defaultBorderSide.copyWith(color: _darkColorScheme.secondary),
    ),
  ),
  textTheme: TextTheme(
    headline3: _darkheadline3,
    bodyText1: _bodyText1,
    bodyText2: _darkbodyText2,
  ),
);

ThemeData mylightTheme = ThemeData(
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    clipBehavior: Clip.antiAlias,
    elevation: 0,
  ),
  colorScheme: _lightColorScheme,
  appBarTheme: _lightAppBarTheme,
  listTileTheme: _lightlistTileTheme,
  inputDecorationTheme: _defaultInputTheme.copyWith(
    suffixIconColor: _lightColorScheme.secondary,
    border: UnderlineInputBorder(
      borderSide:
          _defaultBorderSide.copyWith(color: _lightColorScheme.secondary),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide:
          _defaultBorderSide.copyWith(color: _lightColorScheme.secondary),
    ),
  ),
  textTheme: TextTheme(
    headline3: _lightheadline3,
    bodyText1: _bodyText1,
    bodyText2: _lightbodyText2,
  ),
);

TextStyle _darkheadline3 = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
  color: _darkColorScheme.secondary,
);

TextStyle _lightheadline3 = _darkheadline3.copyWith(
  color: _lightColorScheme.primary,
);

TextStyle _darkbodyText2 = TextStyle(
  color: _darkColorScheme.secondary,
  fontWeight: FontWeight.w500,
  overflow: TextOverflow.ellipsis,
);
TextStyle _lightbodyText2 = _darkbodyText2.copyWith(
  fontWeight: FontWeight.w500,
  color: _lightColorScheme.primary,
);

const TextStyle _bodyText1 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  overflow: TextOverflow.ellipsis,
);
