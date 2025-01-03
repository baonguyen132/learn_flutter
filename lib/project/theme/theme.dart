import 'package:flutter/material.dart';

const cardBackgroundColor = Color(0xFF21222D) ;
const primaryColor = Colors.blueAccent;
const secondaryColor = Color(0xffffffff) ;
const backgroundColor = Color.fromARGB(255, 255, 250, 250);
const selection = Color(0xff88b2ac) ;
Color? shadowColor = Colors.grey[500] ;


Color? textColorLight = Colors.grey[700] ;
Color? textMenuChoosed = Colors.white ;
Color? textColorDark = Colors.white ;

extension CustomColors on ColorScheme {
  Color get mainColor => primary ;
  Color get maintext => tertiary ;
}

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: backgroundColor,
    primary: primaryColor,
    secondary: secondaryColor,
    error: Colors.red.shade600,

    tertiary: textColorLight,

  ),
  shadowColor: shadowColor,

);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark ,
  colorScheme: ColorScheme.dark(
    background: Colors.white ,
    primary: Colors.grey.shade400,
    error: Colors.red.shade600,

    tertiary: textColorDark ,
  ),
  shadowColor: shadowColor,
);