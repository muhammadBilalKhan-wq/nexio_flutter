import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.grey[100],
  textTheme: GoogleFonts.latoTextTheme(),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    titleTextStyle: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: Colors.blue[700],
  scaffoldBackgroundColor: Colors.black,
  textTheme: GoogleFonts.latoTextTheme(ThemeData.dark().textTheme),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    titleTextStyle: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  ),
);
