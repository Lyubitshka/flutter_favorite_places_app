import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:fav_places_9_project/screens/places.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color.fromARGB(255, 30, 123, 66),
  background: Colors.white,
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.background,
  appBarTheme: AppBarTheme(
    color: const Color.fromARGB(255, 119, 214, 122),
    centerTitle: true,
    shape: ContinuousRectangleBorder(
      borderRadius: BorderRadius.circular(42),
    ),
    toolbarHeight: 84,
  ),
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
  ),
);

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My favourite places',
      theme: theme,
      home: const PlacesScreen(),
    );
  }
}
