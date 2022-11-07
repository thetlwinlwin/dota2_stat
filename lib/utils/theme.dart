import 'package:flutter/material.dart';

class AppTheme {
  static const _lightColorScheme = ColorScheme(
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

  static const ColorScheme _darkColorScheme = ColorScheme(
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

  static SnackBarThemeData snackTheme = SnackBarThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );

  static ListTileThemeData darklistTileTheme = ListTileThemeData(
    minLeadingWidth: 32,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    tileColor: _darkColorScheme.tertiaryContainer,
    textColor: _darkColorScheme.onTertiaryContainer,
  );

  static ListTileThemeData lightlistTileTheme = ListTileThemeData(
    minLeadingWidth: 32,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    tileColor: _lightColorScheme.tertiaryContainer,
    textColor: _lightColorScheme.onTertiaryContainer,
  );

  static CardTheme cardTheme = CardTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    clipBehavior: Clip.antiAlias,
    elevation: 0,
  );

  static InputDecorationTheme darkInputTheme = InputDecorationTheme(
    hintStyle: const TextStyle(color: Colors.grey),
    suffixIconColor: _darkColorScheme.secondary,
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _darkColorScheme.primary,
        width: 2,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _darkColorScheme.secondary,
        width: 2,
      ),
    ),
  );
  static InputDecorationTheme lightInputTheme = InputDecorationTheme(
    hintStyle: const TextStyle(color: Colors.grey),
    suffixIconColor: _lightColorScheme.secondary,
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _lightColorScheme.primary,
        width: 2,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: _lightColorScheme.secondary,
        width: 2,
      ),
    ),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    titleSpacing: 20,
    titleTextStyle: TextStyle(
      color: _darkColorScheme.secondary,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    titleSpacing: 20,
    titleTextStyle: TextStyle(
      color: _lightColorScheme.primary,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _darkColorScheme,
      snackBarTheme: snackTheme,
      listTileTheme: darklistTileTheme,
      cardTheme: cardTheme,
      appBarTheme: darkAppBarTheme,
      inputDecorationTheme: darkInputTheme,
    );
  }

  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      snackBarTheme: snackTheme,
      listTileTheme: lightlistTileTheme,
      cardTheme: cardTheme,
      appBarTheme: lightAppBarTheme,
      inputDecorationTheme: lightInputTheme,
    );
  }
}
