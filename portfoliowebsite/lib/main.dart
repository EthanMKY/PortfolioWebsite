import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliowebsite/Screens/Homepage.dart';

void main() {
  Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
      ),
      theme: ThemeData(
        fontFamily: GoogleFonts.comfortaa().fontFamily,
      ),
    );
  }
}
