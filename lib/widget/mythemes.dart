import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes{

  static ThemeData  lightthemedata(BuildContext context) => ThemeData(
    
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme,
          ),
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.lato().fontFamily,
  );
  static ThemeData  darkTheme(BuildContext context) => ThemeData(
    
          brightness: Brightness.dark
  );
}