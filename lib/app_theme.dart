import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgroundColor = Color(0XFFFFFFFF);
  static const Color primaryColor = Colors.teal;
  static const Color accenColor = Color.fromARGB(255, 236, 196, 148);
  static const Color smallBtn = Color(0XFFfaf2e8);
  static const Color hintColor = Color(0xffababab);

  static const double kPadding = 20;

  static TextStyle introHeadline = const TextStyle(
    color: primaryColor,
    fontSize: 30,
    fontFamily: 'Ubuntu',
    fontWeight: FontWeight.w700,
  );
  static TextStyle introText = const TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle blackButtonText = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle hintText = const TextStyle(
    color: Color(0xffababab),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}

ThemeData myTheme() {
  const textTheme2 = TextTheme(
    caption: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  );
  const appBarTheme2 = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 60,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
  );
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
    textTheme: textTheme2,
    appBarTheme: appBarTheme2,
    primaryColor: Colors.teal,
    backgroundColor: const Color(0xFFFFFFFF),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: const Color(0xffD8B7A2)),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(3),
    borderSide: const BorderSide(color: Colors.black),
    gapPadding: 10,
  );
  OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(3),
    borderSide: const BorderSide(color: AppTheme.primaryColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: focusedBorder,
    border: outlineInputBorder,
  );
}
