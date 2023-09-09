import 'package:ethan_mckay_portfolio/Constants.dart';
import 'package:ethan_mckay_portfolio/Widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({
    super.key,
  });

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  bool darkmode = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(gradient: projectbackground),
      child: Column(
        children: [
          TopNavigationBar(page: 'home'),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width * 95 / 1920, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 168 / 1080),
                SizedBox(
                  width: size.width * 0.8,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      """Hi, my name is Ethan Mckay""",
                      style: GoogleFonts.exo(
                        color: Colors.white,
                        textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * .6 * ('I am an '.length / 'I am an App developer who uses flutter and dart'.length),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'I am an ',
                          style: GoogleFonts.exo(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .6 * ('App developer '.length / 'I am an App developer who uses flutter and dart'.length),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'App developer ',
                          style: GoogleFonts.exo(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: lightRed,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .6 * ('who uses '.length / 'I am an App developer who uses flutter and dart'.length),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'who uses ',
                          style: GoogleFonts.exo(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .6 * ('Flutter'.length / 'I am an App developer who uses flutter and dart'.length),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Flutter ',
                          style: GoogleFonts.exo(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: lightRed,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .6 * ('and '.length / 'I am an App developer who uses flutter and dart'.length),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'and ',
                          style: GoogleFonts.exo(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .6 * ('Dart'.length / 'I am an App developer who uses flutter and dart'.length),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Dart',
                          style: GoogleFonts.exo(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: lightRed,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
