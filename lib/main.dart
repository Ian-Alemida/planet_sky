import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planet_sky/screen/home.dart';
import 'package:planet_sky/screen/initialScreen.dart';
import 'package:planet_sky/screen/planets/jupiter.dart';
import 'package:planet_sky/screen/planets/mars.dart';
import 'package:planet_sky/screen/planets/mercury.dart';
import 'package:planet_sky/screen/planets/neptune.dart';
import 'package:planet_sky/screen/planets/saturn.dart';
import 'package:planet_sky/screen/planets/sun.dart';
import 'package:planet_sky/screen/planets/uranus.dart';
import 'screen/planets/earth.dart';
import 'screen/planets/venus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planet Sky',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.spaceGroteskTextTheme(),
      ),
      initialRoute: "/initial",
      routes: {
        "/initial": (context) => const initialScreen(),
        "/home": (context) => const home(),
        "/sunScreen": (context) => const sunScreen(),
        "/earthScreen": (context) => const earthScreen(),
        "/jupiterScreen": (context) => const jupiterScreen(),
        "/marsScreen": (context) => const marsScreen(),
        "/mercuryScreen": (context) => const mercuryScreen(),
        "/neptuneScreen": (context) => const neptuneScreen(),
        "/saturnScreen": (context) => const saturnScreen(),
        "/uranusScreen": (context) => const uranusScreen(),
        "/venusScreen": (context) => const venusScreen(),
      },
    );
  }
}
