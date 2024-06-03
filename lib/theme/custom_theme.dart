import "package:flutter/material.dart";

final theme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
      padding: const MaterialStatePropertyAll(EdgeInsets.all(22)),
      foregroundColor: const MaterialStatePropertyAll(Color(0xFFFAFAFA)),
      backgroundColor: const MaterialStatePropertyAll(Color(0x30FFFFFF)),
      overlayColor: const MaterialStatePropertyAll(Color(0x20FFFFFF)))),
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0x80FFFFFF), width: 1),
      borderRadius: BorderRadius.all(Radius.circular(18))),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0x40FFFFFF)),
      borderRadius: BorderRadius.all(Radius.circular(18)))),
  menuTheme: MenuThemeData(style: MenuStyle(
    side: const MaterialStatePropertyAll(BorderSide(color: Color(0x40FFFFFF), width: 1)),
    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    padding: const MaterialStatePropertyAll(EdgeInsets.all(6)),
    elevation: const MaterialStatePropertyAll(0),
    backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 78, 56, 94)),
    shadowColor: const MaterialStatePropertyAll(Color(0xFF16161b)))));