import 'package:defi_dex/core/utils/value_manager.dart';
import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    useMaterial3: false,
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s14,
        color: Color(0xffF9F9F9),
      ),
      headlineSmall: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.w100,
        fontSize: AppSize.s8,
        color: Color(0xffF9F9F9),
      ),
      labelSmall: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s14,
        color: Color(0xffA0A0A0),
      ),
      titleSmall: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.w500,
        fontSize: AppSize.s14,
        color: Color(0xffF9F9F9),
      ),
      titleMedium: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.w500,
        fontSize: AppSize.s16,
        color: Color(0xffF9F9F9),
      ),
      bodySmall: TextStyle(
        fontFamily: "Vazir",
        color: Color(0xffF9F9F9),
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s14,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Vazir",
        color: Color(0xffF9F9F9),
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s20,
      ),
      headlineMedium: TextStyle(
        fontFamily: "Vazir",
        color: Color(0xffF9F9F9),
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: "Vazir",
        color: Color(0xffF9F9F9),
        fontSize: 22,
      ),
      titleLarge: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.w500,
        fontSize: AppSize.s20,
        color: Color(0xffF9F9F9),
      ),
      bodyLarge: TextStyle(
        fontFamily: "Vazir",
        color: Color(0xffF9F9F9),
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s24,
      ),
      headlineLarge: TextStyle(
        fontFamily: "Vazir",
        color: Color(0xffF9F9F9),
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    unselectedWidgetColor: Colors.white70,
    primaryColorLight: Colors.black,
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.blueAccent[700],
    secondaryHeaderColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8),
    dialogBackgroundColor: const Color.fromARGB(255, 47, 47, 52),
    dividerColor: Colors.white54,
    splashColor: const Color.fromARGB(255, 47, 47, 52),
    focusColor: Colors.white54,
    canvasColor: Colors.white54,
    hintColor: const Color(0xFF4B4B4C),
    fontFamily: "Vazir",
  );

  static final lightTheme = ThemeData(
    useMaterial3: false,
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s14,
        color: Colors.black12,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.w100,
        fontSize: AppSize.s8,
        color: Colors.black12,
      ),
      labelSmall: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s14,
        color: Colors.black12,
      ),
      titleSmall: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.w500,
        fontSize: AppSize.s14,
        color: Colors.black12,
      ),
      titleMedium: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.w500,
        fontSize: AppSize.s16,
        color: Colors.black12,
      ),
      titleLarge: TextStyle(
        fontFamily: "Vazir",
        fontWeight: FontWeight.w500,
        fontSize: AppSize.s20,
        color: Colors.black12,
      ),
      bodySmall: TextStyle(
        fontFamily: "Vazir",
        color: Colors.black12,
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s14,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Vazir",
        color: Colors.black12,
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s20,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Vazir",
        color: Colors.black12,
        fontWeight: FontWeight.bold,
        fontSize: AppSize.s24,
      ),
      headlineLarge: TextStyle(
        color: Colors.black45,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: Colors.white,
        fontSize: 22,
      ),
    ),
    unselectedWidgetColor: Colors.black,
    primaryColorLight: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blueAccent,
    secondaryHeaderColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8),
    highlightColor: Colors.black54,
    dialogBackgroundColor: const Color(0xFFCBC8E5),
    dividerColor: Colors.black54,
    splashColor: Colors.white,
    focusColor: Colors.black54,
    canvasColor: Colors.black54,
    hintColor: const Color(0xFF011C4B),
    fontFamily: "Vazir",
  );
}
