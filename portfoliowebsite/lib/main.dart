import 'package:ethan_mckay_portfolio/Screens/home_page.dart';
import 'package:ethan_mckay_portfolio/Screens/my_work.dart';
import 'package:ethan_mckay_portfolio/Screens/contact_me.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      title: 'EthanMckayPortfolio',
      color: const Color.fromARGB(255, 255, 96, 96),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.exo().fontFamily,
      ),
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(
        routes: {
          "/": (uri, params) {
            return VxRoutePage(
              child: const HomePage(),
              transition: (animation, child) {
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HomePage(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
                return child;
              },
            );
          },
          "MyWork": (uri, params) {
            return VxRoutePage(
              child: const MyWork(),
              transition: (animation, child) {
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const MyWork(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                );
                return child;
              },
            );
          },
          "ContactMe": (uri, params) {
            return VxRoutePage(
              child: const ContactMe(),
              transition: (animation, child) {
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const ContactMe(),
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
