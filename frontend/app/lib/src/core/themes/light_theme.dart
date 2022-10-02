import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _primaryColor = Color(0xff0EB400);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorSchemeSeed: _primaryColor,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color(0xfff5f5f5),
    filled: true,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    ),
  ),
  cardTheme: CardTheme(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    elevation: 0.6,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      side: BorderSide(
        color: Colors.black.withOpacity(0.1),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ).copyWith(
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return _primaryColor.withOpacity(0.5);
        }
        return _primaryColor;
      }),
    ),
  ),
  textTheme: GoogleFonts.robotoTextTheme(
    TextTheme(
        headline6: TextStyle(
      color: Color(0xff717171),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    )),
  ),
);
