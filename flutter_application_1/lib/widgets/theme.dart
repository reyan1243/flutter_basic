import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      brightness: Brightness.light,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 49, 49, 49)),
        elevation: 0.0,
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline5,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      );
      // appBarTheme: AppBarTheme(color: Colors.black));
}
