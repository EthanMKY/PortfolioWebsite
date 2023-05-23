import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliowebsite/Screens/Contactme.dart';
import 'package:portfoliowebsite/Screens/MyWork.dart';
import 'package:portfoliowebsite/Screens/HomePage.dart';
import 'package:velocity_x/velocity_x.dart';

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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.exo().fontFamily,
      ),
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(
        routes: {
          "/": (uri, params) {
            return VxRoutePage(
              child: HomePage(),
              transition: (animation, child) {
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
                return child;
              },
            );
          },
          "MyWork": (uri, params) {
            return VxRoutePage(
              child: MyWork(),
              transition: (animation, child) {
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => MyWork(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
                return child;
              },
            );
          },
          "ContactMe": (uri, params) {
            return VxRoutePage(
              child: ContactMe(),
              transition: (animation, child) {
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => ContactMe(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
                return child;
              },
            );
          }
        },
      ),
    );
  }
}
