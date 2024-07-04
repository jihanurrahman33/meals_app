import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/tabs.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(
        255,
        131,
        57,
        0,
      ),
    ),
    textTheme: GoogleFonts.latoTextTheme(),
    primaryColor: Colors.white);

void main() {
  runApp(MaterialApp(
    theme: theme,
    home: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabs(
        onToggleFavorite: (Meal meal) {},
      ),
    ),
  ));
}
