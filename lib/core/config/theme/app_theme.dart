import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.lightBackground,
      brightness: Brightness.light,
      fontFamily: 'Satoshi',
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w500),
        contentPadding: const EdgeInsets.all(15.0),
        enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)), borderSide: BorderSide(color: Colors.black, width: 0.4)),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)), borderSide: BorderSide(color: Colors.black, width: 0.4)),
        focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)), borderSide: BorderSide(color: Colors.black, width: 0.4)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              elevation: 0,
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))));
  static final darkTheme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.darkBackground,
      brightness: Brightness.dark,
      fontFamily: 'Satoshi',
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w500),
        contentPadding: const EdgeInsets.all(15.0),
        enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)), borderSide: BorderSide(color: Colors.white, width: 0.4)),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)), borderSide: BorderSide(color: Colors.white, width: 0.4)),
        focusedBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)), borderSide: BorderSide(color: Colors.white, width: 0.4)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              elevation: 0,
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))));
}
