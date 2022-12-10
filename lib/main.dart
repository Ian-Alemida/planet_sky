import 'package:flutter/material.dart';
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
      ),
      initialRoute: "/initial",
      routes: {
        "/initial": (context) => initialScreen(),
        "/home": (context) => home(),
        "/sunScreen": (context) => sunScreen(),
        "/earthScreen": (context) => earthScreen(),
        "/jupiterScreen": (context) => jupiterScreen(),
        "/marsScreen": (context) => marsScreen(),
        "/mercuryScreen": (context) => mercuryScreen(),
        "/neptuneScreen": (context) => neptuneScreen(),
        "/saturnScreen": (context) => saturnScreen(),
        "/uranusScreen": (context) => uranusScreen(),
        "/venusScreen": (context) => venusScreen(),
      },
    );
  }
}
