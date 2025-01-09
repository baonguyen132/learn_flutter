import 'package:flutter/material.dart';

const cardBackgroundColor = Color(0xFF21222D) ;
const secondaryColor = Color(0xffffffff) ;
const selection = Color(0xff88b2ac) ;
Color? shadowColor = Colors.grey[500] ;


const primaryColor = Colors.blueAccent;
const backgrounDrawLight = Color.fromARGB(255, 255, 250, 250);
const backgrounDrawDark = Color.fromARGB(255, 0, 5, 5) ;

const backgroundLight = Colors.white ;
const backgrounDark = Color.fromARGB(255, 20, 20, 20);

Color? textColorLight = Colors.grey[700] ;
Color? textMenuChoosed = Colors.white ;
Color? textColorDark = Colors.white ;

extension CustomColors on ColorScheme {
  Color get mainColor => primary ;
  Color get maintext => tertiary ;
  Color get mainDraw => inversePrimary ;
}

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    inversePrimary: backgrounDrawLight,
    primary: primaryColor,
    background: backgroundLight,

    tertiary: textColorLight,

  ),
  shadowColor: shadowColor,

);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark ,
  colorScheme: ColorScheme.dark(
    inversePrimary: backgrounDrawDark,
    primary: primaryColor,
    background: backgrounDark,

    tertiary: textColorDark ,
  ),
  shadowColor: shadowColor,
);