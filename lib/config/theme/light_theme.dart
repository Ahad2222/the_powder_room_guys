import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';


final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: kPrimaryColor,
  fontFamily: 'poppins',
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: kPrimaryColor,
  ),
  splashColor: kBlackColor.withOpacity(0.05),
  highlightColor: kBlackColor.withOpacity(0.05),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: kTertiaryColor.withOpacity(0.1),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: kBlackColor,
  ),
);
