import 'package:flutter/material.dart';

// 앱 개발 전 무조건 설정해 놓아야 할 테마

MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

ThemeData theme() {
  return ThemeData(
    primarySwatch: primaryWhite, // 해당 앱의 브랜드 컬러
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
