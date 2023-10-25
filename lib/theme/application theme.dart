import 'dart:html';

import 'package:flutter/material.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: Color(0xFF027A48)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 80,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Color(0xFF027A48), size: 37),
      unselectedIconTheme: IconThemeData(color: Color(0xFF667085), size: 27),
    ),
  );
}
