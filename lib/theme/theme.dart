import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xFF87835E);

ThemeData lightTheme() {
  final colorScheme = ColorScheme.fromSeed(seedColor: kPrimaryColor, brightness: Brightness.light);

  final textTheme = GoogleFonts.playfairDisplayTextTheme();

  return ThemeData(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    textTheme: textTheme,
    primaryIconTheme: IconThemeData(color: colorScheme.primary),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        minimumSize: WidgetStateProperty.all(const Size(270, 43)),
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => states.contains(WidgetState.disabled) ? Colors.grey : colorScheme.primary,
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        textStyle: WidgetStateProperty.all(const TextStyle(fontWeight: FontWeight.bold)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        minimumSize: WidgetStateProperty.all(const Size(270, 43)),
        // backgroundColor: WidgetStateProperty.resolveWith<Color?>(
        //   (states) => states.contains(WidgetState.disabled) ? Colors.grey : colorScheme.primary,
        // ),
        // foregroundColor: WidgetStateProperty.all(Colors.white),
        textStyle: WidgetStateProperty.all(const TextStyle(fontWeight: FontWeight.bold)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(filled: true, fillColor: Colors.white),
    useMaterial3: true,
  );
}

ThemeData darkTheme() {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: kPrimaryColor, // Or Colors.indigo
    brightness: Brightness.dark,
  );

  final baseTextTheme = GoogleFonts.openSansTextTheme(ThemeData.dark().textTheme);

  return ThemeData(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    textTheme: baseTextTheme.copyWith(
      titleMedium: baseTextTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary),
    ),
    primaryIconTheme: IconThemeData(color: colorScheme.primary),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        minimumSize: WidgetStateProperty.all(const Size(270, 43)),
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (states) => states.contains(WidgetState.disabled) ? Colors.grey : colorScheme.primary,
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        textStyle: WidgetStateProperty.all(const TextStyle(fontWeight: FontWeight.bold)),
      ),
    ),
    useMaterial3: true,
  );
}
