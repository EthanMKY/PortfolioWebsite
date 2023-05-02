import 'package:flutter/material.dart';
import 'package:portfoliowebsite/Screens/Aboutme.dart';
import 'package:portfoliowebsite/Screens/Contactme.dart';
import 'package:portfoliowebsite/Screens/Homepage.dart';

void main() {
  runApp(MyApp());
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
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) {
        return HomePage();
      },
      '/aboutMe': (context) {
        return Aboutme();
      },
      '/contactMe': (context) {
        return ContactMe();
      }
    });
  }
}
