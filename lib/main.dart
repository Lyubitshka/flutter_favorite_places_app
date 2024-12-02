import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:fav_places_9_project/screens/places.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color.fromARGB(255, 30, 123, 66),
  surface: Colors.white,
);

final theme = ThemeData().copyWith(
  // scaffoldBackgroundColor: colorScheme.surface,
  appBarTheme: const AppBarTheme(
    color: Color.fromARGB(255, 119, 214, 122),
    centerTitle: true,
    shape: ContinuousRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(120),
        bottomLeft: Radius.circular(120),
      ),
    ),
    toolbarHeight: 90,
  ),
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
        // fontWeight: FontWeight.bold,
        ),
    titleMedium: GoogleFonts.ubuntuCondensed(
        // fontWeight: FontWeight.bold,
        fontSize: 36),
    titleLarge: GoogleFonts.ubuntuCondensed(
        // fontWeight: FontWeight.bold,
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
      title: 'My favorite places',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const PlacesScreen(),
    );
  }
}
