import 'package:flutter/material.dart';

class AppTheme {
  //Definir tema para toda la aplicación
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: Colors.indigo,
    //  AppBar Theme
    appBarTheme: const AppBarTheme(
      //Color de fondo
      color: primary,
      //Sombra
      elevation: 5,
    ),

    //TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

    //FloatingActionButtons Theme
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),

    //ELevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    //Inputs Theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: Colors.indigo,
    //  AppBar Theme
    appBarTheme: const AppBarTheme(
      //Color de fondo
      color: primary,
      //Sombra
      elevation: 5,
    ),

    scaffoldBackgroundColor: Colors.black,
  );
}
