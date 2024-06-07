import 'package:flutter/material.dart';

class AppTheme {
  static bool isDark = false;
  static const Color lightPrimary = Color(0xFFb7935f);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkSecondary = Color(0xFFFACC10);
  static ThemeData LightTheme = ThemeData(
      useMaterial3: true,
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "El Messiri",
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 17,
          fontFamily: "El Messiri",
        ),
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedLabelStyle: TextStyle(
          fontSize: 16,
          fontFamily: "El Messiri",
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.white),
      ),
      dividerTheme: const DividerThemeData(
        color: lightPrimary,
        thickness: 1.5,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: "El Messiri",
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontFamily: "El Messiri",
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
          fontFamily: "El Messiri",
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: "El Messiri",
        ),
      ));
  static ThemeData DarkTheme = ThemeData(
    useMaterial3: true,
    primaryColorDark: darkPrimary,
    dividerColor: darkSecondary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: darkSecondary),
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: darkSecondary,
          fontWeight: FontWeight.bold,
          fontFamily: "El Messiri",
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimary,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: darkSecondary,
      selectedLabelStyle: TextStyle(
        color: darkSecondary,
        fontSize: 17,
        fontFamily: "El Messiri",
      ),
      selectedIconTheme: IconThemeData(color: darkSecondary),
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        fontFamily: "El Messiri",
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontFamily: "El Messiri",
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600,
        fontFamily: "El Messiri",
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.normal,
        fontFamily: "El Messiri",
      ),
      bodySmall: TextStyle(
        color: darkSecondary,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: "El Messiri",
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: darkSecondary,
      thickness: 1.5,
    ),
  );
}
