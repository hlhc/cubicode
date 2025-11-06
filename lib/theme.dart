import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _baseTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  // inputDecorationTheme: InputDecorationTheme(
  //   border: OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(8),
  //   ),
  // ),
);

final theme = _baseTheme.copyWith(
  textTheme: GoogleFonts.poppinsTextTheme(_baseTheme.textTheme),
);
